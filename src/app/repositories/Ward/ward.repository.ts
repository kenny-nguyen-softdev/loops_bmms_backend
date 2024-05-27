import BaseRepository from '../../core/repositories/base/BaseRepository';
import { Ward } from '../../../models/Ward';

class WardRepository extends BaseRepository<Ward> {
  constructor() {
    super(Ward);
  }
}
export default WardRepository;
