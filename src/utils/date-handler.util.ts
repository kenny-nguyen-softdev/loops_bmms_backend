export const getCurrentDate = () => {
  const currentDate = new Date();
  const year = currentDate.getFullYear();
  const month = String(currentDate.getMonth() + 1).padStart(2, '0');
  const day = String(currentDate.getDate()).padStart(2, '0');
  return `${year}/${month}/${day}`;
};

export const giveCurrentDateTime = () => {
  const today = new Date();
  const date = today.getFullYear() + '-' + (today.getMonth() + 1) + '-' + today.getDate();
  const time = today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds();
  const dateTime = date + ' ' + time;
  return dateTime;
};

export const generateDateRange = (startDate: string, endDate: string) => {
  const start = new Date(startDate);
  const end = new Date(endDate);
  const result: { [date: string]: number } = {};
  for (let date = start; date <= end; date.setDate(date.getDate() + 1)) {
    const formattedDate =
      (date.getMonth() + 1).toString().padStart(2, '0') +
      '/' +
      date.getDate().toString().padStart(2, '0') +
      '/' +
      date.getFullYear();
    result[formattedDate] = 0;
  }
  return result;
};

export const generateMonthRange = (startDate: string, endDate: string) => {
  const start = new Date(startDate);
  const end = new Date(endDate);
  const result: { [month: string]: any } = {};
  for (let date = start; date <= end; date.setMonth(date.getMonth() + 1)) {
    const formattedDate = (date.getMonth() + 1).toString().padStart(2, '0') + '/' + date.getFullYear();
    result[formattedDate] = {};
  }
  const formattedDate = (end.getMonth() + 1).toString().padStart(2, '0') + '/' + end.getFullYear();
  if (!result[formattedDate]) {
    result[formattedDate] = {};
  }
  return result;
};
