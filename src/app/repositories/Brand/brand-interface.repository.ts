import { Brand } from '../../../models';

export interface BrandInterface {
  get(): Promise<Brand[] | null>;
}
