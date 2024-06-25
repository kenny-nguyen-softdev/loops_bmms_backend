import { Router } from 'express';
import AuthController from '../app/controllers/auth/auth.controller';
import { AuthMiddleware } from '../app/middlewares';
import passport from 'passport';
import ValidationMiddleware from '../app/middlewares/validation.middleware';
import { signUpSchema } from '../schemas';

class AuthRoute {
  router = Router();
  authController: AuthController;
  authMiddleware: AuthMiddleware;
  validationMiddleware: ValidationMiddleware;
  constructor() {
    this.authController = new AuthController(passport);
    this.authMiddleware = new AuthMiddleware();
    this.validationMiddleware = new ValidationMiddleware();
    this.intializeRoutes();
  }
  intializeRoutes() {
    /**
     * @openapi
     * /api/auth/sign-in:
     *   post:
     *     tags:
     *       - /api/auth - Authentication
     *     summary: Sign in with email and password
     *     requestBody:
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             properties:
     *               email:
     *                 type: string
     *                 format: email
     *                 description: User's email address
     *               password:
     *                 type: string
     *                 format: password
     *                 description: User's password
     *             required:
     *               - email
     *               - password
     *     responses:
     *       200:
     *         description: Successful sign-in
     *         content:
     *           application/json:
     *             schema:
     *               properties:
     *                 accessToken:
     *                   type: string
     *                   description: Access token for authentication
     *                 refreshToken:
     *                   type: string
     *                   description: Refresh token for obtaining new access tokens
     *       400:
     *         description: Bad request - Invalid input data
     *       401:
     *         description: Unauthorized - Invalid credentials
     */
    this.router.route('/sign-in').post(this.authController.signIn);
    /**
     * @openapi
     * /api/auth/sign-up:
     *   post:
     *     tags:
     *       - /api/auth - Authentication
     *     summary: Sign up with email and password
     *     requestBody:
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             type: object
     *             properties:
     *               email:
     *                 type: string
     *                 format: email
     *                 description: User's email address
     *               password:
     *                 type: string
     *                 format: password
     *                 description: User's password
     *               password_confirmation:
     *                 type: string
     *                 format: password
     *                 description: Password confirmation
     *               name:
     *                 type: string
     *                 description: User's name
     *               username:
     *                 type: string
     *                 description: User's username
     *               privateImage:
     *                 type: string
     *                 description: Private image URL
     *               personGroupTypeId: 
     *                 type: number
     *                 description: Person group type id
     *             required:
     *               - email
     *               - password
     *               - password_confirmation
     *               - personGroupTypeId
     *     responses:
     *       200:
     *         description: Successful sign-up
     *         content:
     *           application/json:
     *             schema:
     *               type: object
     *               properties:
     *                 accessToken:
     *                   type: string
     *                   description: Access token for authentication
     *                 refreshToken:
     *                   type: string
     *                   description: Refresh token for obtaining new access tokens
     *       400:
     *         description: Bad request - Invalid input data
     */
    this.router.route('/sign-up').post(this.validationMiddleware.handler(signUpSchema), this.authController.signUp);
    /**
     * @openapi
     * /api/auth/refresh-token:
     *   post:
     *     tags:
     *       - /api/auth - Authentication
     *     summary: Refresh access token
     *     requestBody:
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             type: object
     *             properties:
     *               refreshToken:
     *                 type: string
     *                 description: Refresh token obtained during sign-in
     *             required:
     *               - refreshToken
     *     responses:
     *       200:
     *         description: Successful token refresh
     *         content:
     *           application/json:
     *             schema:
     *               type: object
     *               properties:
     *                 accessToken:
     *                   type: string
     *                   description: New access token for authentication
     *                 refreshToken:
     *                   type: string
     *                   description: New refresh token for obtaining new access tokens
     *       400:
     *         description: Bad request - Invalid input data
     *       401:
     *         description: Unauthorized - Invalid or expired refresh token
     */
    this.router.route('/refresh-token').post(this.authMiddleware.handler(), this.authController.refreshToken);
    /**
     * @openapi
     * /api/auth/user-profile:
     *   post:
     *     tags:
     *       - /api/auth - Authentication
     *     summary: Get user profile
     *     requestBody:
     *       required: true
     *       content:
     *         application/json:
     *           schema:
     *             type: object
     *             properties:
     *               accessToken:
     *                 type: string
     *                 description: Access token for authentication
     *                 required: true
     *     responses:
     *       200:
     *         description: Successful user profile retrieval
     *         content:
     *           application/json:
     *             schema:
     *               type: object
     *               properties:
     *                 id:
     *                   type: number
     *                 email:
     *                   type: string
     *                 name:
     *                   type: string
     *                 username:
     *                   type: string
     *                 privateImage:
     *                   type: string
     *       400:
     *         description: Bad request - Invalid input data
     *       401:
     *         description: Unauthorized - Missing or invalid bearer token
     *       404:
     *         description: User not found
     */
    this.router.route('/user-profile').post(
      // this.authMiddleware.handler(), 
      this.authController.userProfile);
    /**
     * @openapi
     * /api/auth/sign-out:
     *   post:
     *     tags:
     *       - /api/auth - Authentication
     *     summary: Sign out user
     *     requestBody:
     *       required: true
     *       content:
     *         application/json:
     *             schema:
     *               type: object
     *               properties:
     *                 accessToken:
     *                   type: string
     *                   description: access token for authentication
     *                   required: true
     *                 refreshToken:
     *                   type: string
     *                   description: refresh token for obtaining new access tokens
     *                   required: true
     *     responses:
     *       200:
     *         description: Successful sign out
     *       400:
     *         description: Bad request - Invalid input data
     *       401:
     *         description: Unauthorized - Missing or invalid bearer token
     */
    this.router.route('/sign-out').post(this.authMiddleware.handler(), this.authController.signOut);
  }
}
export default new AuthRoute().router;
