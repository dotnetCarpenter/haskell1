"use strict";

/* elem :: (Eq a) => a -> [a] -> Bool */
var elem = function elem(_x, _x2) {
  var _left;

  var _again = true;

  _function: while (_again) {
    var a = _x,
        b = _x2;
    x = undefined;
    _again = false;

    if (b.length === 0) return false;
    var x = b[0];

    if (_left = a == x) {
      return _left;
    }

    _x = a;
    _x2 = b.slice(1);
    _again = true;
    continue _function;
  }
};
/* duplicate :: (Eq a) => [a] -> [a] */
var duplicate = function duplicate(a) {
  console.log("first", a);
  if (a.length === 0) return [];
  var x = a[0];
  return elem(x, a) ? [x].concat(duplicate(a.filter(function (b) {
    return b != x;
  }))) : [].concat(duplicate(a));
};

module.exports = {
  elem: elem,
  duplicate: duplicate
};

/*
debugger;
console.log(
  duplicate([2,54,2,3,42,5,43,67,233,42,42,53,5,32,6,9])
)
*/
