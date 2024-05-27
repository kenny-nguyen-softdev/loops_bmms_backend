import BaseRepository from '../../core/repositories/base/BaseRepository';
import { Tax } from '../../../models/Tax';
import { GetAllTaxsFilters, TaxInterface } from './tax-interface.repository';
import { TaxType } from '../../../models';

class TaxRepository extends BaseRepository<Tax> implements TaxInterface {
  constructor() {
    super(Tax);
  }
  async get(filters: GetAllTaxsFilters): Promise<Tax[] | []> {
    return await this.find({
      include: [
        {
          model: TaxType,
          ...(filters?.taxType && {
            where: {
              key: filters.taxType,
            },
          }),
        },
      ],
    });
  }
}
export default TaxRepository;
