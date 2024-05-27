import { OrderSupplierProductItem } from '../../../models';
import BaseRepository from '../../core/repositories/base/BaseRepository';

class OrderSupplierProductItemsRepository extends BaseRepository<OrderSupplierProductItem> {
  constructor() {
    super(OrderSupplierProductItem);
  }
}
export default OrderSupplierProductItemsRepository;
