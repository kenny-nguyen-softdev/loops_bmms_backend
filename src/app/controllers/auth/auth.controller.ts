import { PassportStatic } from 'passport';
import jwt from 'jsonwebtoken';
import { INext, IRequest, IResponse } from '../../core/vendors';
import { RefreshTokenInput, RefreshTokenOutput, UserInput } from '../../../models';
import { ErrorResponse, SuccessResponse } from '../../core/response/BaseResponse';
import { comparePassword, hashPassword } from '../../../utils';
import UserRepository from '../../repositories/User/user.repository';
import { pick } from '../../core/utils';
import RefreshTokenRepository from '../../repositories/RefreshToken/refresh-token.repository';

class AuthController {
  private passport: PassportStatic;

  constructor(passport: PassportStatic) {
    this.passport = passport;
  }

  public signIn = (req: IRequest, res: IResponse, next: INext) => {
    return this.passport.authenticate('sign-in', { session: false }, (err: Error, user: UserInput, info: any) => {
      req.login(user, { session: false }, async (error) => {
        if (error) {
          return new ErrorResponse(res, error.message, { message: error.message }, 500);
        }
        const userInput = pick(['email', 'password'], req.body as unknown as UserInput) as UserInput;
        const userRepository = new UserRepository();
        const user = await userRepository.findOne({
          where: {
            email: userInput.email,
          },
        });
        if (!user) {
          return new ErrorResponse(res, 'User Not Found', { message: 'User Not Found' }, 404);
        }
        const isPasswordValid = await comparePassword(userInput.password, user.password);
        if (!isPasswordValid) {
          return new ErrorResponse(res, 'Invalid credentials', { message: 'Invalid credentials' }, 401);
        }
        // Generate access token
        const accessToken = jwt.sign({ sub: user.id }, process.env.JWT_SECRET_KEY || '', {
          expiresIn: '1d',
        });
        // Generate refresh token
        const refreshToken = jwt.sign({ sub: user.id }, process.env.REFRESH_TOKEN_SECRET_KEY || '', {
          expiresIn: '7d',
        });
        try {
          const refreshTokenRepository = new RefreshTokenRepository();
          const refreshTokenInput = pick(['userId', 'token'], {
            userId: user.id,
            token: refreshToken,
          } as unknown as RefreshTokenInput) as RefreshTokenInput;
          const newRefreshToken: RefreshTokenOutput = await refreshTokenRepository.create(refreshTokenInput);
        } catch (error) {
          return new ErrorResponse(res, (error as Error).message, error);
        }
        return new SuccessResponse(res, { AccessToken: accessToken, IdToken: accessToken, RefreshToken: refreshToken });
      });
    })(req, res, next);
  };

