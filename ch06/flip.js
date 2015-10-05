"use strict"

/* flip :: (a -> b -> c) -> b -> a -> c */
var flip = f => (b,a) => f(a,b)

/* zip :: [a] -> [b] -> [(a, b)] */
var zip = (a,b) => {
  if(a.length === 0) return []
  if(b.length === 0) return []
  let x = a[0],
      y = b[0]
  return [[x, y]].concat(zip(a.slice(1), b.slice(1)))
}
/* flip/zip demo
 * zip([1,2,3], ['a','b','c'])        -> [ [ 1, 'a' ], [ 2, 'b' ], [ 3, 'c' ] ]
 * flip( zip )([1,2,3], ['a','b','c'])-> [ [ 'a', 1 ], [ 'b', 2 ], [ 'c', 3 ] ]
 */

module.exports = {
  flip: flip,
  zip: zip
}
