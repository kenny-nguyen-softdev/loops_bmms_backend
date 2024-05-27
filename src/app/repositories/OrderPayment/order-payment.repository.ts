import BaseRepository from '../../core/repositories/base/BaseRepository';
import { OrderPayment } from '../../../models';

class OrderPaymentRepository extends BaseRepository<OrderPayment> {
  constructor() {
    super(OrderPayment);
  }
}
export default OrderPaymentRepository;
