import BaseRepository from '../../core/repositories/base/BaseRepository';
import { RefreshToken } from '../../../models/RefreshToken';
import { RefreshTokenInterface } from './refresh-token-interface.repository';

class RefreshTokenRepository extends BaseRepository<RefreshToken> implements RefreshTokenInterface {
  constructor() {
    super(RefreshToken);
  }

  public async findByToken(token: string): Promise<RefreshToken | null> {
    return await this.findOneOrFail({
      where: {
        token,
      },
    });
  }
}
export default RefreshTokenRepository;
