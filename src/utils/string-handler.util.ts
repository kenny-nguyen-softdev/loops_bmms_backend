export const getOnlyImageName = (nameImage: string): string => {
  const parts = nameImage.split('.');
  const name = parts.slice(0, parts.length - 1).join('.');
  return name;
};
