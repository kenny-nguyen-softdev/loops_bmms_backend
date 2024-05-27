import { Router } from 'express';
import ServiceController from '../app/controllers/service.controller';
import multer from 'multer';
import { initializeApp } from 'firebase/app';
import { firebaseConfig } from '../app/core/utils/firebase.config';
import { AuthMiddleware, ValidationMiddleware } from '../app/middlewares';
import { createServiceSchema, updateServiceSchema } from '../schemas';

class ServiceRoute {
  router = Router();
  serviceController: ServiceController;
  authMiddleware: AuthMiddleware;
  validationMiddleware: ValidationMiddleware;
  upload: multer.Multer;
  constructor() {
    this.serviceController = new ServiceController();
    this.validationMiddleware = new ValidationMiddleware();
    this.authMiddleware = new AuthMiddleware();
    //Initialize a firebase application
    initializeApp(firebaseConfig);
    // Setting up multer as a middleware to grab photo uploads
    this.upload = multer({ storage: multer.memoryStorage() });
    this.intializeRoutes();
  }
  intializeRoutes() {
    /**
     * @openapi
     * /api/services:
     *   get:
     *     tags:
     *       - /api/services - Services
     *     summary: Get list of services
     *     description: Retrieves a list of all services
     *     responses:
     *       200:
     *         description: Successful operation
     *         content:
     *           application/json:
     *             schema:
     *               type: array
     *               items:
     *                 $ref: '#/components/schemas/GetService'
     *       500:
     *         description: Internal server error
     */
    this.router.get('/', this.authMiddleware.handler(), this.serviceController.index.bind(this.serviceController));

    /**
     * @openapi
     * /api/services/{id}:
     *   get:
     *     tags:
     *       - /api/services - Services
     *     summary: Get a service by ID
     *     parameters:
     *       - in: path
     *         name: id
     *         required: true
     *         description: The ID of the service to retrieve
     *         schema:
     *           type: integer
     *     responses:
     *       '200':
     *         description: Successful response
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/GetService'
     *       '404':
     *         description: Service not found
     */
    this.router.get('/:id', this.authMiddleware.handler(), this.serviceController.find.bind(this.serviceController));

    /**
     * @openapi
     * /api/services:
     *   post:
     *     tags:
     *       - /api/services - Services
     *     summary: Create a new service
     *     requestBody:
     *       required: true
     *       content:
     *         multipart/form-data:
     *           schema:
     *             type: object
     *             properties:
     *               files:
     *                 type: array
     *                 items:
     *                   type: string
     *                   format: binary
     *                   description: Array of files to upload
     *               data:
     *                 type: JSON
     *                 default: '{ "name": "inox", "categoryId": 1, "sku": "", "description": "", "costPrice": 300000, "salePrice": 500000, "wholesalePrice": 400000, "standardUnit": "tấm", "presignedUrls": [ { "write": "...", "filename": "2023/07/13/AlanMichaelRitchson       2023-7-13 23:37:6" } ] }'
     *                 description: JSON string containing service data
     *         application/json:
     *             schema:
     *               $ref: '#/components/schemas/CreateServiceInput'
     *     responses:
     *       '201':
     *         description: Successful response
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/CreateServiceResponse'
     *       '400':
     *         description: Bad request
     *       '500':
     *         description: Internal Server Error
     */
    this.router.post(
      '/',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(createServiceSchema),
      this.upload.array('files'),
      this.serviceController.create.bind(this.serviceController),
    );

    /**
     * @openapi
     * /api/services/{id}:
     *   put:
     *     tags:
     *       - /api/services - Services
     *     summary: Update a service by ID
     *     parameters:
     *       - in: path
     *         name: id
     *         type: integer
     *         required: true
     *         description: The ID of the service to update
     *     requestBody:
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/UpdateServiceRequest'
     *     responses:
     *       200:
     *         description: Successful response
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/UpdateServiceResponse'
     *       400:
     *         description: Bad request
     *       404:
     *         description: Service not found
     *       '500':
     *         description: Internal Server Error
     */
    this.router.put(
      '/:id',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(updateServiceSchema),
      this.serviceController.update.bind(this.serviceController),
    );

    /**
     * @openapi
     * /api/services/{id}:
     *   delete:
     *     tags:
     *       - /api/services - Services
     *     summary: Delete a service by ID
     *     parameters:
     *       - in: path
     *         name: id
     *         type: integer
     *         required: true
     *         description: The ID of the service to delete
     *     responses:
     *       200:
     *         description: Deleted Successful
     *       400:
     *         description: Bad request
     *       404:
     *         description: Service not found
     */
    this.router.delete(
      '/:id',
      this.authMiddleware.handler(),
      this.serviceController.destroy.bind(this.serviceController),
    );

    /**
     * @openapi
     * /api/services/reactivate/{id}:
     *   put:
     *     tags:
     *       - /api/services - Services
     *     summary: Reactivate a service by ID
     *     parameters:
     *       - in: path
     *         name: id
     *         type: integer
     *         required: true
     *         description: The ID of the service to reactivate
     *     responses:
     *       200:
     *         description: Successful response
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/ReactivateServiceResponse'
     *       400:
     *         description: Bad request
     *       404:
     *         description: Service not found
     */
    this.router.put(
      '/reactivate/:id',
      this.authMiddleware.handler(),
      this.serviceController.reactivate.bind(this.serviceController),
    );

    /**
     * @openapi
     * /api/services/{id}/images/v1/upload:
     *   post:
     *     tags:
     *       - /api/services - Services
     *     summary: Upload multiple images for a service by ID version 1
     *     parameters:
     *       - in: path
     *         name: id
     *         type: integer
     *         required: true
     *         description: The ID of the service
     *     requestBody:
     *       required: true
     *       content:
     *         multipart/form-data:
     *           schema:
     *             type: object
     *             properties:
     *               files:
     *                 type: array
     *                 items:
     *                   type: string
     *                   format: binary
     *     responses:
     *       201:
     *         description: Successful response
     *         content:
     *           application/json:
     *             schema:
     *               type: object
     *               items:
     *                  $ref: '#/components/schemas/Image'
     *       400:
     *         description: Bad request
     *       404:
     *         description: Service not found
     */
    this.router.post(
      '/:id/images/v1/upload',
      this.authMiddleware.handler(),
      this.upload.array('files'),
      this.serviceController.uploadImages.bind(this.serviceController),
    );

    /**
     * @openapi
     * /api/services/{id}/images/v1/delete:
     *   delete:
     *     tags:
     *       - /api/services - Services
     *     summary: Delete all images for a service by ID version 1
     *     parameters:
     *       - in: path
     *         name: id
     *         type: integer
     *         required: true
     *         description: The ID of the service
     *     responses:
     *       200:
     *         description: Deleted Successful
     *       400:
     *         description: Bad request
     *       404:
     *         description: Service not found
     */
    this.router.delete(
      '/:id/images/v1/delete',
      this.authMiddleware.handler(),
      this.serviceController.destroyImages.bind(this.serviceController),
    );

    /**
     * @openapi
     * /api/services/{id}/images/v2/delete:
     *   delete:
     *     tags:
     *       - /api/services - Services
     *     summary: Delete all images for a service by ID version 2
     *     parameters:
     *       - in: path
     *         name: id
     *         type: integer
     *         required: true
     *         description: The ID of the service
     *     responses:
     *       200:
     *         description: Deleted Successful
     *       400:
     *         description: Bad request
     *       404:
     *         description: Service not found
     */
    this.router.delete(
      '/:id/images/v2/delete',
      this.authMiddleware.handler(),
      this.serviceController.destroyImagesV2.bind(this.serviceController),
    );

    /**
     * @openapi
     * /api/services/presigned-url/images/v2:
     *   post:
     *     tags:
     *       - /api/services - Services
     *     summary: Generate pre-sign url for multiple images version 2
     *     requestBody:
     *       required: true
     *       content:
     *         multipart/form-data:
     *           schema:
     *             type: object
     *             properties:
     *               files:
     *                 type: array
     *                 items:
     *                   type: string
     *                   format: binary
     *     responses:
     *       201:
     *         description: Successful response
     *         content:
     *           application/json:
     *             schema:
     *                  $ref: '#/components/schemas/PreSignUrlResponse'
     *       400:
     *         description: Bad request
     *       404:
     *         description: Service not found
     */
    this.router.post(
      '/presigned-url/images/v2',
      this.authMiddleware.handler(),
      this.upload.array('files'),
      this.serviceController.generatePresignedUrlImagesV2.bind(this.serviceController),
    );

    /**
     * @openapi
     * /api/services/{id}/images/v2/upload:
     *   put:
     *     tags:
     *       - /api/services - Services
     *     summary: Upload multiple images for a service by ID version 2
     *     parameters:
     *       - in: path
     *         name: id
     *         type: integer
     *         required: true
     *         description: The ID of the service
     *     requestBody:
     *       required: true
     *       content:
     *         multipart/form-data:
     *           schema:
     *             type: object
     *             properties:
     *               files:
     *                 type: array
     *                 items:
     *                   type: string
     *                   format: binary
     *               data:
     *                 type: JSON
     *                 default: '{}'
     *                 description: JSON string containing pre-sign urls to upload images
     *     responses:
     *       201:
     *         description: Successful response
     *         content:
     *           application/json:
     *             schema:
     *                $ref: '#/components/schemas/UploadServiceImagesV2Response'
     *       400:
     *         description: Bad request
     *       404:
     *         description: Service not found
     */
    this.router.put(
      '/:id/images/v2/upload',
      this.authMiddleware.handler(),
      this.upload.array('files'),
      this.serviceController.uploadImagesV2.bind(this.serviceController),
    );
  }
}
export default new ServiceRoute().router;
