/*
Description

Story
Before we dive into the exercise, I would like to show you why these numbers are so important in computer programming 
today.
It all goes back to the time of 19th century. Where computers we know today were non-existing. The first ever computer 
program was for the Analytical Engine to compute Bernoulli numbers. A woman named Ada Lovelace wrote the very first 
program. The sad part is the engine was never fully build so her code was never tested. She also predicted the start 
of AI (artificial intelligence).

Computers will be able to compose music by themselves, solve problems (not only numbers) ... So in her honor reproduce 
what was done back in 1842. The Bernoulli numbers are a sequence of rational numbers with deep connections to number 
theory. The Swiss mathematician Jakob Bernoulli and the Japanese mathematician Seki Kowa discovered the numbers around 
the same time at the start of the 18th Century. If you want to read more about her or Bernoulli numbers follow these 
links:
https://en.wikipedia.org/wiki/Ada_Lovelace
https://en.wikipedia.org/wiki/Bernoulli_number
http://mathworld.wolfram.com/BernoulliNumber.html

Exercise
Your job is to write a function bernoulli_number(n) which outputs the n-th Bernoulli number. The input will always be 
a non-negative integer so you do not need to worry about exceptions. How you will solve the problem is none of my 
business but here are some guidelines.
You can make pascal triangle and then with the basic formula generate all Bernoulli numbers. Look example below.
For the sake of floating numbers, just use Fractions so there will be no problems with rounding.
0 = 1 + 2b1 ............................................................... b1 = - 1/2
0 = 1 + 3b1 + 3b2 ................................................... b2 = 1/6
0 = 1 + 4b1 + 6b2 + 4b3 ....................................... b3 = 0
0 = 1 + 5b1 + 10b2 + 10b3 + 5b4 ...................... b4 = - 1/30
... and so on.
bernoulli_number(0) # return 1
bernoulli_number(1) # return Fraction(-1,2) or Rational(-1,2) or "1/2"
bernoulli_number(6) # return Fraction(1,42) or ...
bernoulli_number(42) # return Fraction(1520097643918070802691,1806) or ...
bernoulli_number(22) # return Fraction(854513,138) or ... "854513/138"

Note
See "Sample Tests" to see the return type for each language.
Good luck and happy coding!
PS: be careful some numbers might exceed 1000. If this kata is too hard for you try to solve pascal triangle and 
something similar to this and then come back :).

function b(i) {
  return [ 0n, 1n ];
}
*/

class Fraction {
  constructor(numerator, denominator) {
    if (numerator === undefined || denominator === undefined) denominator = 1n;
    if (denominator < 0n) {
      numerator = -numerator;
      denominator = -denominator;
    }

    const gcd = (a, b) => (b ? gcd(b, a % b) : a);
    const g = gcd(numerator < 0n ? -numerator : numerator, denominator) || 1n;

    this.n = numerator / g;
    this.d = denominator / g;
  }

  add(r) {
    return new Fraction(this.n * r.d + r.n * this.d, this.d * r.d);
  }

  sub(r) {
    return new Fraction(this.n * r.d - r.n * this.d, this.d * r.d);
  }

  mul(r) {
    return new Fraction(this.n * r.n, this.d * r.d);
  }

  div(r) {
    return new Fraction(this.n * r.d, this.d * r.n);
  }

  toArray() {
    return [this.n, this.d];
  }
}

const b = ((MAX) => {
  let pascalRow = [1n, 1n]; // Startzeile für Pascal-Dreieck
  const B = [new Fraction(1n)]; // B[0] = 1

  for (let j = 1; j <= MAX; j++) {
    let newRow = [1n];
    for (let k = 0; k < pascalRow.length - 1; k++) {
      newRow[k + 1] = pascalRow[k] + pascalRow[k + 1];
    }
    newRow.push(1n);
    pascalRow = newRow;

    let sum = new Fraction(0n);
    for (let k = 0; k < j; k++) {
      sum = sum.sub(B[k].mul(new Fraction(pascalRow[k])));
    }

    B[j] = sum.div(new Fraction(pascalRow[j]));
  }

  return (i) => B[i].toArray();
})(1337);
