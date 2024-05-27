import { BaseController } from '../core/controllers/BaseController';
import {
  ISuccessResponse,
  IErrorResponse,
  SuccessResponse,
  ErrorResponse,
  NotFoundError,
} from '../core/response/BaseResponse';
import { IRequest, IResponse } from '../core/vendors';
import OrderSupplierRepository from '../repositories/OrderSupplier/order-supplier.repository';
import sequelizeConnection from '../core/db/connection';
import { pick } from '../core/utils';
import { OrderSupplierAttributes, OrderSupplierInput } from '../../models/OrderSupplier';
import { generateONSCode } from '../../utils/generate-code-random-handler.util';
import { OrderSupplierProductItem } from '../../models';
import OrderSupplierProductItemsRepository from '../repositories/OrderSupplierProductItems/order-supplier-product-items.repository';

class OrderSupplierController implements BaseController {
  orderSupplierRepository: OrderSupplierRepository;
  constructor() {
    this.orderSupplierRepository = new OrderSupplierRepository();
  }
  async index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query;
      const orderSuppliers = await this.orderSupplierRepository.findByCriteria(filters);
      return new SuccessResponse(res, orderSuppliers);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async create(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      return await sequelizeConnection.transaction(async () => {
        const orderSupplierInput = pick(
          [...OrderSupplierAttributes, 'productItems'],
          req.body as unknown as OrderSupplierInput & {
            productItems?: { id: number; quantity: number; price: number; discount: number; totalPrice: number }[];
          },
        ) as OrderSupplierInput & {
          productItems?: { id: number; quantity: number; price: number; discount: number; totalPrice: number }[];
        };
        //create order supplier
        orderSupplierInput.code = generateONSCode();
        const newOrderSupplier = await this.orderSupplierRepository.create(orderSupplierInput);
        let orderSupplierItems: OrderSupplierProductItem[] = [];
        const orderSupplierItemsRepository = new OrderSupplierProductItemsRepository();
        if (orderSupplierInput?.productItems && orderSupplierInput?.productItems?.length > 0) {
          //bulk create order supplier product items
          const orderSupplierProductItems = orderSupplierInput?.productItems.map(
            (productItem: { id: number; quantity: number; price: number; discount: number; totalPrice: number }) => ({
              orderSupplierId: newOrderSupplier.id,
              productId: productItem.id,
              quantity: productItem.quantity,
              price: productItem.price,
              discount: productItem.discount,
              totalPrice: productItem.totalPrice,
            }),
          );
          const newOrderSupplierProductItems = await orderSupplierItemsRepository.bulkCreate(orderSupplierProductItems);
          orderSupplierItems = [...orderSupplierItems, ...newOrderSupplierProductItems];
        }
        return new SuccessResponse(res, { orderSupplier: newOrderSupplier, productItems: orderSupplierItems }, 201);
      });
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async find(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const orderSupplierId = parseInt(req.params.id as string);
      const filters = req.query as unknown as any;
      const orderSupplier = await this.orderSupplierRepository.findByIdOrFailByCriteria(orderSupplierId, filters);
      return new SuccessResponse(res, orderSupplier);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  update(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    throw new Error('Method not implemented.');
  }
  destroy(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    throw new Error('Method not implemented.');
  }
}
export default OrderSupplierController;
