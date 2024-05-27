import { Application, urlencoded, json } from 'express';
import morgan from 'morgan';
import * as fs from 'fs';
import { WriteStream } from 'fs';
import * as path from 'path';
import helmet from 'helmet';
import winston from 'winston';
import Routes from './routes';
import cors from 'cors';
import { RateLimitMiddleware } from './app/middlewares';
import passport from 'passport';
import session from 'express-session';
import configurePassport from './app/core/auth/passport-config';
import { adminFirebaseConfig } from './app/core/utils/firebase.config';
import * as admin from 'firebase-admin';
export default class Server {
  constructor(app: Application) {
    this.config(app);
    new Routes(app);
  }

  public config(app: Application): void {
    app.use(cors());
    app.use(json());
    app.use(session({ secret: process.env.SESSION_SECRET_KEY || '', resave: true, saveUninitialized: true }));
    const accessLogStream: WriteStream = fs.createWriteStream(path.join(__dirname, './logs/access.log'), {
      flags: 'a',
    });
    app.use(passport.initialize());
    app.use(passport.session());
    configurePassport(passport);
    app.use(morgan('combined', { stream: accessLogStream }));
    app.use(urlencoded({ extended: true }));
    app.use(helmet());
    app.use(RateLimitMiddleware());
    admin.initializeApp(adminFirebaseConfig);
  }
}

process.on('beforeExit', function (err) {
  winston.error(JSON.stringify(err));
  console.error(err);
});
