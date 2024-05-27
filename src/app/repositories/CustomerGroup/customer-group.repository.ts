import BaseRepository from '../../core/repositories/base/BaseRepository';
import { CustomerGroup } from '../../../models';

class CustomerGroupRepository extends BaseRepository<CustomerGroup> {
  constructor() {
    super(CustomerGroup);
  }
}
export default CustomerGroupRepository;
