import { Router } from 'express';
import CategoryController from '../app/controllers/category.controller';
import { AuthMiddleware, ValidationMiddleware } from '../app/middlewares';
import { createCategorySchema, updateCategorySchema } from '../schemas';

class CategoryRoute {
  router = Router();
  categoryController: CategoryController;
  validationMiddleware: ValidationMiddleware;
  authMiddleware: AuthMiddleware;
  constructor() {
    this.categoryController = new CategoryController();
    this.validationMiddleware = new ValidationMiddleware();
    this.authMiddleware = new AuthMiddleware();
    this.intializeRoutes();
  }
  intializeRoutes() {
    /**
     * @openapi
     * /api/categories:
     *   get:
     *     tags:
     *       - /api/categories - Categories
     *     summary: Get list of categories
     *     description: Retrieves a list of all categories
     *     responses:
     *       200:
     *         description: Successful operation
     *         content:
     *           application/json:
     *             schema:
     *               type: array
     *               items:
     *                 $ref: '#/components/schemas/GetListCategoryResponse'
     *       401:
     *         description: Unauthorized
     *       500:
     *         description: Internal server error
     */
    this.router
      .route('/')
      .get(this.authMiddleware.handler(), this.categoryController.index.bind(this.categoryController));
    /**
     * @openapi
     * /api/categories/{id}:
     *   get:
     *     tags:
     *       - /api/categories - Categories
     *     summary: Get a single category
     *     description: Retrieves a single category by its ID
     *     parameters:
     *       - in: path
     *         name: id
     *         required: true
     *         schema:
     *           type: integer
     *         description: ID of the category to retrieve
     *     responses:
     *       200:
     *         description: Successful operation
     *         content:
     *           application/json:
     *             schema:
     *                $ref: '#/components/schemas/GetOneCategoryResponse'
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Category not found
     *       500:
     *         description: Internal server error
     */
    this.router
      .route('/:id')
      .get(this.authMiddleware.handler(), this.categoryController.find.bind(this.categoryController));
    /**
     * @openapi
     * /api/categories:
     *   post:
     *     tags:
     *       - /api/categories - Categories
     *     summary: Create a new category
     *     description: Create a new category with the provided details
     *     requestBody:
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/CreateCategoryInput'
     *     responses:
     *       200:
     *         description: New category created successfully
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/CreateCategoryResponse'
     *       400:
     *         description: Invalid request body
     *       401:
     *         description: Unauthorized
     *       500:
     *         description: Failed to create a new category
     */
    this.router
      .route('/')
      .post(
        this.authMiddleware.handler(),
        this.validationMiddleware.handler(createCategorySchema),
        this.categoryController.create.bind(this.categoryController),
      );
    /**
     * @openapi
     * /api/categories/{id}:
     *   put:
     *     tags:
     *       - /api/categories - Categories
     *     summary: Update a category
     *     description: Update an existing category with the provided details
     *     parameters:
     *       - in: path
     *         name: id
     *         schema:
     *           type: integer
     *         required: true
     *         description: ID of the category to update
     *     requestBody:
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/UpdateCategoryInput'
     *     responses:
     *       200:
     *         description: Category updated successfully
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/UpdateCategoryResponse'
     *       400:
     *         description: Invalid request body or category ID
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Category not found
     *       500:
     *         description: Failed to update the category
     */
    this.router
      .route('/:id')
      .put(
        this.authMiddleware.handler(),
        this.validationMiddleware.handler(updateCategorySchema),
        this.categoryController.update.bind(this.categoryController),
      );
    /**
     * @openapi
     * /api/categories/{id}:
     *   delete:
     *     tags:
     *       - /api/categories - Categories
     *     summary: Delete a category
     *     description: Delete an existing category by its ID
     *     parameters:
     *       - in: path
     *         name: id
     *         schema:
     *           type: integer
     *         required: true
     *         description: ID of the category to delete
     *     responses:
     *       200:
     *         description: Category deleted successfull
     *       400:
     *         description: Invalid category ID
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Category not found
     *       500:
     *         description: Failed to delete the category
     */
    this.router
      .route('/:id')
      .delete(this.authMiddleware.handler(), this.categoryController.destroy.bind(this.categoryController));
    /**
     * @openapi
     * /api/categories/reactivate/{id}:
     *   put:
     *     tags:
     *       - /api/categories - Categories
     *     summary: Reactivate a category
     *     description: Reactivate a specific category by id
     *     parameters:
     *       - in: path
     *         name: id
     *         required: true
     *         description: ID of the category to reactivate
     *         schema:
     *           type: integer
     *     responses:
     *       200:
     *         description: Category successfully reactivated
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/UpdateCategoryResponse'
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Category not found
     *       500:
     *         description: Error occurred while reactivating the category
     */
    this.router
      .route('/reactivate/:id')
      .put(this.authMiddleware.handler(), this.categoryController.reactivate.bind(this.categoryController));
  }
}
export default new CategoryRoute().router;
