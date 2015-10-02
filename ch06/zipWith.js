"use strict";

var add = (a, b) => a + b

var zipWith = (f, xs, ys) => {
  if(xs.length == 0) return []
  if(ys.length == 0) return []
  let x = xs.shift()
  let y = ys.shift()
  return [f(x, y)].concat(zipWith(f, xs, ys))
}

console.log(add(5, 5)) // -> 10
console.log( zipWith( add, [4,2,5,6], [2,6,2,3]) ) // -> [ 6, 8, 7, 9 ]
console.log( zipWith( add, [4,2,5,6,3,65,2,1], [2,6,2,3]) ) // -> [ 6, 8, 7, 9 ]
