import BaseRepository from '../../core/repositories/base/BaseRepository';
import { StockAdjustment } from '../../../models';

class StockAdjustmentRepository extends BaseRepository<StockAdjustment> {
  constructor() {
    super(StockAdjustment);
  }
}
export default StockAdjustmentRepository;
