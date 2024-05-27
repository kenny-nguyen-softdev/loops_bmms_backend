import BaseRepository from '../../core/repositories/base/BaseRepository';
import { ProductUnit } from '../../../models/ProductUnit';

class ProductUnitRepository extends BaseRepository<ProductUnit> {
  constructor() {
    super(ProductUnit);
  }
}
export default ProductUnitRepository;
