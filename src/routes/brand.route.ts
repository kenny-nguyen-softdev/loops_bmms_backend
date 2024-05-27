import { Router } from 'express';
import BrandController from '../app/controllers/brand.controller';
import { AuthMiddleware, ValidationMiddleware } from '../app/middlewares';
import { createBrandSchema, updateBrandSchema } from '../schemas';

class BrandRoute {
  router = Router();
  brandController: BrandController;
  validationMiddleware: ValidationMiddleware;
  authMiddleware: AuthMiddleware;
  constructor() {
    this.brandController = new BrandController();
    this.validationMiddleware = new ValidationMiddleware();
    this.authMiddleware = new AuthMiddleware();
    this.intializeRoutes();
  }
  intializeRoutes() {
    /**
     * @openapi
     * /api/brands:
     *   get:
     *     tags:
     *       - /api/brands - Brands
     *     summary: Get a list of brands
     *     description: Retrieve a list of all available brands
     *     responses:
     *       200:
     *         description: List of brands successfully retrieved
     *         content:
     *           application/json:
     *             schema:
     *               type: array
     *               items:
     *                 $ref: '#/components/schemas/GetListBrandsResponse'
     *       401:
     *         description: Unauthorized
     *       500:
     *         description: Error occurred while retrieving the list of brands
     */
    this.router.get('/', this.authMiddleware.handler(), this.brandController.index.bind(this.brandController));
    /**
     * @openapi
     * /api/brands/{id}:
     *   get:
     *     tags:
     *       - /api/brands - Brands
     *     summary: Get a single brand
     *     description: Retrieve a specific brand by ID
     *     parameters:
     *       - in: path
     *         name: id
     *         required: true
     *         description: ID of the brand to retrieve
     *         schema:
     *           type: integer
     *     responses:
     *       200:
     *         description: Brand successfully retrieved
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/GetOneBrandResponse'
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Brand not found
     *       500:
     *         description: Error occurred while retrieving the brand
     */
    this.router.get('/:id', this.authMiddleware.handler(), this.brandController.find.bind(this.brandController));
    /**
     * @openapi
     * /api/brands:
     *   post:
     *     tags:
     *       - /api/brands - Brands
     *     summary: Create a new brand
     *     description: Create a new brand with the provided details
     *     requestBody:
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/CreateBrandInput'
     *     responses:
     *       200:
     *         description: Brand successfully created
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/CreateBrandResponse'
     *       400:
     *         description: Invalid request body
     *       401:
     *         description: Unauthorized
     *       500:
     *         description: Error occurred while creating the brand
     */
    this.router.post(
      '/',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(createBrandSchema),
      this.brandController.create.bind(this.brandController),
    );
    /**
     * @openapi
     * /api/brands/{id}:
     *   put:
     *     tags:
     *       - /api/brands - Brands
     *     summary: Update a brand
     *     description: Update an existing brand with the provided details
     *     parameters:
     *       - in: path
     *         name: id
     *         required: true
     *         description: ID of the brand to update
     *         schema:
     *           type: integer
     *     requestBody:
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/UpdateBrandInput'
     *     responses:
     *       200:
     *         description: Brand successfully updated
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/UpdateBrandResponse'
     *       400:
     *         description: Invalid request body or brand not found
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Not found
     *       500:
     *         description: Error occurred while updating the brand
     */
    this.router.put(
      '/:id',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(updateBrandSchema),
      this.brandController.update.bind(this.brandController),
    );
    /**
     * @openapi
     * /api/brands/{id}:
     *   delete:
     *     tags:
     *       - /api/brands - Brands
     *     summary: Delete a brand
     *     description: Delete an existing brand by ID
     *     parameters:
     *       - in: path
     *         name: id
     *         required: true
     *         description: ID of the brand to delete
     *         schema:
     *           type: integer
     *     responses:
     *       200:
     *         description: Brand successfully deleted
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Brand not found
     *       500:
     *         description: Error occurred while deleting the brand
     */
    this.router.delete('/:id', this.authMiddleware.handler(), this.brandController.destroy.bind(this.brandController));
    /**
     * @openapi
     * /api/brands/reactivate/{id}:
     *   put:
     *     tags:
     *       - /api/brands - Brands
     *     summary: Reactivate a brand
     *     description: Reactivate a specific brand by ID
     *     parameters:
     *       - in: path
     *         name: id
     *         required: true
     *         description: ID of the brand to reactivate
     *         schema:
     *           type: integer
     *     responses:
     *       200:
     *         description: Brand successfully reactivated
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/UpdateBrandResponse'
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Brand not found
     *       500:
     *         description: Error occurred while reactivating the brand
     */
    this.router
      .route('/reactivate/:id')
      .put(this.authMiddleware.handler(), this.brandController.reactivate.bind(this.brandController));
  }
}
export default new BrandRoute().router;
