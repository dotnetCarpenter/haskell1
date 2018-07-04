"use strict"

// as of v5.10 run with node --harmony_destructuring duplicate.js

/* elem :: (Eq a) => a -> [a] -> Bool */
const elem2 = (a, [b,...c]) => {
  if(a == b) return true
  if(c.length === 0) return false
  else return elem(a, c)
}

/* elem :: (Eq a) => a -> [a] -> Bool */
const elem = (a, b) => {
  if(b.length === 0) return false
  const x = b[0] // NOTE: b.shift() mutates the array hence making the array unusable in other functions
  return a == x || elem(a, b.slice(1))
}
/* duplicate :: (Eq a) => [a] -> [a] */
const duplicate = a => {
  //console.log("steps",a)
  if(a.length === 0) return []
  let ax = a.slice(0) // create new array
  let x = ax.shift()
  return elem2(x, ax)
    ? [x].concat(duplicate(ax.filter(b => b != x )))
    : duplicate(ax)
}

module.exports = {
  elem: elem,
  duplicate: duplicate
}

/*
debugger;
console.log(
  duplicate([2,54,2,3,42,5,43,67,233,42,42,53,5,32,6,9,5])
)
*/
