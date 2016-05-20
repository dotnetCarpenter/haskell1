'use strict'

function take(n, a) {
  switch (a) {
    case a.length === 0 && a:
    case n === 0 && a:
      return []
      break;
    default:
      let x = a[0],
          xs= a.slice(1)
      return [x].concat(take(n-1, xs))
  }
}

function take(n, a) {
  if(a.length === 0 || n === 0) return []
  let x = a[0],
      xs= a.slice(1)
  return [x].concat(take(n-1, xs))
}

// a - > [b] -> [b]
function take(n, a, accu = []) {
	if(a.length === 0 || n === 0) return accu
	accu.push(a[0])
	return take( n - 1, a.slice(1), accu ) // tail call
}

console.log(take(0,[1]))
console.log(take(4,[]))
console.log(take(2,[1,2,3,4,5]))
console.log(take(5,[1,2,3,4,5]))
