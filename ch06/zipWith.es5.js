"use strict";

var add = (a, b) => a + b;

var multiply = (a, b) => a * b;

var zipWith = (f, xs, ys) => {
  if (xs.length === 0) return [];
  if (ys.length === 0) return [];
  let x = xs[0],
      y = ys[0];
  xs = xs.slice(1);
  ys = ys.slice(1);
  return [f(x, y)].concat(zipWith(f, xs, ys));
};

var replicate = (i, a) => {
  if (i === 0) return [];
  return [a].concat(replicate(--i, a));
};

console.log(add(5, 5)); // -> 10
console.log(zipWith(add, [4, 2, 5, 6], [2, 6, 2, 3])); // -> [ 6, 8, 7, 9 ]
console.log(zipWith(add, [4, 2, 5, 6, 3, 65, 2, 1], [2, 6, 2, 3])); // -> [6, 8, 7, 9]
console.log(zipWith(Math.max, [6, 3, 2, 1], [7, 3, 1, 5])); // -> [7, 3, 2, 5]
console.log(zipWith(add, ["foo", "bar", "baz"], ["fighters", "hoppers", "aldrin"])); // -> ["foofighters","barhoppers","bazaldrin"]
console.log(replicate(5, 2)); // -> [2,2,2,2,2]
console.log(zipWith(multiply, replicate(5, 2), [1, 2, 3, 4, 5])); // -> [2 ,4 ,6 ,8 ,10]
