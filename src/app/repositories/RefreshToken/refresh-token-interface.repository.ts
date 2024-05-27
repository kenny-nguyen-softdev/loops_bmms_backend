/* eslint-disable no-unused-vars */
import { RefreshToken } from '../../../models';

export interface RefreshTokenInterface {
  findByToken(token: string): Promise<RefreshToken | null>;
}
