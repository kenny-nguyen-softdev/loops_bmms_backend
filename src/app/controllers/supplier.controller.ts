/* eslint-disable no-unused-vars */
import {
  Debt,
  District,
  Province,
  PurchaseOrder,
  SupplierAttributes,
  SupplierInput,
  Voucher,
  Ward,
  ReturnedPurchaseOrder,
  User,
  VoucherType,
} from '../../models';
import { generateSUPNCode } from '../../utils';
import { BaseController } from '../core/controllers/BaseController';
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
import SupplierRepository from '../repositories/Supplier/supplier.repository';

class SupplierController implements BaseController {
  supplierRepository: SupplierRepository;
  constructor() {
    this.supplierRepository = new SupplierRepository();
  }
  async index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as any;
      const suppliers = await this.supplierRepository.findByCriteria(filters, {
        include: {
          Ward: {
            model: Ward,
            as: 'ward',
            include: [
              {
                model: District,
                as: 'district',
                include: [
                  {
                    model: Province,
                    as: 'province',
                  },
                ],
              },
            ],
          },
          Debts: {
            model: Debt,
            as: 'debts',
            include: [
              {
                model: User,
                as: 'staff',
              },
              {
                model: Voucher,
                as: 'voucher',
                include: [
                  {
                    model: VoucherType,
                    as: 'voucherType',
                  },
                ],
              },
              {
                model: PurchaseOrder,
                as: 'purchaseOrder',
              },
              {
                model: ReturnedPurchaseOrder,
                as: 'returnedPurchaseOrder',
                include: [
                  {
                    model: PurchaseOrder,
                    as: 'purchaseOrder',
                  },
                ],
              },
            ],
            order: [['createdAt', 'DESC']],
          },
        },
      });
      return new SuccessResponse(res, suppliers);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async find(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as any;
      const supplierId: number = parseInt(req.params.id as string);
      const supplier = await this.supplierRepository.findByIdOrFailByCriteria(supplierId, filters, {
        include: {
          Ward: {
            model: Ward,
            as: 'ward',
            include: [
              {
                model: District,
                as: 'district',
                include: [
                  {
                    model: Province,
                    as: 'province',
                  },
                ],
              },
            ],
          },
          Debts: {
            model: Debt,
            as: 'debts',
            include: [
              {
                model: User,
                as: 'staff',
              },
              {
                model: Voucher,
                as: 'voucher',
                include: [
                  {
                    model: VoucherType,
                    as: 'voucherType',
                  },
                ],
              },
              {
                model: PurchaseOrder,
                as: 'purchaseOrder',
              },
              {
                model: ReturnedPurchaseOrder,
                as: 'returnedPurchaseOrder',
                include: [
                  {
                    model: PurchaseOrder,
                    as: 'purchaseOrder',
                  },
                ],
              },
            ],
            order: [['createdAt', 'DESC']],
          },
        },
      });
      return new SuccessResponse(res, supplier);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async create(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const supplierInput = pick(SupplierAttributes, req.body as unknown as SupplierInput) as SupplierInput;
      if (supplierInput.code) {
        const supplier = await this.supplierRepository.findOne({
          where: {
            code: supplierInput.code,
          },
        });
        if (supplier) {
          throw new InternalServerError('Duplicate code in supplier. The code attribute should be unique');
        }
      } else {
        supplierInput.code = generateSUPNCode();
      }
      const supplier = await this.supplierRepository.create(supplierInput);
      return new SuccessResponse(res, supplier, 201);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async update(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const supplierId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const supplier = await this.supplierRepository.findByIdOrFail(supplierId);
      const supplierInput = pick(SupplierAttributes, req.body as unknown as SupplierInput) as SupplierInput;
      if (supplierInput.code && supplier.code !== supplierInput.code) {
        const supplier = await this.supplierRepository.findOne({
          where: {
            code: supplierInput.code,
          },
        });
        if (supplier) {
          throw new InternalServerError('Duplicate code in supplier. The code attribute should be unique');
        }
      } else {
        supplierInput.code = supplier.code;
      }
      const updatedSupplier = await this.supplierRepository.update(supplierId, supplierInput);
      return new SuccessResponse(res, updatedSupplier);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async destroy(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const supplierId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const supplier = await this.supplierRepository.findByIdOrFail(supplierId);
      const result = await this.supplierRepository.deleteById(supplierId);
      return new SuccessResponse(res, result);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
}
export default SupplierController;
