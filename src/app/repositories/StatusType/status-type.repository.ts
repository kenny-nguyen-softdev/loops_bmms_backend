import BaseRepository from '../../core/repositories/base/BaseRepository';
import { StatusType } from '../../../models/StatusType';

class StatusTypeRepository extends BaseRepository<StatusType> {
  constructor() {
    super(StatusType);
  }
}
export default StatusTypeRepository;
