import BaseRepository from '../../core/repositories/base/BaseRepository';
import { TaxType } from '../../../models/TaxType';

class TaxTypeRepository extends BaseRepository<TaxType> {
  constructor() {
    super(TaxType);
  }
}
export default TaxTypeRepository;
