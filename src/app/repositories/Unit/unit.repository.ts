import BaseRepository from '../../core/repositories/base/BaseRepository';
import { Unit } from '../../../models/Unit';
import { GetAllUnitsFilters, UnitInterface } from './unit-interface.repository';
import { UnitType } from '../../../models';

class UnitRepository extends BaseRepository<Unit> implements UnitInterface {
  constructor() {
    super(Unit);
  }
  async get(filters: GetAllUnitsFilters): Promise<Unit[] | []> {
    return await this.find({
      include: [
        {
          model: UnitType,
          ...(filters?.unitType && {
            where: {
              key: filters.unitType,
            },
          }),
        },
      ],
    });
  }
}
export default UnitRepository;
