import { Router } from 'express';
import ProductController from '../app/controllers/product.controller';
import { AuthMiddleware, ValidationMiddleware } from '../app/middlewares';
import { createProductSchema, updateProductSchema } from '../schemas';
import { initializeApp } from 'firebase/app';
import { firebaseConfig } from '../app/core/utils/firebase.config';
import multer from 'multer';
class ProductRoute {
  router = Router();
  productController: ProductController;
  validationMiddleware: ValidationMiddleware;
  authMiddleware: AuthMiddleware;
  upload: multer.Multer;
  constructor() {
    this.productController = new ProductController();
    this.validationMiddleware = new ValidationMiddleware();
    this.authMiddleware = new AuthMiddleware();
    //Initialize a firebase application
    initializeApp(firebaseConfig);
    // Setting up multer as a middleware to grab photo uploads
    this.upload = multer({ storage: multer.memoryStorage() });
    this.intializeRoutes();
  }
  intializeRoutes() {
    this.router.get('/public', this.productController.index.bind(this.productController));
    /**
     * @openapi
     * /api/products:
     *   get:
     *     tags:
     *       - /api/products - Products
     *     summary: Get list of products
     *     description: Retrieves a list of all products
     *     responses:
     *       200:
     *         description: Successful operation
     *         content:
     *           application/json:
     *             schema:
     *               type: array
     *               items:
     *                 $ref: '#/components/schemas/GetProduct'
     *       500:
     *         description: Internal server error
     */
    this.router.get('/', this.authMiddleware.handler(), this.productController.index.bind(this.productController));
    /**
     * @openapi
     * /api/products/{id}:
     *   get:
     *     tags:
     *       - /api/products - Products
     *     summary: Get one exist product
     *     description: Retrieve a specific product by id
     *     parameters:
     *       - in: path
     *         name: id
     *         required: true
     *         description: id of the product to retrieve
     *         schema:
     *           type: integer
     *     responses:
     *       200:
     *         description: product successfully retrieved
     *         content:
     *           application/json:
     *             schema:
     *                 $ref: '#/components/schemas/GetProduct'
     *       500:
     *         description: Internal server error
     */
    this.router.get('/:id', this.authMiddleware.handler(), this.productController.find.bind(this.productController));
    /**
     * @openapi
     * /api/products:
     *   post:
     *     tags:
     *       - /api/products - Products
     *     summary: Create a new product
     *     description: Creates a new product with the provided information
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
     *                 default: '{ "name": "Inox 301", "categoryId": null, "brandId": null, "sku": "", "barcode": "", "description": "", "costPrice": 300000, "salePrice": 500000, "wholesalePrice": 400000, "inventoryQuantity": 25, "standardUnit": "tấm", "weight": 2, "weightUnitId": null, "width": 3.3, "length": 5.2, "sizeUnitId": null, "isActive": true, "presignedUrls": [ { "write": "...", "filename": "2023/07/13/AlanMichaelRitchson       2023-7-13 23:57:12" } ] }'
     *                 description: JSON data containing additional fields
     *         application/json:
     *             schema:
     *               $ref: '#/components/schemas/CreateProductInput'
     *     responses:
     *       200:
     *         description: Successful operation
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/CreateProductResponse'
     *       400:
     *         description: Bad request
     *       500:
     *         description: Internal server error
     */
    this.router.post(
      '/',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(createProductSchema),
      this.upload.array('files'),
      this.productController.create.bind(this.productController),
    );
    /**
     * @openapi
     * /api/products/{id}:
     *   put:
     *     tags:
     *       - /api/products - Products
     *     summary: Update a product
     *     parameters:
     *       - in: path
     *         name: id
     *         schema:
     *           type: integer
     *         required: true
     *         description: The ID of the product
     *     requestBody:
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/UpdateProductInput'
     *     responses:
     *       200:
     *         description: Successful response
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/UpdateProductResponse'
     *       400:
     *         description: Bad request
     *       404:
     *         description: Product not found
     */
    this.router.put(
      '/:id',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(updateProductSchema),
      this.productController.update.bind(this.productController),
    );
    /**
     * @openapi
     * /api/products/{id}:
     *   delete:
     *     tags:
     *       - /api/products - Products
     *     summary: Delete a product
     *     parameters:
     *       - in: path
     *         name: id
     *         schema:
     *           type: integer
     *         required: true
     *         description: The ID of the product
     *     responses:
     *       200:
     *         description: Deleted Successful
     *       400:
     *         description: Bad request
     *       404:
     *         description: Product not found
     */
    this.router.delete(
      '/:id',
      this.authMiddleware.handler(),
      this.productController.destroy.bind(this.productController),
    );
    /**
     * @openapi
     * /api/products/reactivate/{id}:
     *   put:
     *     tags:
     *       - /api/products - Products
     *     summary: Reactivate a product
     *     parameters:
     *       - in: path
     *         name: id
     *         schema:
     *           type: integer
     *         required: true
     *         description: The ID of the product
     *     responses:
     *       200:
     *         description: Successful response
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/ReactiveProductResponse'
     *       400:
     *         description: Bad request
     *       404:
     *         description: Product not found
     */
    this.router.put(
      '/reactivate/:id',
      this.authMiddleware.handler(),
      this.productController.reactivate.bind(this.productController),
    );
    /**
     * @swagger
     * /api/products/{id}/images:
     *   post:
     *     tags:
     *       - /api/products - Products
     *     summary: Upload multiple images for a product
     *     parameters:
     *       - in: path
     *         name: id
     *         type: integer
     *         required: true
     *         description: The ID of the product
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
     *       200:
     *         description: Successful response
     *         content:
     *           application/json:
     *             schema:
     *               type: array
     *               items:
     *                  $ref: '#/components/schemas/Image'
     *       400:
     *         description: Bad request
     */
    this.router.post(
      '/:id/images/v1/upload',
      this.authMiddleware.handler(),
      this.upload.array('files'),
      this.productController.uploadImages.bind(this.productController),
    );
    /**
     * @openapi
     * /api/products/{id}/images:
     *   delete:
     *     tags:
     *       - /api/products - Products
     *     summary: Delete all images by product ID
     *     parameters:
     *       - in: path
     *         name: id
     *         schema:
     *           type: integer
     *         required: true
     *         description: The ID of the product
     *     responses:
     *       200:
     *         description: Successful response
     *         content:
     *           application/json:
     *             schema:
     *               type: object
     *               properties:
     *                 deletedImages:
     *                   type: array
     *                   items:
     *                     type: string
     *                   description: The list of deleted image names
     *       404:
     *         description: No images found for the product
     */
    this.router.delete(
      '/:id/images/v1/delete',
      this.authMiddleware.handler(),
      this.productController.destroyImages.bind(this.productController),
    );

    /**
     * @openapi
     * /api/products/{id}/images/v2/delete:
     *   delete:
     *     tags:
     *       - /api/products - Products
     *     summary: Delete all images for a product by ID version 2
     *     parameters:
     *       - in: path
     *         name: id
     *         type: integer
     *         required: true
     *         description: The ID of the product
     *     responses:
     *       200:
     *         description: Deleted Successful
     *       400:
     *         description: Bad request
     *       404:
     *         description: product not found
     */
    this.router.delete(
      '/:id/images/v2/delete',
      this.authMiddleware.handler(),
      this.productController.destroyImagesV2.bind(this.productController),
    );

    /**
     * @openapi
     * /api/products/presigned-url/images/v2:
     *   post:
     *     tags:
     *       - /api/products - Products
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
     *         description: product not found
     */
    this.router.post(
      '/presigned-url/images/v2',
      this.authMiddleware.handler(),
      this.upload.array('files'),
      this.productController.generatePresignedUrlImagesV2.bind(this.productController),
    );

    /**
     * @openapi
     * /api/products/{id}/images/v2/upload:
     *   put:
     *     tags:
     *       - /api/products - Products
     *     summary: Upload multiple images for a product by ID version 2
     *     parameters:
     *       - in: path
     *         name: id
     *         type: integer
     *         required: true
     *         description: The ID of the product
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
     *                $ref: '#/components/schemas/UploadProductImagesV2Response'
     *       400:
     *         description: Bad request
     *       404:
     *         description: Product not found
     */
    this.router.put(
      '/:id/images/v2/upload',
      this.authMiddleware.handler(),
      this.upload.array('files'),
      this.productController.uploadImagesV2.bind(this.productController),
    );
  }
}
export default new ProductRoute().router;
