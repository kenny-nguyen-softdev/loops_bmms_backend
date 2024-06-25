import * as admin from 'firebase-admin';
import { getCurrentDate, giveCurrentDateTime } from './date-handler.util';
import axios from 'axios';
export const generateUploadUrls = async (
  fileName: string,
  action: 'read' | 'write' | 'delete' | 'resumable',
  contentType?: string,
  expries?: string | number | Date,
) => {
  const storage = admin.storage();
  const bucket = storage.bucket();
  const options = {
    version: 'v2' as const,
    action: action,
    expires: expries ?? Date.now() + 15 * 60 * 1000, // Set the expiration time (e.g., 15 minutes from now)
    contentType, // Set the content type of the file
  };
  const [url] = await bucket.file(fileName).getSignedUrl(options);
  return url;
};

export const uploadPdf = async (fileName: string, pdf: any): Promise<string> => {
  const dateTime = giveCurrentDateTime();
      const writePresignedUrl = await generateUploadUrls(
        `${getCurrentDate()}/${`${fileName}-` + dateTime}`,
        'write',
        'application/pdf',
      );
      await axios.put(writePresignedUrl, pdf.buffer, {
        headers: {
          'Content-Type': 'application/pdf',
        },
      });
      const downloadedUrl = await generateUploadUrls(
        `${getCurrentDate()}/${`${fileName}-` + dateTime}`,
        'read',
        undefined,
        '2050-01-01',
      );
      return downloadedUrl;
};
