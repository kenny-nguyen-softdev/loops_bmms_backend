import BaseRepository from '../../core/repositories/base/BaseRepository';
import { LossReason } from '../../../models/LossReason';

class LossReasonRepository extends BaseRepository<LossReason> {
  constructor() {
    super(LossReason);
  }
}
export default LossReasonRepository;
