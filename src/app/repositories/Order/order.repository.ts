import BaseRepository from '../../core/repositories/base/BaseRepository';
import { Order } from '../../../models';

class OrderRepository extends BaseRepository<Order> {
  constructor() {
    super(Order);
  }
}
export default OrderRepository;
