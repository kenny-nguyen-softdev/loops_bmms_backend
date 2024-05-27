import { Combo } from '../../../models/Combo';
import BaseRepository from '../../core/repositories/base/BaseRepository';

class ComboRepository extends BaseRepository<Combo> {
  constructor() {
    super(Combo);
  }
}
export default ComboRepository;
