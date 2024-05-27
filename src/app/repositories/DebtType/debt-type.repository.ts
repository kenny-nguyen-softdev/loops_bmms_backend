import BaseRepository from '../../core/repositories/base/BaseRepository';
import { DebtType } from '../../../models/DebtType';

class DebtTypeRepository extends BaseRepository<DebtType> {
  constructor() {
    super(DebtType);
  }
}
export default DebtTypeRepository;
