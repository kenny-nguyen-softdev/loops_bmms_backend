import crypto from 'crypto';

function generateRandomNumber(min: number, max: number): number {
  const range = max - min + 1;
  const randomBytes = crypto.randomBytes(4); // 4 bytes = 32 bits, generating a number between 0 and 2^32-1
  const randomNumber = randomBytes.readUInt32BE(0);
  return min + (randomNumber % range);
}

export function generatePONCode(): string {
  const randomNumber = generateRandomNumber(0, 99999);
  const paddedNumber = randomNumber.toString().padStart(5, '0');
  return `PON${paddedNumber}`;
}

export function generateONSCode(): string {
  const randomNumber = generateRandomNumber(0, 99999);
  const paddedNumber = randomNumber.toString().padStart(5, '0');
  return `ONS${paddedNumber}`;
}

export function generatePVNCode(): string {
  const randomNumber = generateRandomNumber(0, 99999);
  const paddedNumber = randomNumber.toString().padStart(5, '0');
  return `PVN${paddedNumber}`;
}

export function generateSVNCode(): string {
  const randomNumber = generateRandomNumber(0, 99999);
  const paddedNumber = randomNumber.toString().padStart(5, '0');
  return `SVN${paddedNumber}`;
}

export function generateCBVNCode(): string {
  const randomNumber = generateRandomNumber(0, 99999);
  const paddedNumber = randomNumber.toString().padStart(5, '0');
  return `CBVN${paddedNumber}`;
}

export function generateRVNCode(): string {
  const randomNumber = generateRandomNumber(0, 99999);
  const paddedNumber = randomNumber.toString().padStart(5, '0');
  return `RVN${paddedNumber}`;
}

export function generateSUPNCode(): string {
  const randomNumber = generateRandomNumber(0, 99999);
  const paddedNumber = randomNumber.toString().padStart(5, '0');
  return `SUPN${paddedNumber}`;
}

export function generateIANCode(): string {
  const randomNumber = generateRandomNumber(0, 99999);
  const paddedNumber = randomNumber.toString().padStart(5, '0');
  return `IAN${paddedNumber}`;
}

export function generateDSPNCode(): string {
  const randomNumber = generateRandomNumber(0, 99999);
  const paddedNumber = randomNumber.toString().padStart(5, '0');
  return `DSPN${paddedNumber}`;
}

export function generateONCode(): string {
  const randomNumber = generateRandomNumber(0, 99999);
  const paddedNumber = randomNumber.toString().padStart(5, '0');
  return `ON${paddedNumber}`;
}