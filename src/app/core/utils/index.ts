export const pick = <T extends object, K extends keyof T>(whitelisted: K[] | string[], target: T, defaultValue?: any) =>
  Object.fromEntries(whitelisted.map((key) => [key, key in target ? target[key as K] : defaultValue]));

export const cartesian = (...args: any[]) => {
  const r: any[] = [],
    max = args.length - 1;
  function helper(arr: any[], i: number) {
    for (let j = 0, l = args[i].length; j < l; j++) {
      const a = arr.slice(0); // clone arr
      a.push(args[i][j]);
      if (i == max) r.push(a);
      else helper(a, i + 1);
    }
  }
  helper([], 0);
  return r;
};
