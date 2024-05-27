import { OrderSupplier } from '../../../models';
import BaseRepository from '../../core/repositories/base/BaseRepository';

class OrderSupplierRepository extends BaseRepository<OrderSupplier> {
  constructor() {
    super(OrderSupplier);
  }
}
export default OrderSupplierRepository;
