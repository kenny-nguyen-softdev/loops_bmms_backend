import BaseRepository from '../../core/repositories/base/BaseRepository';
import { ReturnedOrderItem } from '../../../models';

class ReturnedOrderItemRepository extends BaseRepository<ReturnedOrderItem> {
  constructor() {
    super(ReturnedOrderItem);
  }
}
export default ReturnedOrderItemRepository;
