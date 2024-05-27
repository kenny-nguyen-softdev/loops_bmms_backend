import BaseRepository from '../../core/repositories/base/BaseRepository';
import { SizeUnit } from '../../../models/SizeUnit';

class SizeUnitRepository extends BaseRepository<SizeUnit> {
  constructor() {
    super(SizeUnit);
  }
}
export default SizeUnitRepository;