  public signUp = async (req: IRequest, res: IResponse) => {
    try {
      const newUserInput = pick(
        ['name', 'email', 'password', 'username', 'privateImage', 'personGroupTypeId'],
        req.body as unknown as UserInput,
      ) as UserInput;

      // Check if the email is already registered
      const userRepository = new UserRepository();
      const existingUser = await userRepository.findOne({
        where: {
          email: newUserInput.email,
        },
      });
      if (existingUser) {
        return new ErrorResponse(res, 'Email already registered', { message: 'Email already registered' }, 400);
      }

      // Create a new user
      newUserInput.password = (await hashPassword(newUserInput.password)) as unknown as string;
      const newUser = await userRepository.create(newUserInput);

      // Generate access token
      const accessToken = jwt.sign({ sub: newUser.id }, process.env.JWT_SECRET_KEY || '', {
        expiresIn: '1d',
      });

      // Generate refresh token
      const refreshToken = jwt.sign({ sub: newUser.id }, process.env.REFRESH_TOKEN_SECRET_KEY || '', {
        expiresIn: '7d',
      });

      const refreshTokenRepository = new RefreshTokenRepository();
      const refreshTokenInput = pick(['userId', 'token'], {
        userId: newUser.id,
        token: refreshToken,
      } as unknown as RefreshTokenInput) as RefreshTokenInput;

      // Create a new refresh token
      // eslint-disable-next-line no-unused-vars
      const newRefreshToken: RefreshTokenOutput = await refreshTokenRepository.create(refreshTokenInput);

      return new SuccessResponse(res, { AccessToken: accessToken, IdToken: accessToken, RefreshToken: refreshToken });
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  };

  public refreshToken = async (req: IRequest, res: IResponse) => {
    const { refreshToken } = req.body;
    if (!refreshToken) {
      return new ErrorResponse(res, 'Refresh token not provided', { message: 'Refresh token not provided' }, 400);
    }
    try {
      // Check if the refresh token exists in the database
      const refreshTokenRepository = new RefreshTokenRepository();
      const savedRefreshToken = await refreshTokenRepository.findByToken(refreshToken);
      if (!savedRefreshToken) {
        return new ErrorResponse(res, 'Invalid refresh token', { message: 'Invalid refresh token' }, 401);
      }

      // Verify the refresh token and obtain the user ID
      const payload: any = jwt.verify(refreshToken, process.env.REFRESH_TOKEN_SECRET_KEY || '');
      const userId = payload.sub;

      // Check if the user exists (optional)
      const userRepository = new UserRepository();
      const user = await userRepository.findById(userId);
      if (!user) {
        return new ErrorResponse(res, 'User not found', { message: 'User not found' }, 404);
      }

      // Generate new refresh token
      const newRefreshToken = jwt.sign({ sub: user.id }, process.env.REFRESH_TOKEN_SECRET_KEY || '', {
        expiresIn: process.env.REFRESH_TOKEN_EXPIRATION || '7d',
      });

      const newRefreshTokenInput = pick(['userId', 'token'], {
        userId,
        token: newRefreshToken,
      } as unknown as RefreshTokenInput) as RefreshTokenInput;
      // Update the saved refresh token in the database with the new one (optional)
      await refreshTokenRepository.update(savedRefreshToken.id, newRefreshTokenInput);

      // Generate new access token
      const accessToken = jwt.sign({ sub: user.id }, process.env.JWT_SECRET_KEY || '', {
        expiresIn: '1d',
      });

      return new SuccessResponse(res, {
        AccessToken: accessToken,
        IdToken: accessToken,
        RefreshToken: newRefreshToken,
      });
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  };

  public userProfile = async (req: IRequest, res: IResponse) => {
    try {
      const accessToken = req.body.accessToken as string;
      if (!accessToken) {
        return new ErrorResponse(res, 'Access token not provided', { message: 'Access token not provided' }, 400);
      }
      // Verify the access token and obtain the user ID
      const payload: any = jwt.verify(accessToken, process.env.JWT_SECRET_KEY || '');
      const userId = payload.sub;
      // Check if the user exists (optional)
      const userRepository = new UserRepository();
      const user = await userRepository.findOne({
        where: {
          id: userId,
        },
      });
      if (!user) return new ErrorResponse(res, 'User Not Found', { message: 'User Not Found' }, 404);
      const userProfile = {
        id: user.id,
        email: user.email,
        name: user.name,
        username: user.username,
        privateImage: user.privateImage,
      };
      return new SuccessResponse(res, userProfile);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  };

  public signOut = async (req: IRequest, res: IResponse) => {
    try {
      const refreshToken = req.body.refreshToken as unknown as string;
      if (!refreshToken)
        return new ErrorResponse(res, 'Refresh token not provided', { message: 'Refresh token not provided' }, 400);
      req.logout(async (err) => {
        if (err) {
          return new ErrorResponse(res, (err as Error).message, err);
        }
        const refreshTokenRepository = new RefreshTokenRepository();
        const deletedRefreshToken = await refreshTokenRepository.delete({
          where: {
            token: refreshToken,
          },
          force: true,
        });
        if (!deletedRefreshToken)
          return new ErrorResponse(res, 'Invalid refresh token', { message: 'Invalid refresh token' }, 401);
        return new SuccessResponse(res, 'Sign out successfully');
      });
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  };
}
export default AuthController;
