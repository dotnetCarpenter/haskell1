"use strict";

// as of v5.10 run with node --harmony_destructuring duplicate.js

/* elem :: (Eq a) => a -> [a] -> Bool */

function _toArray(arr) { return Array.isArray(arr) ? arr : Array.from(arr); }

var elem2 = function elem2(a, _ref) {
  var _ref2 = _toArray(_ref),
      b = _ref2[0],
      c = _ref2.slice(1);

  if (a == b) return true;
  if (c.length === 0) return false;else return elem(a, c);
};

/* elem :: (Eq a) => a -> [a] -> Bool */
var elem = function elem(a, b) {
  if (b.length === 0) return false;
  var x = b[0]; // NOTE: b.shift() mutates the array hence making the array unusable in other functions
  return a == x || elem(a, b.slice(1));
};
/* duplicate :: (Eq a) => [a] -> [a] */
var duplicate = function duplicate(a) {
  //console.log("steps",a)
  if (a.length === 0) return [];
  var ax = a.slice(0); // create new array
  var x = ax.shift();
  return elem2(x, ax) ? [x].concat(duplicate(ax.filter(function (b) {
    return b != x;
  }))) : duplicate(ax);
};

module.exports = {
  elem: elem,
  duplicate: duplicate
};

/*
debugger;
console.log(
  duplicate([2,54,2,3,42,5,43,67,233,42,42,53,5,32,6,9,5])
)
*/

