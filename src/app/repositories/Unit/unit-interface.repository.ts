/* eslint-disable no-unused-vars */
import { Unit } from '../../../models';

export interface GetAllUnitsFilters {
  unitType: string;
}

export interface UnitInterface {
  get(filters: GetAllUnitsFilters): Promise<Unit[] | []>;
}
