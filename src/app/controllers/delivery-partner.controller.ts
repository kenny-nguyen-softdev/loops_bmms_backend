/* eslint-disable no-unused-vars */
import { DeliveryPartnerAttributes, DeliveryPartnerInput } from '../../models';
import { generateDSPNCode } from '../../utils';
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
import DeliveryPartnerRepository from '../repositories/DeliveryPartner/delivery-partner.repository';

class DeliveryPartnerController implements BaseController {
  deliveryPartnerRepository: DeliveryPartnerRepository;
  constructor() {
    this.deliveryPartnerRepository = new DeliveryPartnerRepository();
  }
  async index(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const filters = req.query as unknown as any;
      const deliveryPartners = await this.deliveryPartnerRepository.findByCriteria(filters);
      return new SuccessResponse(res, deliveryPartners);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async find(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const deliveryPartnerId: number = parseInt(req.params.id as string);
      const deliveryPartner = await this.deliveryPartnerRepository.findByIdOrFailByCriteria(deliveryPartnerId);
      return new SuccessResponse(res, deliveryPartner);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async create(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const deliveryPartnerInput = pick(
        DeliveryPartnerAttributes,
        req.body as unknown as DeliveryPartnerInput,
      ) as DeliveryPartnerInput;
      if (deliveryPartnerInput.code) {
        const deliveryPartner = await this.deliveryPartnerRepository.findOne({
          where: {
            code: deliveryPartnerInput.code,
          },
        });
        if (deliveryPartner) {
          throw new InternalServerError('Duplicate code in deliveryPartner. The code attribute should be unique');
        }
      } else {
        deliveryPartnerInput.code = generateDSPNCode();
      }
      const deliveryPartner = await this.deliveryPartnerRepository.create(deliveryPartnerInput);
      return new SuccessResponse(res, deliveryPartner, 201);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, error);
    }
  }
  async update(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const deliveryPartnerId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const deliveryPartner = await this.deliveryPartnerRepository.findByIdOrFail(deliveryPartnerId);
      const deliveryPartnerInput = pick(
        DeliveryPartnerAttributes,
        req.body as unknown as DeliveryPartnerInput,
      ) as DeliveryPartnerInput;
      if (deliveryPartnerInput.code && deliveryPartner.code !== deliveryPartnerInput.code) {
        const deliveryPartner = await this.deliveryPartnerRepository.findOne({
          where: {
            code: deliveryPartnerInput.code,
          },
        });
        if (deliveryPartner) {
          throw new InternalServerError('Duplicate code in deliveryPartner. The code attribute should be unique');
        }
      } else {
        deliveryPartnerInput.code = deliveryPartner.code;
      }
      const updatedDeliveryPartner = await this.deliveryPartnerRepository.update(
        deliveryPartnerId,
        deliveryPartnerInput,
      );
      return new SuccessResponse(res, updatedDeliveryPartner);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
  async destroy(req: IRequest, res: IResponse): Promise<ISuccessResponse | IErrorResponse> {
    try {
      const deliveryPartnerId: number = parseInt(req.params.id as string);
      // eslint-disable-next-line no-unused-vars
      const deliveryPartner = await this.deliveryPartnerRepository.findByIdOrFail(deliveryPartnerId);
      const result = await this.deliveryPartnerRepository.deleteById(deliveryPartnerId);
      return new SuccessResponse(res, result);
    } catch (error) {
      return new ErrorResponse(res, (error as Error).message, null, (error as NotFoundError).statusCode);
    }
  }
}
export default DeliveryPartnerController;
