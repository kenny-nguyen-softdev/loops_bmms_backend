import { Application, Request, Response } from 'express';
import swaggerJsdoc from 'swagger-jsdoc';
import swaggerUi from 'swagger-ui-express';
import logger from '../logger/logger';

const options: swaggerJsdoc.Options = {
  swaggerDefinition: {
    openapi: '3.0.0',
    info: {
      title: 'L.O.O.P.S BMMS API Documentation',
      version: '1.0.0',
      description: 'API documentation using Swagger',
    },
    components: {
      securitySchemes: {
        bearerAuth: {
          type: 'http',
          scheme: 'bearer',
          bearerFormat: 'JWT',
        },
      },
    },
    security: [
      {
        bearerAuth: [],
      },
    ],
  },
  apis: ['./src/routes/*.ts', './src/routes/*.route.ts', './src/schemas/*.ts', './src/schemas/**/*.schema.ts'],
};

const swaggerSpec = swaggerJsdoc(options);

function swaggerDocs(app: Application, port: number) {
  // Swagger page
  app.use('/api-docs', swaggerUi.serve, swaggerUi.setup(swaggerSpec, { swaggerOptions: { origin: 'localhost' } }));
  // Docs in JSON format
  app.get('/docs.json', (req: Request, res: Response) => {
    res.setHeader('Content-Type', 'application/json');
    res.send(swaggerSpec);
  });

  logger.info(`Docs available at http://localhost:${port}/api-docs`);
}

export default swaggerDocs;
