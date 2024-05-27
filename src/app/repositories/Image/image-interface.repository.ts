/* eslint-disable no-unused-vars */
import { Image } from '../../../models';

export interface ImageInterface {
  findByProductId(productId: number): Promise<Image[] | []>;
  deleteByProductId(productId: number): Promise<boolean>;
}
