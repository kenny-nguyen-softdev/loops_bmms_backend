import { Router } from 'express';
import { AuthMiddleware, ValidationMiddleware } from '../app/middlewares';
import ComboController from '../app/controllers/combo.controller';
import { createComboSchema, updateComboSchema } from '../schemas';
import multer from 'multer';
import { initializeApp } from 'firebase/app';
import { firebaseConfig } from '../app/core/utils/firebase.config';

class ComboRoute {
  router = Router();
  comboController: ComboController;
  authMiddleware: AuthMiddleware;
  validationMiddleware: ValidationMiddleware;
  upload: multer.Multer;
  constructor() {
    this.comboController = new ComboController();
    this.authMiddleware = new AuthMiddleware();
    this.validationMiddleware = new ValidationMiddleware();
    //Initialize a firebase application
    initializeApp(firebaseConfig);
    // Setting up multer as a middleware to grab photo uploads
    this.upload = multer({ storage: multer.memoryStorage() });
    this.initializeRoute();
  }
  initializeRoute() {
    /**
     * @openapi
     * /api/combos:
     *   get:
     *     summary: Get all combos
     *     description: Retrieve a list of all combos based on the provided filters.
     *     tags:
     *       - /api/combos - Combos
     *     parameters:
     *       - in: query
     *         name: include
     *         description: The include of the combo group to filter combos.(Category, Brand, WeightUnit, InputTax, OutputTax, Images)
     *         type: string
     *       - in: query
     *         name: orderBy
     *         description: The order in which the results should be sorted. Multiple fields can be separated by '|' (pipe) and can include an optional sort direction (e.g., 'field1,asc|field2,desc').
     *         type: string
     *       - in: query
     *         name: limit
     *         description: Limit the number of results returned.
     *         type: integer
     *       - in: query
     *         name: id!
     *         description: Filters the results where 'id' is not equal to the specified value.
     *         type: string
     *       - in: query
     *         name: id{}
     *         description: Filters the results where 'id' is in the specified array (e.g., [5,66] -> get combo have 'id' from 5-66).
     *         type: string
     *       - in: query
     *         name: id{notin}
     *         description: Filters the results where 'id' is not in the specified array (e.g., [5,66] -> get combo have 'id' not in 5-66).
     *         type: string
     *       - in: query
     *         name: id{gt}
     *         description: Filters the results where 'id' is greater than the specified value.
     *         type: string
     *       - in: query
     *         name: id{gte}
     *         description: Filters the results where 'id' is greater than or equal to the specified value.
     *         type: string
     *       - in: query
     *         name: id{lt}
     *         description: Filters the results where 'id' is less than the specified value.
     *         type: string
     *       - in: query
     *         name: id{lte}
     *         description: Filters the results where 'id' is less than or equal to the specified value.
     *         type: string
     *     responses:
     *       200:
     *         description: Successfully retrieved the list of combos.
     *         content:
     *           application/json:
     *             schema:
     *               type: array
     *               items:
     *                 $ref: '#/components/schemas/Combo'
     *       401:
     *         description: Unauthorized
     *       500:
     *         description: Internal server error
     */
    this.router.route('/').get(this.authMiddleware.handler(), this.comboController.index.bind(this.comboController));
    /**
     * @openapi
     * /api/combos/{id}:
     *   get:
     *     summary: Get one combo
     *     description: Retrieve a combo by id based on the provided filters.
     *     tags:
     *       - /api/combos - Combos
     *     parameters:
     *       - in: query
     *         name: include
     *         description: The include of the combo group to filter combos.(Category, Brand, WeightUnit, InputTax, OutputTax, Images)
     *         type: string
     *     responses:
     *       200:
     *         description: Successfully retrieved a combo.
     *         content:
     *           application/json:
     *             schema:
     *                 $ref: '#/components/schemas/Combo'
     *       401:
     *         description: Unauthorized
     *       500:
     *         description: Internal server error
     */
    this.router.route('/:id').get(this.authMiddleware.handler(), this.comboController.find.bind(this.comboController));
    /**
     * @openapi
     * /api/combos:
     *   post:
     *     summary: Create a new combo
     *     description: Create a new combo with the provided data.
     *     tags:
     *       - /api/combos - Combos
     *     requestBody:
     *       description: The data to create a new combo.
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
     *                 default: '{ "categoryId": 1, "brandId": 1, "sku": "string", "barcode": "KT003", "name": "Combo1", "description": "han cua sat", "costPrice": 555, "salePrice": 99, "wholesalePrice": 85, "standardUnit": "piece", "weight": 5, "weightUnitId": null, "isActive": true, "isConsistOfSalePrice": false, "inputTaxId": null, "outputTaxId": null, "productItems": [ { "id": 3, "quantity": 22 }, { "id": 4, "quantity": 44 } ], "serviceItems": [ { "id": 2, "quantity": 11 }, { "id": 3, "quantity": 13 } ], "presignedUrls": [ { "write": "", "filename": "" } ] }'
     *                 description: JSON data containing additional fields
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/CreateComboInput'
     *     responses:
     *       201:
     *         description: Successfully created a new combo.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/Combo'
     *       400:
     *         description: Bad Request - Invalid request body.
     *       401:
     *         description: Unauthorized
     *       500:
     *         description: Internal server error
     */
    this.router.post(
      '/',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(createComboSchema),
      this.upload.array('files'),
      this.comboController.create.bind(this.comboController),
    );
    /**
     * @openapi
     * /api/combos/{id}:
     *   put:
     *     summary: Update a combo
     *     description: Update an existing combo with the provided data.
     *     tags:
     *       - /api/combos - Combos
     *     parameters:
     *       - in: path
     *         name: id
     *         description: The ID of the combo to update.
     *         required: true
     *         schema:
     *           type: integer
     *     requestBody:
     *       description: The data to update the existing combo.
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/UpdateComboInput'
     *     responses:
     *       200:
     *         description: Successfully updated the combo.
     *         content:
     *           application/json:
     *             schema:
     *               type: object
     *               properties:
     *                 updatedCombo:
     *                   $ref: '#/components/schemas/Combo'
     *       400:
     *         description: Bad Request - Invalid request body.
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Combo not found.
     *       500:
     *         description: Internal server error
     */
    this.router.put(
      '/:id',
      this.authMiddleware.handler(),
      this.validationMiddleware.handler(updateComboSchema),
      this.comboController.update.bind(this.comboController),
    );
    /**
     * @openapi
     * /api/combos/reactivate/{id}:
     *   put:
     *     summary: Reactivate a combo
     *     description: Reactivate a deactivated combo.
     *     tags:
     *       - /api/combos - Combos
     *     parameters:
     *       - in: path
     *         name: id
     *         description: The ID of the combo to reactivate.
     *         required: true
     *         schema:
     *           type: integer
     *     responses:
     *       200:
     *         description: Successfully reactivated the combo.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/Combo'
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Combo not found.
     *       500:
     *         description: Internal server error
     */
    this.router.put(
      '/reactivate/:id',
      this.authMiddleware.handler(),
      this.comboController.reactivate.bind(this.comboController),
    );
    this.router.delete('/:id', this.authMiddleware.handler(), this.comboController.destroy.bind(this.comboController));
    /**
     * @openapi
     * /api/combos/{id}:
     *   delete:
     *     summary: Delete a combo
     *     description: Delete a combo by its ID.
     *     tags:
     *       - /api/combos - Combos
     *     parameters:
     *       - in: path
     *         name: id
     *         description: The ID of the combo to delete.
     *         required: true
     *         schema:
     *           type: integer
     *     responses:
     *       200:
     *         description: Successfully deleted the combo.
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Combo not found.
     *       500:
     *         description: Internal server error
     */
    this.router.put(
      '/:id/images/upload',
      this.authMiddleware.handler(),
      this.upload.array('files'),
      this.comboController.uploadImages.bind(this.comboController),
    );
    /**
     * @openapi
     * /api/combos/{id}/images/delete:
     *   delete:
     *     summary: Delete all images of a combo by ID
     *     description: Delete all images associated with a combo by its ID.
     *     tags:
     *       - /api/combos - Combos
     *     parameters:
     *       - in: path
     *         name: id
     *         description: The ID of the combo whose images will be deleted.
     *         required: true
     *         schema:
     *           type: integer
     *     responses:
     *       200:
     *         description: Successfully deleted all images of the combo.
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: Combo not found or no images found for the combo.
     *       500:
     *         description: Internal server error
     */
    this.router.delete(
      '/:id/images/delete',
      this.authMiddleware.handler(),
      this.comboController.destroyImages.bind(this.comboController),
    );
    /**
     * @openapi
     * /api/combos/presigned-url/images:
     *   post:
     *     summary: Generate presignedUrls for uploading images
     *     description: Generate presignedUrls that can be used to upload images for combos.
     *     tags:
     *       - /api/combos - Combos
     *     requestBody:
     *       description: Images to be uploaded
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
     *         description: Successfully generated presignedUrls for images.
     *         content:
     *           application/json:
     *             schema:
     *                  $ref: '#/components/schemas/PreSignUrlResponse'
     *       401:
     *         description: Unauthorized
     *       500:
     *         description: Internal server error
     */
    this.router.post(
      '/presigned-url/images',
      this.authMiddleware.handler(),
      this.upload.array('files'),
      this.comboController.generatePresignedUrlImages.bind(this.comboController),
    );
  }
}

export default new ComboRoute().router;
