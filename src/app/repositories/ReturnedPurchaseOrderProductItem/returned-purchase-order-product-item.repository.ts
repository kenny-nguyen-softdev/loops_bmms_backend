import BaseRepository from '../../core/repositories/base/BaseRepository';
import { ReturnedPurchaseOrderProductItem } from '../../../models';

class ReturnedPurchaseOrderProductItemRepository extends BaseRepository<ReturnedPurchaseOrderProductItem> {
  constructor() {
    super(ReturnedPurchaseOrderProductItem);
  }
}
export default ReturnedPurchaseOrderProductItemRepository;
