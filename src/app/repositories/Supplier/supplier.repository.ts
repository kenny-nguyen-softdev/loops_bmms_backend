import BaseRepository from '../../core/repositories/base/BaseRepository';
import { Supplier } from '../../../models';

class SupplierRepository extends BaseRepository<Supplier> {
  constructor() {
    super(Supplier);
  }
}
export default SupplierRepository;
