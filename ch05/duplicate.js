"use strict"

/* elem :: (Eq a) => a -> [a] -> Bool */
var elem = (a, b) => {
  if(b.length === 0) return false
  const x = b[0] // NOTE: b.shift() mutates the array hence making the array unusable in other functions
  return a == x || elem(a, b.slice(1))
}
/* duplicate :: (Eq a) => [a] -> [a] */
var duplicate = a => {
  //console.log("steps",a)
  if(a.length === 0) return []
  let ax = a.slice(0)
  let x = ax.shift()
  return elem(x, ax)
    ? [x].concat(duplicate(ax.filter(b => b != x )))
    : [].concat(duplicate(ax))
}

module.exports = {
  elem: elem,
  duplicate: duplicate
}

/*
debugger;
console.log(
  duplicate([2,54,2,3,42,5,43,67,233,42,42,53,5,32,6,9])
)
*/
