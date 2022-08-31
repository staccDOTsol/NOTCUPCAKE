var n, t;
module.exports =
  ((n = require('crypto-js')),
  ((t = n.hasOwnProperty('ext') ? n.ext : (n.ext = {})).bitshift = function (n, t) {
    var o,
      f,
      i = 0,
      s = n.words,
      u = 0;

    if (t > 0) {
      for (; t > 31; ) {
        s.splice(0, 1);
        s.push(0);
        t -= 32;
        u++;
      }

      if (0 == t) return i;

      for (var l = s.length - u - 1; l >= 0; l--) {
        o = s[l];
        s[l] <<= t;
        s[l] |= i;
        i = o >>> (32 - t);
      }
    } else if (t < 0) {
      for (; t < -31; ) {
        s.splice(0, 0, 0);
        s.length--;
        t += 32;
        u++;
      }

      if (0 == t) return i;
      f = (1 << (t = -t)) - 1;

      for (var l = u; l < s.length; l++) {
        o = s[l] & f;
        s[l] >>>= t;
        s[l] |= i;
        i = o << (32 - t);
      }
    }

    return i;
  }),
  (t.neg = function (n) {
    for (var t = n.words, o = 0; o < t.length; o++) t[o] = ~t[o];

    return n;
  }),
  (t.xor = function (n, t) {
    for (var o = 0; o < n.words.length; o++) n.words[o] ^= t.words[o];

    return n;
  }),
  void (t.bitand = function (n, t) {
    for (var o = n.clone(), f = o.words, i = t.words, s = 0; s < f.length; s++) f[s] &= i[s];

    return o;
  }));
