module.exports = (function (t) {
  var n;
  n = t.hasOwnProperty('ext') ? t.ext : (t.ext = {});
  t.lib.Base;
  var s = t.lib.WordArray;
  n.const_Zero = new s.init([0, 0, 0, 0]);
  n.const_One = new s.init([0, 0, 0, 1]);
  n.const_Rb = new s.init([0, 0, 0, 135]);
  n.const_Rb_Shifted = new s.init([2147483648, 0, 0, 67]);
  n.const_nonMSB = new s.init([4294967295, 4294967295, 2147483647, 2147483647]);

  n.isWordArray = function (t) {
    return t && 'function' == typeof t.clamp && 'function' == typeof t.concat && 'array' == typeof t.words;
  };

  t.pad.OneZeroPadding = {
    pad: function (t, n) {
      for (var r = 4 * n, i = r - (t.sigBytes % r), o = [], c = 0; c < i; c += 4) {
        var f = 0;
        if (0 === c) f = 2147483648;
        o.push(f);
      }

      var u = new s.init(o, i);
      t.concat(u);
    },
    unpad: function () {},
  };
  t.pad.NoPadding = {
    pad: function () {},
    unpad: function () {},
  };

  n.leftmostBytes = function (t, n) {
    var s = t.clone();
    s.sigBytes = n;
    s.clamp();
    return s;
  };

  n.rightmostBytes = function (t, s) {
    t.clamp();
    var r = t.clone(),
      i = 8 * (r.sigBytes - s);

    if (i >= 32) {
      var o = Math.floor(i / 32);
      i -= 32 * o;
      r.words.splice(0, o);
      r.sigBytes -= (32 * o) / 8;
    }

    if (i > 0) {
      n.bitshift(r, i);
      r.sigBytes -= i / 8;
    }

    return r;
  };

  n.popWords = function (t, n) {
    var r = t.words.splice(0, n);
    t.sigBytes -= 4 * n;
    return new s.init(r);
  };

  n.shiftBytes = function (t, r) {
    var i = (r = r || 16) % 4;
    r -= i;

    for (var o = new s.init(), c = 0; c < r; c += 4) {
      o.words.push(t.words.shift());
      t.sigBytes -= 4;
      o.sigBytes += 4;
    }

    if (i > 0) {
      o.words.push(t.words[0]);
      o.sigBytes += i;
      n.bitshift(t, 8 * i);
      t.sigBytes -= i;
    }

    return o;
  };

  n.xorendBytes = function (t, s) {
    return n.leftmostBytes(t, t.sigBytes - s.sigBytes).concat(n.xor(n.rightmostBytes(t, s.sigBytes), s));
  };

  n.dbl = function (t) {
    var s = n.msb(t);
    n.bitshift(t, 1);
    n.xor(t, 1 === s ? n.const_Rb : n.const_Zero);
    return t;
  };

  n.inv = function (t) {
    var s = 1 & t.words[4];
    n.bitshift(t, -1);
    n.xor(t, 1 === s ? n.const_Rb_Shifted : n.const_Zero);
    return t;
  };

  n.equals = function (t, n) {
    if (!n || !n.words || t.sigBytes !== n.sigBytes) return false;
    t.clamp();
    n.clamp();

    for (var s = 0, r = 0; r < t.words.length; r++) s |= t.words[r] ^ n.words[r];

    return 0 === s;
  };

  n.msb = function (t) {
    return t.words[0] >>> 31;
  };
})(require('crypto-js'), require('./1127'), require('./897'));
