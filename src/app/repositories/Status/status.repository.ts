import BaseRepository from '../../core/repositories/base/BaseRepository';
import { Status } from '../../../models/Status';

class StatusRepository extends BaseRepository<Status> {
  constructor() {
    super(Status);
  }
}
export default StatusRepository;
