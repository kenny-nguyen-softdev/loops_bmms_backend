import BaseRepository from '../../core/repositories/base/BaseRepository';
import { VoucherGroup } from '../../../models';

class VoucherGroupRepository extends BaseRepository<VoucherGroup> {
  constructor() {
    super(VoucherGroup);
  }
}
export default VoucherGroupRepository;
