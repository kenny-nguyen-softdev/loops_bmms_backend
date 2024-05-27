import BaseRepository from '../../core/repositories/base/BaseRepository';
import { DeliveryPartner } from '../../../models';

class DeliveryPartnerRepository extends BaseRepository<DeliveryPartner> {
  constructor() {
    super(DeliveryPartner);
  }
}
export default DeliveryPartnerRepository;
