var reverse = (x) => {
  var negative
  var rev = 0

  if (x < 0) {
    negative = true
    x = -(x)
  }

  if (x > 0 && x < 10) {
    rev = x
    if (negative) {
     rev = -rev
    }
    return rev
  }

  while (x > 0) {
    rev = rev * 10 + (x%10)
    x = Math.floor(x/10)

    if (x < 10) {
      rev = rev*10 + x
      x = 0
    }
  }

  if (negative) {
   rev = -rev
  }
  return rev
}

let reversedNum = reverse(1534236469)
console.log(reversedNum)
