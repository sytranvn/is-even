const assert = require('node:assert')

String.prototype.replaceAt = function(index, char) {
  assert.equal(char.length, 1, "Only allow replace one character")
  return this.substring(0, index) + char + this.substring(index + 1);
}

function toBitString(a) {
  const abs = Math.abs(a);
  let bits = '0' + abs.toString(2).padStart(53, '0');
  if (abs != a) {
    for (let i = bits.length - 1; i >= 0; i--) {
      if (bits[i] == '1') { bits = bits.replaceAt(i, '0') }
      else { bits = bits.replaceAt(i, '1'); }
    }
    let c = 1;
    for (let i = bits.length - 1; i > 0 && c; i--) {
      if (bits[i] === '1') {
        bits = bits.replaceAt(i, '0');
      } else {
        bits = bits.replaceAt(i, '1');
        c = 0;
      }
    }
  }
  return bits;
}

function negativeBits(bits) {
  assert.equal(typeof bits, "string", "must be a string")
  bits = bits.padStart(54, "0");

  for (let i = bits.length - 1; i >= 0; i--) {
    if (bits[i] == '1') { bits = bits.replaceAt(i, '0') }
    else { bits = bits.replaceAt(i, '1'); }
  }
  let c = 1;
  for (let i = bits.length - 1; i > 0 && c; i--) {
    if (bits[i] === '1') {
      bits = bits.replaceAt(i, '0');
    } else {
      bits = bits.replaceAt(i, '1');
      c = 0;
    }
  }
  return bits;
}

function xorBits(abits, bbits) {
  assert.equal(typeof abits, "string", "a must be a string")
  assert.equal(typeof bbits, "string", "b must be a string")
  abits = abits.padStart(54, "0")
  bbits = bbits.padStart(54, "0")
  let res = "0".repeat(54);
  for (let i = 0; i < abits.length; i++) {
    if (abits[i] !== bbits[i]) {
      res = res.replaceAt(i, "1");
    }
  }
  return res;
}

function toNum(bits) {
  assert.equal(typeof bits, "string");
  bits = bits.padStart(54, "0");
  let sign = '';
  if (bits[0] === '1') {
    bits=negativeBits(bits);
    sign = '-'
  }
  return sign + Number('0b' + bits.substring(1));
}

let a = -9007199249885166
let abs_a = Math.abs(a);

console.log('a is', a);
console.log('absolute value of a', abs_a)

let abs_bits = '0' + abs_a.toString(2);
let abits = toBitString(a)
console.log('bits of \t', abs_a, '\t:', abs_bits)
console.log('bits of \t', a, '\t:', abits)

assert.equal(abs_bits, negativeBits(abits));

assert.equal(xorBits(abits, abits), toBitString(0))

console.log(xorBits(abits, toBitString(1)))
console.log(toNum(toBitString(-1)), -1)
console.log(toNum(toBitString(Number.MAX_SAFE_INTEGER)), Number.MAX_SAFE_INTEGER)
console.log(toNum(toBitString(Number.MIN_SAFE_INTEGER)), Number.MIN_SAFE_INTEGER)

console.log(toNum(xorBits(abits, toBitString(1))))
