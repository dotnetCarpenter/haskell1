"use strict";

var add = function add(a, b) {
  return a + b;
};

var zipWith = function zipWith(f, xs, ys) {
  if (xs.length == 0) return [];
  if (ys.length == 0) return [];
  var x = xs.shift();
  var y = ys.shift();
  return [f(x, y)].concat(zipWith(f, xs, ys));
};

console.log(add(5, 5)); // -> 10
console.log(zipWith(add, [4, 2, 5, 6], [2, 6, 2, 3])); // -> [ 6, 8, 7, 9 ]
console.log(zipWith(add, [4, 2, 5, 6, 3, 65, 2, 1], [2, 6, 2, 3])); // -> [ 6, 8, 7, 9 ]
