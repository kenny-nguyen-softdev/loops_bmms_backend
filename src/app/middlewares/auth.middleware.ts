import passport from 'passport';
import { BaseMiddleware } from '../core/middlewares/base/BaseMiddleware';

class AuthMiddleware extends BaseMiddleware {
  constructor() {
    super();
  }

  protected authenticate() {
    const requireAuth = passport.authenticate('jwt', { session: false });
    return requireAuth;
  }

  public handler(): any {
    return this.authenticate();
  }
}
export default AuthMiddleware;
