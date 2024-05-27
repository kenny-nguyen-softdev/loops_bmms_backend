/* eslint-disable no-unused-vars */
import { Product } from '../../../models';
import { GetAllProductsFilters } from './product.repository';

export interface ProductInterface {
  get(filters: GetAllProductsFilters): Promise<Product[] | null>;
  getOne(productId: number): Promise<Product | null>;
}
