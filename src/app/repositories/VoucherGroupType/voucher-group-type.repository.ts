import BaseRepository from '../../core/repositories/base/BaseRepository';
import { VoucherGroupType } from '../../../models';

class VoucherGroupTypeRepository extends BaseRepository<VoucherGroupType> {
  constructor() {
    super(VoucherGroupType);
  }
}
export default VoucherGroupTypeRepository;
