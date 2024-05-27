import BaseRepository from '../../core/repositories/base/BaseRepository';
import { UnitType } from '../../../models/UnitType';

class UnitTypeRepository extends BaseRepository<UnitType> {
  constructor() {
    super(UnitType);
  }
}
export default UnitTypeRepository;
