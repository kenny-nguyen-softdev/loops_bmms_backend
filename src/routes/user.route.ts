import { Router } from 'express';
import UserController from '../app/controllers/user.controller';
import { AuthMiddleware, ValidationMiddleware } from '../app/middlewares';
import { createUserSchema, updateUserSchema } from '../schemas';
import updatePasswordSchema from '../schemas/User/update-password.schema';
import multer from 'multer';
import { initializeApp } from 'firebase/app';
import { firebaseConfig } from '../app/core/utils/firebase.config';

class UserRoute {
  router = Router();
  userController: UserController;
  authMiddleware: AuthMiddleware;
  validationMiddleware: ValidationMiddleware;
  upload: multer.Multer;
  constructor() {
    this.userController = new UserController();
    this.authMiddleware = new AuthMiddleware();
    this.validationMiddleware = new ValidationMiddleware();
    //Initialize a firebase application
    initializeApp(firebaseConfig);
    // Setting up multer as a middleware to grab photo uploads
    this.upload = multer({ storage: multer.memoryStorage() });
    this.intializeRoutes();
  }
  intializeRoutes() {
    /**
     * @openapi
     * /api/users:
     *  get:
     *     tags:
     *     - /api/users - User
     *     summary: Get all users
     *     description: Response all users list
     *     responses:
     *       200:
     *         description: get all users successfully
     *       500:
     *         description: get all users failed
     */
    this.router.route('/').get(this.authMiddleware.handler(), this.userController.index.bind(this.userController));

    /**
     * @openapi
     * /api/users/{id}:
     *  get:
     *     tags:
     *     - /api/users - User
     *     summary: Get one existing user
     *     description: Response one existing user
     *     parameters:
     *      - name: id
     *        in: path
     *        description: The id of the user
     *        required: true
     *     responses:
     *       200:
     *         description: get one existing user successfully
     *       404:
     *         description: user not found
     *       500:
     *         description: get one existing user failed
     */
    this.router.route('/:id').get(this.authMiddleware.handler(), this.userController.find.bind(this.userController));

    /**
     * @openapi
     * /api/users:
     *  post:
     *     tags:
     *     - /api/users - User
     *     summary: Create new user
     *     description: Response one new user
     *     requestBody:
     *        required: true
     *        content:
     *          application/json:
     *            schema:
     *              $ref: '#/components/schemas/CreateUserInput'
     *     responses:
     *       200:
     *         description: created user successfully
     *         content:
     *          application/json:
     *            schema:
     *              $ref: '#/components/schemas/User'
     *       400:
     *         description: bad request
     *       500:
     *         description: created user failed
     */
    this.router
      .route('/')
      .post(
        this.authMiddleware.handler(),
        this.validationMiddleware.handler(createUserSchema),
        this.userController.create.bind(this.userController),
      );

    /**
     * @openapi
     * /api/users/{id}:
     *  put:
     *     tags:
     *     - /api/users - User
     *     summary: Update one existing user
     *     description: Response one updated user
     *     parameters:
     *      - name: id
     *        in: path
     *        description: The id of the user
     *        required: true
     *     requestBody:
     *        required: true
     *        content:
     *          application/json:
     *            schema:
     *              $ref: '#/components/schemas/UpdateUserInput'
     *     responses:
     *       200:
     *         description: update user successfully
     *         requestBody:
     *          required: true
     *          content:
     *            application/json:
     *              schema:
     *                $ref: '#/components/schemas/UpdateUserResponse'
     *       404:
     *         description: user not found
     *       400:
     *         description: bad request
     *       500:
     *         description: get all users failed
     */
    this.router
      .route('/:id')
      .put(
        this.authMiddleware.handler(),
        this.validationMiddleware.handler(updateUserSchema),
        this.userController.update.bind(this.userController),
      );

    /**
     * @openapi
     * /api/users/{id}:
     *  delete:
     *     tags:
     *     - /api/users - User
     *     summary: Delete one existing user
     *     description: Response the result is success or failed
     *     parameters:
     *      - name: id
     *        in: path
     *        description: The id of the user
     *        required: true
     *     responses:
     *       200:
     *         description: deleted user successfully
     *       404:
     *         description: user not found
     *       500:
     *         description: deleted user failed
     */
    this.router
      .route('/:id')
      .delete(this.authMiddleware.handler(), this.userController.destroy.bind(this.userController));
    /**
     * @openapi
     * /api/users/{id}/password:
     *   put:
     *     summary: Update user's password
     *     description: Update the password for an existing user based on the provided ID.
     *     tags:
     *       - /api/users - User
     *     parameters:
     *       - name: id
     *         in: path
     *         description: The ID of the user to update the password for.
     *         required: true
     *         schema:
     *           type: integer
     *     requestBody:
     *       description: User's password update details.
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             $ref: '#/components/schemas/UpdateUserPasswordInput'
     *     responses:
     *       200:
     *         description: Successfully updated the user's password.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/User'
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: User not found
     *       500:
     *         description: Internal server error
     */
    this.router
      .route('/:id/password')
      .put(
        this.authMiddleware.handler(),
        this.validationMiddleware.handler(updatePasswordSchema),
        this.userController.updatePassword.bind(this.userController),
      );

    /**
     * @openapi
     * /api/users/presigned-url/images:
     *   post:
     *     summary: Generate presignedUrls for uploading images
     *     description: Generate presignedUrls that can be used to upload images for users.
     *     tags:
     *       - /api/users - User
     *     requestBody:
     *       description: Images to be uploaded
     *       required: true
     *       content:
     *         multipart/form-data:
     *           schema:
     *             type: object
     *             properties:
     *               files:
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
      this.upload.single('file'),
      this.userController.generatePresignedUrlImage.bind(this.userController),
    );
    /**
     * @openapi
     * /api/users/{userId}/images/upload:
     *   put:
     *     summary: Upload images for a user
     *     description: Upload images for a user using presigned URLs.
     *     tags:
     *       - /api/users - User
     *     parameters:
     *       - name: userId
     *         in: path
     *         description: ID of the user
     *         required: true
     *         schema:
     *           type: integer
     *     requestBody:
     *       content:
     *         multipart/form-data:
     *           schema:
     *             type: object
     *             properties:
     *               data:
     *                 type: string
     *                 description: JSON string containing presigned URLs
     *               files:
     *                   type: string
     *                   format: binary
     *     responses:
     *       200:
     *         description: Successfully uploaded images.
     *         content:
     *           application/json:
     *             schema:
     *               $ref: '#/components/schemas/User'
     *       400:
     *         description: Bad request
     *       401:
     *         description: Unauthorized
     *       404:
     *         description: User not found
     *       500:
     *         description: Internal server error
     */
    this.router.put(
      '/:id/images/upload',
      this.authMiddleware.handler(),
      this.upload.single('file'),
      this.userController.uploadImage.bind(this.userController),
    );
  }
}
export default new UserRoute().router;
