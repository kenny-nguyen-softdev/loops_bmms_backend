import BaseRepository from '../../core/repositories/base/BaseRepository';
import { PurchaseOrder } from '../../../models';

class PurchaseOrderRepository extends BaseRepository<PurchaseOrder> {
  constructor() {
    super(PurchaseOrder);
  }
}
export default PurchaseOrderRepository;
