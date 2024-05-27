import BaseRepository from '../../core/repositories/base/BaseRepository';
import { Specification } from '../../../models/Specification';

class SpecificationRepository extends BaseRepository<Specification> {
  constructor() {
    super(Specification);
  }
}
export default SpecificationRepository;
