var hammingDistance = function(x, y) {
  var xor = x ^ y;
  var count = 0;

  while (xor) {
    if (xor % 2 === 1) {
      count++;
    }
    xor = xor >> 1;
  }
  return count;
};

let hammeringDistance = hammingDistance(8,3);
console.log(hammeringDistance);
