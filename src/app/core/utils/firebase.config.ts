import * as dotenv from 'dotenv';
import * as admin from 'firebase-admin';
dotenv.config();

export const firebaseConfig = {
  apiKey: process.env.API_KEY_FIREBASE,
  authDomain: process.env.AUTH_DOMAIN_FIREBASE,
  projectId: process.env.PROJECT_ID_FIREBASE,
  storageBucket: process.env.STORAGE_BUCKET_FIREBASE,
  messagingSenderId: process.env.MESSAGING_SENDER_ID_FIREBASE,
  appId: process.env.APP_ID_FIREBASE,
  measurementId: process.env.MEASUREMENT_ID_FIREBASE,
};

export const adminFirebaseConfig = {
  credential: admin.credential.cert({
    projectId: process.env.PROJECT_ID_FIREBASE,
    clientEmail: process.env.CLIENT_EMAIL_FIREBASE,
    privateKey: process.env.PRIVATE_KEY_FIREBASE,
  }),
  storageBucket: process.env.STORAGE_BUCKET_FIREBASE,
};
