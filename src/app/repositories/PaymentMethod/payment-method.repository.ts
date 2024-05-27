import BaseRepository from '../../core/repositories/base/BaseRepository';
import { PaymentMethod } from '../../../models/PaymentMethod';

class PaymentMethodRepository extends BaseRepository<PaymentMethod> {
  constructor() {
    super(PaymentMethod);
  }
}
export default PaymentMethodRepository;
