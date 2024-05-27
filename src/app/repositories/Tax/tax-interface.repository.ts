/* eslint-disable no-unused-vars */
import { Tax } from '../../../models';

export interface GetAllTaxsFilters {
  taxType: string;
}

export interface TaxInterface {
  get(filters: GetAllTaxsFilters): Promise<Tax[] | []>;
}
