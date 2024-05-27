import BaseRepository from '../../core/repositories/base/BaseRepository';
import { SpecificationType } from '../../../models/SpecificationType';

class SpecificationTypeRepository extends BaseRepository<SpecificationType> {
  constructor() {
    super(SpecificationType);
  }
}
export default SpecificationTypeRepository;
