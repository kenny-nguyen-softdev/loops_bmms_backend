import BaseRepository from '../../core/repositories/base/BaseRepository';
import { SupplierGroup } from '../../../models';

class SupplierGroupRepository extends BaseRepository<SupplierGroup> {
  constructor() {
    super(SupplierGroup);
  }
}
export default SupplierGroupRepository;
