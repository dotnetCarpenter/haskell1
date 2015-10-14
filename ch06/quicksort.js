"use strict"

//quicksort :: (Ord a) => [a] -> [a]
var quicksort = a => {
  if(a.length === 0) return []
  const x = a[0],
        xs = a.slice(1)
  let smallerSorted = quicksort( xs.filter(n => n<=x) ),
      biggerSorted = quicksort( xs.filter(n => n>x) )
  return smallerSorted.concat([x]).concat(biggerSorted)
}

module.exports = {
  quicksort: quicksort
}
