'use strict'

function comprehension(from, to, f) {
  // let flength, tlength
  // flength = Array.isArray(from) ? from.length : from
  // tlength = Array.isArray(to) ? to.length : to
  let t
  t = Array.isArray(to) ? mapRange(from, to.length, f) : mapRange(from, to, f)
  return t.map(tn =>
    mapRange(from, to.length, a => [ tn, a ] )
  )
}

function mapRange(from, to, f) {
  return range(from, to).map((a,n) => f(a, n))
}

function range(from, to, accu = []) {
  const direction = +(from < to) || -1
  accu.push(from)
  if(from === to) return accu
  return range(from + direction, to, accu)
}

/*function listToInt(f) {
  return [...args] => {
    const lists = args.map(x => if(Array.isArray(x)) x.length)
  }
}*/

const identity = x => x

/*console.log(
  range(1,10),
  range(1,-2),
  mapRange(1, 10, a => Math.pow(a,2))
)*/

let c = range(1, 10)
let b = comprehension(1, c, identity)
// [(b,c) | c <- [1..10], b <- [1..c]]
console.dir(b)