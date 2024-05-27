import { Status, StockAdjustmentAttributes, StockAdjustmentInput, StockAdjustmentProductItem } from '../../models';
import { BaseController } from '../core/controllers/BaseController';
import sequelizeConnection from '../core/db/connection';
import {
  ErrorResponse,
  IErrorResponse,
  ISuccessResponse,
  InternalServerError,
  NotFoundError,
  SuccessResponse,
} from '../core/response/BaseResponse';
import { pick } from '../core/utils';
import { IRequest, IResponse } from '../core/vendors';
import StockAdjustmentRepository from '../repositories/StockAdjustment/stock-adjustment.repository';
import StockAdjustmentProductItemRepository from '../repositories/StockAdjustmentProductItem/stock-adjustment-product-item.repository';
import StatusRepository from '../repositories/Status/status.repository';
import { STATUSES } from '../../constant';
import { generateIANCode } from '../../utils';
import ProductRepository from '../repositories/Product/product.repository';

class StockAdjustmentController implements BaseController {
  stockAdjustmentRepository: StockAdjustmentRepository;
  constructor() {
    this.stockAdjustmentRepository = new StockAdjustmentRepository();
  }
  async index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as any;
      const stockAdjustments = await this.stockAdjustmentRepository.findByCriteria(filters);
      return new SuccessResponse(res, stockAdjustments);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async find(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as any;
      const stockAdjustmentId: number = parseInt(req.params.id as string);
      const stockAdjustment = await this.stockAdjustmentRepository.findByIdOrFailByCriteria(stockAdjustmentId, filters);
      return new SuccessResponse(res, stockAdjustment);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async create(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      return await sequelizeConnection.transaction(async () => {
        const stockAdjustmentInput = pick(
          [...StockAdjustmentAttributes, 'productItems'],
          req.body as unknown as StockAdjustmentInput & {
            productItems?: {
              id: number;
              lossReasonId: number;
              actualQuantity: number;
              quantityDifference: number;
              note: string;
            }[];
          },
        ) as StockAdjustmentInput & {
          productItems?: {
            id: number;
            lossReasonId: number;
            actualQuantity: number;
            quantityDifference: number;
            note: string;
          }[];
        };
        stockAdjustmentInput.code = generateIANCode();
        const stockAdjustment = await this.stockAdjustmentRepository.create(stockAdjustmentInput);
        let createdStockAdjustmentProductItems: StockAdjustmentProductItem[] = [];
        if (stockAdjustmentInput?.productItems && stockAdjustmentInput?.productItems.length > 0) {
          // Create product items in stock adjustment
          const stockAdjustmentProductItemRepository = new StockAdjustmentProductItemRepository();
          const stockAdjustmentProductItems = stockAdjustmentInput.productItems.map(
            (productItem: {
              id: number;
              lossReasonId: number;
              actualQuantity: number;
              quantityDifference: number;
              note: string;
            }) => ({
              stockAdjustmentId: stockAdjustment.id,
              productId: productItem.id,
              lossReasonId: productItem.lossReasonId,
              actualQuantity: productItem.actualQuantity,
              quantityDifference: productItem.quantityDifference,
              note: productItem.note,
            }),
          );
          const newStockAdjustmentProductItems = await stockAdjustmentProductItemRepository.bulkCreate(
            stockAdjustmentProductItems,
          );
          createdStockAdjustmentProductItems = [
            ...createdStockAdjustmentProductItems,
            ...newStockAdjustmentProductItems,
          ];
        }
        return new SuccessResponse(res, { stockAdjustment, productItems: createdStockAdjustmentProductItems }, 201);
      });
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async update(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      return await sequelizeConnection.transaction(async () => {
        const stockAdjustmentId: number = parseInt(req.params.id as string);
        // eslint-disable-next-line no-unused-vars
        const stockAdjustment = await this.stockAdjustmentRepository.findByIdOrFail(stockAdjustmentId, {
          include: [
            {
              model: Status,
              as: 'adjustmentStatus',
            },
          ],
        });
        if (stockAdjustment.adjustmentStatus?.key !== STATUSES.stockChecking) {
          throw new InternalServerError('Stock adjustment able to updated when the status in the stock checking');
        }
        const stockAdjustmentInput = pick(
          [...StockAdjustmentAttributes, 'productItems'],
          req.body as unknown as StockAdjustmentInput & {
            productItems?: {
              id: number;
              lossReasonId: number;
              actualQuantity: number;
              quantityDifference: number;
              note: string;
            }[];
          },
        ) as StockAdjustmentInput & {
          productItems?: {
            id: number;
            lossReasonId: number;
            actualQuantity: number;
            quantityDifference: number;
            note: string;
          }[];
        };
        const updatedStockAdjustment = await this.stockAdjustmentRepository.update(
          stockAdjustmentId,
          stockAdjustmentInput,
        );
        let updatedStockAdjustmentProductItems: StockAdjustmentProductItem[] = [];
        if (stockAdjustmentInput?.productItems && stockAdjustmentInput?.productItems.length > 0) {
          // Create product items in stock adjustment
          const stockAdjustmentProductItemRepository = new StockAdjustmentProductItemRepository();
          const stockAdjustmentProductItems = stockAdjustmentInput.productItems.map(
            (productItem: {
              id: number;
              lossReasonId: number;
              actualQuantity: number;
              quantityDifference: number;
              note: string;
            }) => ({
              stockAdjustmentId: stockAdjustment.id,
              productId: productItem.id,
              lossReasonId: productItem.lossReasonId,
              actualQuantity: productItem.actualQuantity,
              quantityDifference: productItem.quantityDifference,
              note: productItem.note,
            }),
          );
          const updatedProductItems = await stockAdjustmentProductItemRepository.bulkUpdate(
            stockAdjustmentProductItems,
            {
              updateOnDuplicate: [
                'stockAdjustmentId',
                'productId',
                'lossReasonId',
                'actualQuantity',
                'quantityDifference',
                'note',
                'updatedAt',
              ],
            },
          );
          updatedStockAdjustmentProductItems = [...updatedStockAdjustmentProductItems, ...updatedProductItems];
        }
        return new SuccessResponse(res, {
          updatedStockAdjustment,
          updatedProductItems: updatedStockAdjustmentProductItems,
        });
      });
    } catch (error) {
      return new ErrorResponse(
        res,
        (error as Error).message,
        null,
        (error as NotFoundError | InternalServerError).statusCode,
      );
    }
  }
  async destroy(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const stockAdjustmentId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const stockAdjustment = await this.stockAdjustmentRepository.findByIdOrFail(stockAdjustmentId);
      const statusRepository = new StatusRepository();
      const deletedStatus = await statusRepository.findOneOrFail({
        where: {
          key: STATUSES.deleted,
        },
      });
      const result = await this.stockAdjustmentRepository.update(stockAdjustmentId, {
        ...stockAdjustment,
        adjustmentStatusId: deletedStatus.id,
      });
      return new SuccessResponse(res, result);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }

  async balanceInventory(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      return await sequelizeConnection.transaction(async () => {
        const stockAdjustmentInput = pick(
          ['adjustmentStaffId'],
          req.body as unknown as {
            adjustmentStaffId: number;
          },
        ) as {
          adjustmentStaffId: number;
        };
        const stockAdjustmentId: number = parseInt(req.params.id as string);
        const stockAdjustment = await this.stockAdjustmentRepository.findByIdOrFail(stockAdjustmentId, {
          include: [
            {
              model: Status,
              as: 'adjustmentStatus',
            },
            {
              model: StockAdjustmentProductItem,
              as: 'stockAdjustmentProductItems',
            },
          ],
        });
        if (stockAdjustment.adjustmentStatus?.key !== STATUSES.stockChecking) {
          throw new InternalServerError(
            'Stock adjustment able to balance inventory when the status in the stock checking',
          );
        }
        if (stockAdjustment.stockAdjustmentProductItems && stockAdjustment.stockAdjustmentProductItems.length > 0) {
          const productRepository = new ProductRepository();
          stockAdjustment.stockAdjustmentProductItems.map(async (productItem) => {
            const product = await productRepository.findById(productItem.productId);
            await product?.update({
              inventoryQuantity: productItem.actualQuantity,
            });
          });

          // Update adjustment staff and adjustment status
          const statusRepository = new StatusRepository();
          const balancedStatus = await statusRepository.findOneOrFail({
            where: {
              key: STATUSES.balanced,
            },
          });
          await stockAdjustment.update({
            adjustmentStaffId: stockAdjustmentInput.adjustmentStaffId,
            adjustmentStatusId: balancedStatus.id,
            adjustmentDate: new Date(),
          });
        }
        return new SuccessResponse(res, stockAdjustment);
      });
    } catch (error) {
      return new ErrorResponse(
        res,
        (error as Error).message,
        null,
        (error as NotFoundError | InternalServerError).statusCode,
      );
    }
  }
}
export default StockAdjustmentController;
