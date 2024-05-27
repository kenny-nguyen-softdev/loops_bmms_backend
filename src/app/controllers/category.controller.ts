import { Category, CategoryAttributes, CategoryInput } from '../../models';
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
import CategoryRepository from '../repositories/Category/category.repository';
class CategoryController implements BaseController {
  categoryRepository: CategoryRepository;
  constructor() {
    this.categoryRepository = new CategoryRepository();
  }
  async index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as any;
      let categories: Category[] | null = [];
      if (Object.getOwnPropertyNames(filters).length > 0) {
        categories = await this.categoryRepository.findByCriteria(filters);
      } else {
        categories = await this.categoryRepository.get();
      }
      return new SuccessResponse(res, categories);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async find(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const categoryId: number = parseInt(req.params.id as string);
      const category = await this.categoryRepository.findOne({
        where: {
          id: categoryId,
        },
      });
      if (!category) return new ErrorResponse(res, 'Category not found', null, 404);
      return new SuccessResponse(res, category);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async create(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const categoryInput = pick(CategoryAttributes, req.body as unknown as CategoryInput) as CategoryInput;
      const category = await this.categoryRepository.create(categoryInput);
      return new SuccessResponse(res, category, 201);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async update(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const categoryId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const category = await this.categoryRepository.findByIdOrFail(categoryId);
      const categoryInput = pick(CategoryAttributes, req.body as unknown as CategoryInput) as CategoryInput;
      const updatedCategory = await this.categoryRepository.update(categoryId, categoryInput);
      return new SuccessResponse(res, updatedCategory);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async destroy(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const categoryId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const category = await this.categoryRepository.findByIdOrFail(categoryId);
      const result = await this.categoryRepository.deleteById(categoryId);
      return new SuccessResponse(res, result);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async reactivate(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const categoryId: number = parseInt(req.params.id as string);
      let category = await this.categoryRepository.findByIdOrFail(categoryId);
      if (category?.isActive === true) {
        category = await this.categoryRepository.deactive(categoryId);
      } else {
        category = await this.categoryRepository.active(categoryId);
      }
      return new SuccessResponse(res, category);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
}
export default CategoryController;
