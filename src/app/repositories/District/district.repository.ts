import BaseRepository from '../../core/repositories/base/BaseRepository';
import { District } from '../../../models/District';

class DistrictRepository extends BaseRepository<District> {
  constructor() {
    super(District);
  }
}
export default DistrictRepository;
