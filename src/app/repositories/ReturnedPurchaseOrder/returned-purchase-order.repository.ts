import BaseRepository from '../../core/repositories/base/BaseRepository';
import { ReturnedPurchaseOrder } from '../../../models';

class ReturnedPurchaseOrderRepository extends BaseRepository<ReturnedPurchaseOrder> {
  constructor() {
    super(ReturnedPurchaseOrder);
  }
}
export default ReturnedPurchaseOrderRepository;
