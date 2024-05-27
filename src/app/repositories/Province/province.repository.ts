import BaseRepository from '../../core/repositories/base/BaseRepository';
import { Province } from '../../../models/Province';

class ProvinceRepository extends BaseRepository<Province> {
  constructor() {
    super(Province);
  }
}
export default ProvinceRepository;
