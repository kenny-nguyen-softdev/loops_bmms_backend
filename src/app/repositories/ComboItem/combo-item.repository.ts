import { ComboItem } from '../../../models';
import BaseRepository from '../../core/repositories/base/BaseRepository';

class ComboItemRepository extends BaseRepository<ComboItem> {
  constructor() {
    super(ComboItem);
  }
}
export default ComboItemRepository;
