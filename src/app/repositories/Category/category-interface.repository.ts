/* eslint-disable no-unused-vars */
import { Category } from '../../../models';

export interface CategoryInterface {
  get(): Promise<Category[] | null>;
}
