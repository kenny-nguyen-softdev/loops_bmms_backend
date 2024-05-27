import * as admin from 'firebase-admin';
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
