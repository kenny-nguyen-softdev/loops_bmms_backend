import BaseRepository from '../../core/repositories/base/BaseRepository';
import { VoucherType } from '../../../models';

class VoucherTypeRepository extends BaseRepository<VoucherType> {
  constructor() {
    super(VoucherType);
  }
}
export default VoucherTypeRepository;
