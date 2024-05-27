import winston from 'winston';
import { v4 } from 'uuid';

const logger = winston.createLogger({
  level: 'error',
  format: winston.format.simple(),
  defaultMeta: { correlationId: v4() },
});

export default logger;
