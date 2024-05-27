import BaseRepository from '../../core/repositories/base/BaseRepository';
import { PurchaseOrderProductItem } from '../../../models';

class PurchaseOrderProductItemRepository extends BaseRepository<PurchaseOrderProductItem> {
  constructor() {
    super(PurchaseOrderProductItem);
  }
}
export default PurchaseOrderProductItemRepository;
