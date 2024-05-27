import axios from 'axios';
import { UserAttributes, UserInput } from '../../models';
import { comparePassword, generateUploadUrls, getOnlyImageName, hashPassword } from '../../utils';
import { BaseController } from '../core/controllers/BaseController';
import {
  ISuccessResponse,
  IErrorResponse,
  SuccessResponse,
  ErrorResponse,
  NotFoundError,
} from '../core/response/BaseResponse';
import { pick } from '../core/utils';
import { IRequest, IResponse } from '../core/vendors';
import PersonGroupTypeRepository from '../repositories/PersonGroupType/person-group-type.repository';
import UserRepository from '../repositories/User/user.repository';
import { getCurrentDate, giveCurrentDateTime } from '../../utils/date-handler.util';

class UserController implements BaseController {
  userRepository: UserRepository;
  personGroupTypeRepository: PersonGroupTypeRepository;
  constructor() {
    this.userRepository = new UserRepository();
    this.personGroupTypeRepository = new PersonGroupTypeRepository();
  }

  async index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const users = await this.userRepository.find();
      return new SuccessResponse(res, users);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async find(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const userId: number = parseInt(req.params.id as string);
      const user = await this.userRepository.findOne({
        where: {
          id: userId,
        },
      });
      if (!user) return new ErrorResponse(res, 'User not found', null, 404);
      return new SuccessResponse(res, user);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async create(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const userInput = pick(UserAttributes, req.body as unknown as UserInput) as UserInput;
      userInput.password = (await hashPassword(userInput.password)) as unknown as string;
      const user = await this.userRepository.create(userInput);
      return new SuccessResponse(res, user, 201);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async update(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const userId: number = parseInt(req.params.id as string);
      const user = await this.userRepository.findOne({
        where: {
          id: userId,
        },
      });
      if (!user) return new ErrorResponse(res, 'User not found', null, 404);
      const userInput = pick(UserAttributes, req.body as unknown as UserInput) as UserInput;
      const personGroupTypeKeyInput = req.body.personGroupTypeKey;
      if (userInput.email !== user.email) {
        const invalidEmail = await this.userRepository.findOne({
          where: {
            email: userInput.email,
          },
        });
        if (invalidEmail) return new ErrorResponse(res, 'Email existed', null, 500);
      }
      const personGroupType = await this.personGroupTypeRepository.findOne({
        where: {
          key: personGroupTypeKeyInput,
        },
      });
      userInput.personGroupTypeId = personGroupType?.id;
      const updatedUser = await this.userRepository.update(userId, userInput);
      return new SuccessResponse(res, updatedUser);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async destroy(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const userId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const user = await this.userRepository.findByIdOrFail(userId);
      const result = await this.userRepository.deleteById(userId);
      return new SuccessResponse(res, result);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async updatePassword(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const userId: number = parseInt(req.params.id as string);
      const user = await this.userRepository.findOne({
        where: {
          id: userId,
        },
      });
      if (!user) return new ErrorResponse(res, 'User not found', null, 404);
      const userInput = pick(
        ['password', 'newPassword', 'passwordConfirmation'],
        req.body as unknown as {
          password: string;
          newPassword: string;
          passwordConfirmation: string;
        },
      ) as {
        password: string;
        newPassword: string;
        passwordConfirmation: string;
      };
      const isPasswordValid = await comparePassword(userInput.password, user.password);
      if (!isPasswordValid) {
        return new ErrorResponse(res, 'Unauthorized: wrong password', null, 401);
      }
      const updatedUser = await this.userRepository.update(userId, {
        ...user,
        password: (await hashPassword(userInput.newPassword)) as unknown as string,
      });
      return new SuccessResponse(res, updatedUser);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  protected async uploadImagesByPresignedUrl(file: any, presignedUrl: any): Promise<string> {
    try {
      let downloadedUrl = '';
      await axios.put(presignedUrl.write, file.buffer, {
        headers: {
          'Content-Type': file.mimetype,
        },
      });
      downloadedUrl = await generateUploadUrls(presignedUrl.filename, 'read', undefined, '2050-01-01');

      return downloadedUrl;
    } catch (error: any) {
      throw new Error(error);
    }
  }
  async uploadImage(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const userId: number = parseInt(req.params.id as string);
      const user = await this.userRepository.findOne({
        where: {
          id: userId,
        },
      });
      if (!user) return new ErrorResponse(res, 'User not found', null, 404);
      const input = pick(['presignedUrl'], JSON.parse(req.body.data) as unknown as any) as any;
      const updatedUser = await this.userRepository.update(userId, {
        ...user,
        privateImage: await this.uploadImagesByPresignedUrl(req.file, input.presignedUrl),
      });
      return new SuccessResponse(res, updatedUser);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error, (error as NotFoundError).statusCode);
    }
  }
  async generatePresignedUrlImage(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const dateTime = giveCurrentDateTime();
      let presignedUrl: any;
      if (req?.file) {
        const originalName = getOnlyImageName(req?.file.originalname);
        const writePresignedUrl = await generateUploadUrls(
          `${getCurrentDate()}/${originalName + '       ' + dateTime}`,
          'write',
          req?.file.mimetype,
        );
        presignedUrl = {
          write: writePresignedUrl,
          filename: `${getCurrentDate()}/${originalName + '       ' + dateTime}`,
        };
      }
      return new SuccessResponse(res, { presignedUrl });
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
}

export default UserController;
