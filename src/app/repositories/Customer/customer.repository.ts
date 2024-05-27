import { Customer } from '../../../models';
import BaseRepository from '../../core/repositories/base/BaseRepository';

class CustomerRepository extends BaseRepository<Customer> {
  constructor() {
    super(Customer);
  }
}
export default CustomerRepository;
