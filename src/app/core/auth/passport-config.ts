import { PassportStatic } from 'passport';
import { Strategy as LocalStrategy } from 'passport-local';
import { Strategy as JWTStrategy, ExtractJwt } from 'passport-jwt';
import UserRepository from '../../repositories/User/user.repository';
import { comparePassword } from '../../../utils';

const configurePassport = (passport: PassportStatic) => {
  // LocalStrategy for username/password authentication
  passport.use(
    'sign-in',
    new LocalStrategy(
      {
        usernameField: 'email',
      },
      async (email: string, password: string, done) => {
        try {
          const userRepository = new UserRepository();
          const user = await userRepository.findOne({
            where: {
              email,
            },
          });
          if (!user) {
            return done(null, false, { message: 'Invalid credentials' });
          }
          const isPasswordValid = await comparePassword(password, user.password);
          if (!isPasswordValid) {
            return done(null, false, { message: 'Invalid credentials' });
          }
          return done(null, user);
        } catch (error) {
          return done(error);
        }
      },
    ),
  );

  // JWTStrategy for token-based authentication
  passport.use(
    new JWTStrategy(
      {
        jwtFromRequest: ExtractJwt.fromAuthHeaderAsBearerToken(),
        secretOrKey: process.env.JWT_SECRET_KEY,
      },
      async (payload, done) => {
        try {
          const userRepository = new UserRepository();
          const user = await userRepository.findById(payload.sub);
          if (!user) {
            return done(null, false);
          }
          return done(null, user);
        } catch (error) {
          return done(error);
        }
      },
    ),
  );

  passport.serializeUser((user: any, done) => {
    done(null, user.id);
  });

  passport.deserializeUser(async (id: number, done) => {
    try {
      const userRepository = new UserRepository();
      const user = await userRepository.findById(id);
      done(null, user);
    } catch (error) {
      done(error);
    }
  });
};

export default configurePassport;
