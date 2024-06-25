export const getOnlyImageName = (nameImage: string): string => {
  const parts = nameImage.split('.');
  const name = parts.slice(0, parts.length - 1).join('.');
  return name;
};

export const formatCurrency = (number: number) => {
  if (number) {
    const formattedNumber = number.toString().replace(/\D/g, "");
    const rest = formattedNumber.length % 3;
    let currency = formattedNumber.substr(0, rest);
    const thousand = formattedNumber.substr(rest).match(/\d{3}/g);
    let separator;

    if (thousand) {
      separator = rest ? "." : "";
      currency += separator + thousand.join(".");
    }

    return currency;
  } else {
    return "";
  }
};

export const multiplyDimensions = (str: string) => {
  const numbers = str.match(/\d+/g);  // Lấy tất cả các số từ chuỗi
  if (numbers) {
    return numbers.reduce((acc, num) => acc * parseInt(num, 10), 1);  // Nhân tất cả các số với nhau
  }
  return 0;
};