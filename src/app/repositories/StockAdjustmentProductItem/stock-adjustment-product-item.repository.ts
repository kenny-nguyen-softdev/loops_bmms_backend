import BaseRepository from '../../core/repositories/base/BaseRepository';
import { StockAdjustmentProductItem } from '../../../models';

class StockAdjustmentProductItemRepository extends BaseRepository<StockAdjustmentProductItem> {
  constructor() {
    super(StockAdjustmentProductItem);
  }
}
export default StockAdjustmentProductItemRepository;
