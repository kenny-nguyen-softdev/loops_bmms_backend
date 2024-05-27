import BaseRepository from '../../core/repositories/base/BaseRepository';
import { DeliveryPartnerGroup } from '../../../models';

class DeliveryPartnerGroupRepository extends BaseRepository<DeliveryPartnerGroup> {
  constructor() {
    super(DeliveryPartnerGroup);
  }
}
export default DeliveryPartnerGroupRepository;
