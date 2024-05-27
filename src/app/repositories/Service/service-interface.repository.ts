/* eslint-disable no-unused-vars */
import { Service } from '../../../models';
import { GetAllServicesFilters } from './service.repository';

export interface ServiceInterface {
  get(filters: GetAllServicesFilters): Promise<Service[] | null>;
  getOne(serviceId: number): Promise<Service | null>;
}
