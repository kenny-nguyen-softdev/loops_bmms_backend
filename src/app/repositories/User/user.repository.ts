import { User } from '../../../models';
import BaseRepository from '../../core/repositories/base/BaseRepository';

class UserRepository extends BaseRepository<User> {
  constructor() {
    super(User);
  }
}
export default UserRepository;
