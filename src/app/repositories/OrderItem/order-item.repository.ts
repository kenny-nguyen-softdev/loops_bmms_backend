import BaseRepository from '../../core/repositories/base/BaseRepository';
import { OrderItem } from '../../../models';

class OrderItemRepository extends BaseRepository<OrderItem> {
  constructor() {
    super(OrderItem);
  }
}
export default OrderItemRepository;
