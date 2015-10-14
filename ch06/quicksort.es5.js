"use strict";

//quicksort :: (Ord a) => [a] -> [a]
var quicksort = function quicksort(a) {
  if (a.length === 0) return [];
  var x = a[0],
      xs = a.slice(1);
  var smallerSorted = quicksort(xs.filter(function (n) {
    return n <= x;
  })),
      biggerSorted = quicksort(xs.filter(function (n) {
    return n > x;
  }));
  return smallerSorted.concat([x]).concat(biggerSorted);
};

module.exports = {
  quicksort: quicksort
};

