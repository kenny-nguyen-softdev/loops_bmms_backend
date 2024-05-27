import BaseRepository from '../../core/repositories/base/BaseRepository';
import { Voucher } from '../../../models';

class VoucherRepository extends BaseRepository<Voucher> {
  constructor() {
    super(Voucher);
  }
}
export default VoucherRepository;
