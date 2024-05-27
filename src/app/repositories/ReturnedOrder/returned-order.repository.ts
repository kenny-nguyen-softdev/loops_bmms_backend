import BaseRepository from '../../core/repositories/base/BaseRepository';
import { ReturnedOrder } from '../../../models';

class ReturnedOrderRepository extends BaseRepository<ReturnedOrder> {
  constructor() {
    super(ReturnedOrder);
  }
}
export default ReturnedOrderRepository;
