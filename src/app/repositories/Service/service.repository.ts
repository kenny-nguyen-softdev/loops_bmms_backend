import BaseRepository from '../../core/repositories/base/BaseRepository';
import { ServiceInterface } from './service-interface.repository';
import { Category, Image, Service, Tax } from '../../../models';
import { Op } from 'sequelize';

export interface GetAllServicesFilters {
  keyword: string;
}

class ServiceRepository extends BaseRepository<Service> implements ServiceInterface {
  constructor() {
    super(Service);
  }
  async get(filters: GetAllServicesFilters): Promise<Service[] | null> {
    return await this.model.findAll({
      where: {
        name: {
          [Op.like]: `%${filters?.keyword ?? ''}%`,
        },
      },
      order: [['createdAt', 'DESC']],
      include: [
        {
          model: Category,
          as: 'category',
        },
        {
          model: Image,
          as: 'images',
        },
        {
          model: Tax,
          as: 'inputTax',
        },
        {
          model: Tax,
          as: 'outputTax',
        },
      ],
    });
  }
  async getOne(serviceId: number): Promise<Service | null> {
    return await this.model.findOne({
      where: {
        id: serviceId,
      },
      include: [
        {
          model: Category,
          as: 'category',
        },
        {
          model: Image,
          as: 'images',
        },
        {
          model: Tax,
          as: 'inputTax',
        },
        {
          model: Tax,
          as: 'outputTax',
        },
      ],
    });
  }
}
export default ServiceRepository;
