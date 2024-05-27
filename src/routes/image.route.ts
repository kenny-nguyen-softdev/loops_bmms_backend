import { Router } from 'express';
import ImageController from '../app/controllers/image.controller';
import { AuthMiddleware } from '../app/middlewares';
import { initializeApp } from 'firebase/app';
import { firebaseConfig } from '../app/core/utils/firebase.config';
class ImageRoute {
  router = Router();
  imageController: ImageController;
  authMiddleware: AuthMiddleware;
  constructor() {
    this.imageController = new ImageController();
    this.authMiddleware = new AuthMiddleware();
    //Initialize a firebase application
    initializeApp(firebaseConfig);
    this.intializeRoutes();
  }
  intializeRoutes() {
    /**
     * @openapi
     * /api/images/{id}:
     *   get:
     *     tags:
     *       - /api/images - Images
     *     summary: Get a single image
     *     description: Retrieve a specific image by ID
     *     parameters:
     *       - in: path
     *         name: id
     *         required: true
     *         description: ID of the image to retrieve
     *         schema:
     *           type: integer
     *     responses:
     *       200:
     *         description: Image successfully retrieved
     *         content:
     *           application/json:
     *             schema:
     *                   $ref: '#/components/schemas/Image'
     *       404:
     *         description: Image not found
     *       500:
     *         description: Error occurred while retrieving the image
     */

    this.router.get('/:id', this.authMiddleware.handler(), this.imageController.find.bind(this.imageController));
    /**
     * @openapi
     * /api/images/{id}/v1:
     *   delete:
     *     tags:
     *       - /api/images - Images
     *     summary: Delete an image version 1
     *     description: Delete a specific image by ID version 1
     *     parameters:
     *       - in: path
     *         name: id
     *         required: true
     *         description: ID of the image to delete
     *         schema:
     *           type: integer
     *     responses:
     *       200:
     *         description: Image successfully deleted
     *       404:
     *         description: Image not found
     *       500:
     *         description: Error occurred while deleting the image
     */
    this.router.delete(
      '/:id/v1',
      this.authMiddleware.handler(),
      this.imageController.destroy.bind(this.imageController),
    );

    /**
     * @openapi
     * /api/images/{id}/v2:
     *   delete:
     *     tags:
     *       - /api/images - Images
     *     summary: Delete an image version 2
     *     description: Delete a specific image by ID version 2
     *     parameters:
     *       - in: path
     *         name: id
     *         required: true
     *         description: ID of the image to delete
     *         schema:
     *           type: integer
     *     responses:
     *       200:
     *         description: Image successfully deleted
     *       404:
     *         description: Image not found
     *       500:
     *         description: Error occurred while deleting the image
     */
    this.router.delete(
      '/:id/v2',
      this.authMiddleware.handler(),
      this.imageController.destroyV2.bind(this.imageController),
    );
  }
}
export default new ImageRoute().router;
