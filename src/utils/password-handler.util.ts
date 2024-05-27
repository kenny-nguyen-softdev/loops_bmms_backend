import bcrypt from 'bcryptjs';

const saltRounds = 10;

// Hash a password
export const hashPassword = async (password: string): Promise<string> => {
  const salt = await bcrypt.genSalt(saltRounds);
  const hashedPassword = await bcrypt.hash(password, salt);
  return hashedPassword;
};

// Verify a password
export const comparePassword = async (password: string, hashedPassword: string): Promise<boolean> => {
  const match = await bcrypt.compare(password, hashedPassword);
  return match;
};
