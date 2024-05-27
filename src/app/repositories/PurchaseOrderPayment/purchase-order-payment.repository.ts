import BaseRepository from '../../core/repositories/base/BaseRepository';
import { PurchaseOrderPayment } from '../../../models';

class PurchaseOrderPaymentRepository extends BaseRepository<PurchaseOrderPayment> {
  constructor() {
    super(PurchaseOrderPayment);
  }
}
export default PurchaseOrderPaymentRepository;
