import BaseRepository from '../../core/repositories/base/BaseRepository';
import { Brand } from '../../../models/Brand';
import { BrandInterface } from './brand-interface.repository';

class BrandRepository extends BaseRepository<Brand> implements BrandInterface {
  constructor() {
    super(Brand);
  }
  async get(): Promise<Brand[] | null> {
    return await this.model.findAll({
      order: [['createdAt', 'DESC']],
    });
  }
}
export default BrandRepository;
