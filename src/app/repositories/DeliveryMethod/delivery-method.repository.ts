import BaseRepository from '../../core/repositories/base/BaseRepository';
import { DeliveryMethod } from '../../../models';

class DeliveryMethodRepository extends BaseRepository<DeliveryMethod> {
  constructor() {
    super(DeliveryMethod);
  }
}
export default DeliveryMethodRepository;
