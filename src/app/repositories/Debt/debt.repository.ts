import { Debt } from '../../../models';
import BaseRepository from '../../core/repositories/base/BaseRepository';

class DebtRepository extends BaseRepository<Debt> {
  constructor() {
    super(Debt);
  }
}
export default DebtRepository;
