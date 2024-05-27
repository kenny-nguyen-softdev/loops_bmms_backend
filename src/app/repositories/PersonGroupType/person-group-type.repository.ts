import BaseRepository from '../../core/repositories/base/BaseRepository';
import { PersonGroupType } from '../../../models';

class PersonGroupTypeRepository extends BaseRepository<PersonGroupType> {
  constructor() {
    super(PersonGroupType);
  }
}
export default PersonGroupTypeRepository;
