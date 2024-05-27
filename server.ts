import dotenv from 'dotenv';
dotenv.config();
import express from 'express';
import { Application } from 'express';

import Server from './src/index';
import swaggerDocs from './src/app/core/utils/swagger';

const app: Application = express();
const server: Server = new Server(app);
const port: number = process.env.PORT ? parseInt(process.env.PORT, 10) : 3000;

app
  .listen(port, 'localhost', function () {
    console.info(`Server running on : http://localhost:${port}`);
  })
  .on('error', (err: any) => {
    if (err.code === 'EADDRINUSE') {
      console.log('server startup error: address already in use');
    } else {
      console.log(err);
    }
  });

swaggerDocs(app, port);
