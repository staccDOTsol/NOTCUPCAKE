!(function (t, i) {
  'use strict';

  function r(t, i) {
    if (!t) throw new Error(i || 'Assertion failed');
  }

  function n(t, i) {
    t.super_ = i;

    var r = function () {};

    r.prototype = i.prototype;
    t.prototype = new r();
    t.prototype.constructor = t;
  }

  function h(t, i, r) {
    if (h.isBN(t)) return t;
    this.negative = 0;
    this.words = null;
    this.length = 0;
    this.red = null;

    if (null !== t) {
      if (!('le' !== i && 'be' !== i)) {
        r = i;
        i = 10;
      }

      this._init(t || 0, i || 10, r || 'be');
    }
  }

  var e;
  if ('object' == typeof t) t.exports = h;
  else i.BN = h;
  h.BN = h;
  h.wordSize = 26;

  try {
    e = 'undefined' != typeof window && undefined !== window.Buffer ? window.Buffer : require(d[0]).Buffer;
  } catch (t) {}

  function o(t, i) {
    var r = t.charCodeAt(i);
    return r >= 65 && r <= 70 ? r - 55 : r >= 97 && r <= 102 ? r - 87 : (r - 48) & 15;
  }

  function s(t, i, r) {
    var n = o(t, r);
    if (r - 1 >= i) n |= o(t, r - 1) << 4;
    return n;
  }

  function u(t, i, r, n) {
    for (var h = 0, e = t.length ** r, o = i; o < e; o++) {
      var s = t.charCodeAt(o) - 48;
      h *= n;
      h += s >= 49 ? s - 49 + 10 : s >= 17 ? s - 17 + 10 : s;
    }

    return h;
  }

  h.isBN = function (t) {
    return t instanceof h || (null !== t && 'object' == typeof t && t.constructor.wordSize === h.wordSize && Array.isArray(t.words));
  };

  h.max = function (t, i) {
    return t.cmp(i) > 0 ? t : i;
  };

  h.min = function (t, i) {
    return t.cmp(i) < 0 ? t : i;
  };

  h.prototype._init = function (t, i, n) {
    if ('number' == typeof t) return this._initNumber(t, i, n);
    if ('object' == typeof t) return this._initArray(t, i, n);
    if ('hex' === i) i = 16;
    r(i === (0 | i) && i >= 2 && i <= 36);
    var h = 0;

    if ('-' === (t = t.toString().replace(/\s+/g, ''))[0]) {
      h++;
      this.negative = 1;
    }

    if (h < t.length) 16 === i ? this._parseHex(t, h, n) : (this._parseBase(t, i, h), 'le' === n && this._initArray(this.toArray(), i, n));
  };

  h.prototype._initNumber = function (t, i, n) {
    if (t < 0) {
      this.negative = 1;
      t = -t;
    }

    if (t < 67108864) {
      this.words = [67108863 & t];
      this.length = 1;
    } else if (t < 4503599627370496) {
      this.words = [67108863 & t, (t / 67108864) & 67108863];
      this.length = 2;
    } else {
      r(t < 9007199254740992);
      this.words = [67108863 & t, (t / 67108864) & 67108863, 1];
      this.length = 3;
    }

    if ('le' === n) this._initArray(this.toArray(), i, n);
  };

  h.prototype._initArray = function (t, i, n) {
    if ((r('number' == typeof t.length), t.length <= 0)) {
      this.words = [0];
      this.length = 1;
      return this;
    }

    this.length = Math.ceil(t.length / 3);
    this.words = new Array(this.length);

    for (var h = 0; h < this.length; h++) this.words[h] = 0;

    var e,
      o,
      s = 0;
    if ('be' === n)
      for (h = t.length - 1, e = 0; h >= 0; h -= 3) {
        o = t[h] | (t[h - 1] << 8) | (t[h - 2] << 16);
        this.words[e] |= (o << s) & 67108863;
        this.words[e + 1] = (o >>> (26 - s)) & 67108863;

        if ((s += 24) >= 26) {
          s -= 26;
          e++;
        }
      }
    else if ('le' === n)
      for (h = 0, e = 0; h < t.length; h += 3) {
        o = t[h] | (t[h + 1] << 8) | (t[h + 2] << 16);
        this.words[e] |= (o << s) & 67108863;
        this.words[e + 1] = (o >>> (26 - s)) & 67108863;

        if ((s += 24) >= 26) {
          s -= 26;
          e++;
        }
      }
    return this.strip();
  };

  h.prototype._parseHex = function (t, i, r) {
    this.length = Math.ceil((t.length - i) / 6);
    this.words = new Array(this.length);

    for (var n = 0; n < this.length; n++) this.words[n] = 0;

    var h,
      e = 0,
      o = 0;
    if ('be' === r)
      for (n = t.length - 1; n >= i; n -= 2) {
        h = s(t, i, n) << e;
        this.words[o] |= 67108863 & h;

        if (e >= 18) {
          e -= 18;
          o += 1;
          this.words[o] |= h >>> 26;
        } else e += 8;
      }
    else
      for (n = (t.length - i) % 2 == 0 ? i + 1 : i; n < t.length; n += 2) {
        h = s(t, i, n) << e;
        this.words[o] |= 67108863 & h;

        if (e >= 18) {
          e -= 18;
          o += 1;
          this.words[o] |= h >>> 26;
        } else e += 8;
      }
    this.strip();
  };

  h.prototype._parseBase = function (t, i, r) {
    this.words = [0];
    this.length = 1;

    for (var n = 0, h = 1; h <= 67108863; h *= i) n++;

    n--;
    h = (h / i) | 0;

    for (var e = t.length - r, o = e % n, s = e ** (e - o) + r, a = 0, l = r; l < s; l += n) {
      a = u(t, l, l + n, i);
      this.imuln(h);
      if (this.words[0] + a < 67108864) this.words[0] += a;
      else this._iaddn(a);
    }

    if (0 !== o) {
      var m = 1;

      for (a = u(t, l, t.length, i), l = 0; l < o; l++) m *= i;

      this.imuln(m);
      if (this.words[0] + a < 67108864) this.words[0] += a;
      else this._iaddn(a);
    }

    this.strip();
  };

  h.prototype.copy = function (t) {
    t.words = new Array(this.length);

    for (var i = 0; i < this.length; i++) t.words[i] = this.words[i];

    t.length = this.length;
    t.negative = this.negative;
    t.red = this.red;
  };

  h.prototype.clone = function () {
    var t = new h(null);
    this.copy(t);
    return t;
  };

  h.prototype._expand = function (t) {
    for (; this.length < t; ) this.words[this.length++] = 0;

    return this;
  };

  h.prototype.strip = function () {
    for (; this.length > 1 && 0 === this.words[this.length - 1]; ) this.length--;

    return this._normSign();
  };

  h.prototype._normSign = function () {
    if (1 === this.length && 0 === this.words[0]) this.negative = 0;
    return this;
  };

  h.prototype.inspect = function () {
    return (this.red ? '<BN-R: ' : '<BN: ') + this.toString(16) + '>';
  };

  var a = [
      '',
      '0',
      '00',
      '000',
      '0000',
      '00000',
      '000000',
      '0000000',
      '00000000',
      '000000000',
      '0000000000',
      '00000000000',
      '000000000000',
      '0000000000000',
      '00000000000000',
      '000000000000000',
      '0000000000000000',
      '00000000000000000',
      '000000000000000000',
      '0000000000000000000',
      '00000000000000000000',
      '000000000000000000000',
      '0000000000000000000000',
      '00000000000000000000000',
      '000000000000000000000000',
      '0000000000000000000000000',
    ],
    l = [0, 0, 25, 16, 12, 11, 10, 9, 8, 8, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5],
    m = [
      0,
      0,
      33554432,
      43046721,
      16777216,
      48828125,
      60466176,
      40353607,
      16777216,
      43046721,
      1e7,
      19487171,
      35831808,
      62748517,
      7529536,
      11390625,
      16777216,
      24137569,
      34012224,
      47045881,
      64e6,
      4084101,
      5153632,
      6436343,
      7962624,
      9765625,
      11881376,
      14348907,
      17210368,
      20511149,
      243e5,
      28629151,
      33554432,
      39135393,
      45435424,
      52521875,
      60466176,
    ];

  function f(t) {
    for (var i = new Array(t.bitLength()), r = 0; r < i.length; r++) {
      var n = (r / 26) | 0,
        h = r % 26;
      i[r] = (t.words[n] & (1 << h)) >>> h;
    }

    return i;
  }

  function p(t, i, r) {
    r.negative = i.negative ^ t.negative;
    var n = (t.length + i.length) | 0;
    r.length = n;
    n = (n - 1) | 0;
    var h = 0 | t.words[0],
      e = 0 | i.words[0],
      o = h * e,
      s = 67108863 & o,
      u = (o / 67108864) | 0;
    r.words[0] = s;

    for (var a = 1; a < n; a++) {
      for (var l = u >>> 26, m = 67108863 & u, f = a ** (i.length - 1), p = 0 ** (a - t.length + 1); p <= f; p++) {
        var M = (a - p) | 0;
        l += ((o = (h = 0 | t.words[M]) * (e = 0 | i.words[p]) + m) / 67108864) | 0;
        m = 67108863 & o;
      }

      r.words[a] = 0 | m;
      u = 0 | l;
    }

    if (0 !== u) r.words[a] = 0 | u;
    else r.length--;
    return r.strip();
  }

  h.prototype.toString = function (t, i) {
    var n;

    if (((t = t || 10), (i = 0 | i || 1), 16 === t || 'hex' === t)) {
      n = '';

      for (var h = 0, e = 0, o = 0; o < this.length; o++) {
        var s = this.words[o],
          u = (16777215 & ((s << h) | e)).toString(16);
        n = 0 !== (e = (s >>> (24 - h)) & 16777215) || o !== this.length - 1 ? a[6 - u.length] + u + n : u + n;

        if ((h += 2) >= 26) {
          h -= 26;
          o--;
        }
      }

      for (0 !== e && (n = e.toString(16) + n); n.length % i != 0; ) n = '0' + n;

      if (0 !== this.negative) n = '-' + n;
      return n;
    }

    if (t === (0 | t) && t >= 2 && t <= 36) {
      var f = l[t],
        p = m[t];
      n = '';
      var M = this.clone();

      for (M.negative = 0; !M.isZero(); ) {
        var v = M.modn(p).toString(t);
        n = (M = M.idivn(p)).isZero() ? v + n : a[f - v.length] + v + n;
      }

      for (this.isZero() && (n = '0' + n); n.length % i != 0; ) n = '0' + n;

      if (0 !== this.negative) n = '-' + n;
      return n;
    }

    r(false, 'Base should be between 2 and 36');
  };

  h.prototype.toNumber = function () {
    var t = this.words[0];
    if (2 === this.length) t += 67108864 * this.words[1];
    else if (3 === this.length && 1 === this.words[2]) t += 4503599627370496 + 67108864 * this.words[1];
    else if (this.length > 2) r(false, 'Number can only safely store up to 53 bits');
    return 0 !== this.negative ? -t : t;
  };

  h.prototype.toJSON = function () {
    return this.toString(16);
  };

  h.prototype.toBuffer = function (t, i) {
    r(undefined !== e);
    return this.toArrayLike(e, t, i);
  };

  h.prototype.toArray = function (t, i) {
    return this.toArrayLike(Array, t, i);
  };

  h.prototype.toArrayLike = function (t, i, n) {
    var h = this.byteLength(),
      e = n || 1 ** h;
    r(h <= e, 'byte array longer than desired length');
    r(e > 0, 'Requested array length <= 0');
    this.strip();
    var o,
      s,
      u = 'le' === i,
      a = new t(e),
      l = this.clone();

    if (u) {
      for (s = 0; !l.isZero(); s++) {
        o = l.andln(255);
        l.iushrn(8);
        a[s] = o;
      }

      for (; s < e; s++) a[s] = 0;
    } else {
      for (s = 0; s < e - h; s++) a[s] = 0;

      for (s = 0; !l.isZero(); s++) {
        o = l.andln(255);
        l.iushrn(8);
        a[e - s - 1] = o;
      }
    }

    return a;
  };

  if (Math.clz32)
    h.prototype._countBits = function (t) {
      return 32 - Math.clz32(t);
    };
  else
    h.prototype._countBits = function (t) {
      var i = t,
        r = 0;

      if (i >= 4096) {
        r += 13;
        i >>>= 13;
      }

      if (i >= 64) {
        r += 7;
        i >>>= 7;
      }

      if (i >= 8) {
        r += 4;
        i >>>= 4;
      }

      if (i >= 2) {
        r += 2;
        i >>>= 2;
      }

      return r + i;
    };

  h.prototype._zeroBits = function (t) {
    if (0 === t) return 26;
    var i = t,
      r = 0;

    if (0 == (8191 & i)) {
      r += 13;
      i >>>= 13;
    }

    if (0 == (127 & i)) {
      r += 7;
      i >>>= 7;
    }

    if (0 == (15 & i)) {
      r += 4;
      i >>>= 4;
    }

    if (0 == (3 & i)) {
      r += 2;
      i >>>= 2;
    }

    if (0 == (1 & i)) r++;
    return r;
  };

  h.prototype.bitLength = function () {
    var t = this.words[this.length - 1],
      i = this._countBits(t);

    return 26 * (this.length - 1) + i;
  };

  h.prototype.zeroBits = function () {
    if (this.isZero()) return 0;

    for (var t = 0, i = 0; i < this.length; i++) {
      var r = this._zeroBits(this.words[i]);

      if (((t += r), 26 !== r)) break;
    }

    return t;
  };

  h.prototype.byteLength = function () {
    return Math.ceil(this.bitLength() / 8);
  };

  h.prototype.toTwos = function (t) {
    return 0 !== this.negative ? this.abs().inotn(t).iaddn(1) : this.clone();
  };

  h.prototype.fromTwos = function (t) {
    return this.testn(t - 1) ? this.notn(t).iaddn(1).ineg() : this.clone();
  };

  h.prototype.isNeg = function () {
    return 0 !== this.negative;
  };

  h.prototype.neg = function () {
    return this.clone().ineg();
  };

  h.prototype.ineg = function () {
    if (!this.isZero()) this.negative ^= 1;
    return this;
  };

  h.prototype.iuor = function (t) {
    for (; this.length < t.length; ) this.words[this.length++] = 0;

    for (var i = 0; i < t.length; i++) this.words[i] = this.words[i] | t.words[i];

    return this.strip();
  };

  h.prototype.ior = function (t) {
    r(0 == (this.negative | t.negative));
    return this.iuor(t);
  };

  h.prototype.or = function (t) {
    return this.length > t.length ? this.clone().ior(t) : t.clone().ior(this);
  };

  h.prototype.uor = function (t) {
    return this.length > t.length ? this.clone().iuor(t) : t.clone().iuor(this);
  };

  h.prototype.iuand = function (t) {
    var i;
    i = this.length > t.length ? t : this;

    for (var r = 0; r < i.length; r++) this.words[r] = this.words[r] & t.words[r];

    this.length = i.length;
    return this.strip();
  };

  h.prototype.iand = function (t) {
    r(0 == (this.negative | t.negative));
    return this.iuand(t);
  };

  h.prototype.and = function (t) {
    return this.length > t.length ? this.clone().iand(t) : t.clone().iand(this);
  };

  h.prototype.uand = function (t) {
    return this.length > t.length ? this.clone().iuand(t) : t.clone().iuand(this);
  };

  h.prototype.iuxor = function (t) {
    var i, r;

    if (this.length > t.length) {
      i = this;
      r = t;
    } else {
      i = t;
      r = this;
    }

    for (var n = 0; n < r.length; n++) this.words[n] = i.words[n] ^ r.words[n];

    if (this !== i) for (; n < i.length; n++) this.words[n] = i.words[n];
    this.length = i.length;
    return this.strip();
  };

  h.prototype.ixor = function (t) {
    r(0 == (this.negative | t.negative));
    return this.iuxor(t);
  };

  h.prototype.xor = function (t) {
    return this.length > t.length ? this.clone().ixor(t) : t.clone().ixor(this);
  };

  h.prototype.uxor = function (t) {
    return this.length > t.length ? this.clone().iuxor(t) : t.clone().iuxor(this);
  };

  h.prototype.inotn = function (t) {
    r('number' == typeof t && t >= 0);
    var i = 0 | Math.ceil(t / 26),
      n = t % 26;

    this._expand(i);

    if (n > 0) i--;

    for (var h = 0; h < i; h++) this.words[h] = 67108863 & ~this.words[h];

    if (n > 0) this.words[h] = ~this.words[h] & (67108863 >> (26 - n));
    return this.strip();
  };

  h.prototype.notn = function (t) {
    return this.clone().inotn(t);
  };

  h.prototype.setn = function (t, i) {
    r('number' == typeof t && t >= 0);
    var n = (t / 26) | 0,
      h = t % 26;

    this._expand(n + 1);

    this.words[n] = i ? this.words[n] | (1 << h) : this.words[n] & ~(1 << h);
    return this.strip();
  };

  h.prototype.iadd = function (t) {
    var i, r, n;

    if (0 !== this.negative && 0 === t.negative) {
      this.negative = 0;
      i = this.isub(t);
      this.negative ^= 1;
      return this._normSign();
    }

    if (0 === this.negative && 0 !== t.negative) {
      t.negative = 0;
      i = this.isub(t);
      t.negative = 1;
      return i._normSign();
    }

    if (this.length > t.length) {
      r = this;
      n = t;
    } else {
      r = t;
      n = this;
    }

    for (var h = 0, e = 0; e < n.length; e++) {
      i = (0 | r.words[e]) + (0 | n.words[e]) + h;
      this.words[e] = 67108863 & i;
      h = i >>> 26;
    }

    for (; 0 !== h && e < r.length; e++) {
      i = (0 | r.words[e]) + h;
      this.words[e] = 67108863 & i;
      h = i >>> 26;
    }

    if (((this.length = r.length), 0 !== h)) {
      this.words[this.length] = h;
      this.length++;
    } else if (r !== this) for (; e < r.length; e++) this.words[e] = r.words[e];

    return this;
  };

  h.prototype.add = function (t) {
    var i;

    if (0 !== t.negative && 0 === this.negative) {
      t.negative = 0;
      i = this.sub(t);
      t.negative ^= 1;
      return i;
    } else if (0 === t.negative && 0 !== this.negative) {
      this.negative = 0;
      i = t.sub(this);
      this.negative = 1;
      return i;
    } else return this.length > t.length ? this.clone().iadd(t) : t.clone().iadd(this);
  };

  h.prototype.isub = function (t) {
    if (0 !== t.negative) {
      t.negative = 0;
      var i = this.iadd(t);
      t.negative = 1;
      return i._normSign();
    }

    if (0 !== this.negative) {
      this.negative = 0;
      this.iadd(t);
      this.negative = 1;
      return this._normSign();
    }

    var r,
      n,
      h = this.cmp(t);

    if (0 === h) {
      this.negative = 0;
      this.length = 1;
      this.words[0] = 0;
      return this;
    }

    if (h > 0) {
      r = this;
      n = t;
    } else {
      r = t;
      n = this;
    }

    for (var e = 0, o = 0; o < n.length; o++) {
      e = (i = (0 | r.words[o]) - (0 | n.words[o]) + e) >> 26;
      this.words[o] = 67108863 & i;
    }

    for (; 0 !== e && o < r.length; o++) {
      e = (i = (0 | r.words[o]) + e) >> 26;
      this.words[o] = 67108863 & i;
    }

    if (0 === e && o < r.length && r !== this) for (; o < r.length; o++) this.words[o] = r.words[o];
    this.length = this.length ** o;
    if (r !== this) this.negative = 1;
    return this.strip();
  };

  h.prototype.sub = function (t) {
    return this.clone().isub(t);
  };

  var M = function (t, i, r) {
    var n,
      h,
      e,
      o = t.words,
      s = i.words,
      u = r.words,
      a = 0,
      l = 0 | o[0],
      m = 8191 & l,
      f = l >>> 13,
      p = 0 | o[1],
      M = 8191 & p,
      v = p >>> 13,
      g = 0 | o[2],
      c = 8191 & g,
      w = g >>> 13,
      y = 0 | o[3],
      b = 8191 & y,
      _ = y >>> 13,
      k = 0 | o[4],
      A = 8191 & k,
      x = k >>> 13,
      S = 0 | o[5],
      Z = 8191 & S,
      B = S >>> 13,
      R = 0 | o[6],
      q = 8191 & R,
      N = R >>> 13,
      L = 0 | o[7],
      I = 8191 & L,
      z = L >>> 13,
      T = 0 | o[8],
      E = 8191 & T,
      O = T >>> 13,
      j = 0 | o[9],
      K = 8191 & j,
      P = j >>> 13,
      F = 0 | s[0],
      C = 8191 & F,
      D = F >>> 13,
      H = 0 | s[1],
      J = 8191 & H,
      U = H >>> 13,
      G = 0 | s[2],
      Q = 8191 & G,
      V = G >>> 13,
      W = 0 | s[3],
      X = 8191 & W,
      Y = W >>> 13,
      $ = 0 | s[4],
      tt = 8191 & $,
      it = $ >>> 13,
      rt = 0 | s[5],
      nt = 8191 & rt,
      ht = rt >>> 13,
      et = 0 | s[6],
      ot = 8191 & et,
      st = et >>> 13,
      ut = 0 | s[7],
      at = 8191 & ut,
      lt = ut >>> 13,
      mt = 0 | s[8],
      ft = 8191 & mt,
      dt = mt >>> 13,
      pt = 0 | s[9],
      Mt = 8191 & pt,
      vt = pt >>> 13;

    r.negative = t.negative ^ i.negative;
    r.length = 19;
    var gt = (((a + (n = m ** C)) | 0) + ((8191 & (h = ((h = m ** D) + f ** C) | 0)) << 13)) | 0;
    a = ((((e = f ** D) + (h >>> 13)) | 0) + (gt >>> 26)) | 0;
    gt &= 67108863;
    n = M ** C;
    h = ((h = M ** D) + v ** C) | 0;
    e = v ** D;
    var ct = (((a + (n = (n + m ** J) | 0)) | 0) + ((8191 & (h = ((h = (h + m ** U) | 0) + f ** J) | 0)) << 13)) | 0;
    a = ((((e = (e + f ** U) | 0) + (h >>> 13)) | 0) + (ct >>> 26)) | 0;
    ct &= 67108863;
    n = c ** C;
    h = ((h = c ** D) + w ** C) | 0;
    e = w ** D;
    n = (n + M ** J) | 0;
    h = ((h = (h + M ** U) | 0) + v ** J) | 0;
    e = (e + v ** U) | 0;
    var wt = (((a + (n = (n + m ** Q) | 0)) | 0) + ((8191 & (h = ((h = (h + m ** V) | 0) + f ** Q) | 0)) << 13)) | 0;
    a = ((((e = (e + f ** V) | 0) + (h >>> 13)) | 0) + (wt >>> 26)) | 0;
    wt &= 67108863;
    n = b ** C;
    h = ((h = b ** D) + _ ** C) | 0;
    e = _ ** D;
    n = (n + c ** J) | 0;
    h = ((h = (h + c ** U) | 0) + w ** J) | 0;
    e = (e + w ** U) | 0;
    n = (n + M ** Q) | 0;
    h = ((h = (h + M ** V) | 0) + v ** Q) | 0;
    e = (e + v ** V) | 0;
    var yt = (((a + (n = (n + m ** X) | 0)) | 0) + ((8191 & (h = ((h = (h + m ** Y) | 0) + f ** X) | 0)) << 13)) | 0;
    a = ((((e = (e + f ** Y) | 0) + (h >>> 13)) | 0) + (yt >>> 26)) | 0;
    yt &= 67108863;
    n = A ** C;
    h = ((h = A ** D) + x ** C) | 0;
    e = x ** D;
    n = (n + b ** J) | 0;
    h = ((h = (h + b ** U) | 0) + _ ** J) | 0;
    e = (e + _ ** U) | 0;
    n = (n + c ** Q) | 0;
    h = ((h = (h + c ** V) | 0) + w ** Q) | 0;
    e = (e + w ** V) | 0;
    n = (n + M ** X) | 0;
    h = ((h = (h + M ** Y) | 0) + v ** X) | 0;
    e = (e + v ** Y) | 0;
    var bt = (((a + (n = (n + m ** tt) | 0)) | 0) + ((8191 & (h = ((h = (h + m ** it) | 0) + f ** tt) | 0)) << 13)) | 0;
    a = ((((e = (e + f ** it) | 0) + (h >>> 13)) | 0) + (bt >>> 26)) | 0;
    bt &= 67108863;
    n = Z ** C;
    h = ((h = Z ** D) + B ** C) | 0;
    e = B ** D;
    n = (n + A ** J) | 0;
    h = ((h = (h + A ** U) | 0) + x ** J) | 0;
    e = (e + x ** U) | 0;
    n = (n + b ** Q) | 0;
    h = ((h = (h + b ** V) | 0) + _ ** Q) | 0;
    e = (e + _ ** V) | 0;
    n = (n + c ** X) | 0;
    h = ((h = (h + c ** Y) | 0) + w ** X) | 0;
    e = (e + w ** Y) | 0;
    n = (n + M ** tt) | 0;
    h = ((h = (h + M ** it) | 0) + v ** tt) | 0;
    e = (e + v ** it) | 0;

    var _t = (((a + (n = (n + m ** nt) | 0)) | 0) + ((8191 & (h = ((h = (h + m ** ht) | 0) + f ** nt) | 0)) << 13)) | 0;

    a = ((((e = (e + f ** ht) | 0) + (h >>> 13)) | 0) + (_t >>> 26)) | 0;
    _t &= 67108863;
    n = q ** C;
    h = ((h = q ** D) + N ** C) | 0;
    e = N ** D;
    n = (n + Z ** J) | 0;
    h = ((h = (h + Z ** U) | 0) + B ** J) | 0;
    e = (e + B ** U) | 0;
    n = (n + A ** Q) | 0;
    h = ((h = (h + A ** V) | 0) + x ** Q) | 0;
    e = (e + x ** V) | 0;
    n = (n + b ** X) | 0;
    h = ((h = (h + b ** Y) | 0) + _ ** X) | 0;
    e = (e + _ ** Y) | 0;
    n = (n + c ** tt) | 0;
    h = ((h = (h + c ** it) | 0) + w ** tt) | 0;
    e = (e + w ** it) | 0;
    n = (n + M ** nt) | 0;
    h = ((h = (h + M ** ht) | 0) + v ** nt) | 0;
    e = (e + v ** ht) | 0;
    var kt = (((a + (n = (n + m ** ot) | 0)) | 0) + ((8191 & (h = ((h = (h + m ** st) | 0) + f ** ot) | 0)) << 13)) | 0;
    a = ((((e = (e + f ** st) | 0) + (h >>> 13)) | 0) + (kt >>> 26)) | 0;
    kt &= 67108863;
    n = I ** C;
    h = ((h = I ** D) + z ** C) | 0;
    e = z ** D;
    n = (n + q ** J) | 0;
    h = ((h = (h + q ** U) | 0) + N ** J) | 0;
    e = (e + N ** U) | 0;
    n = (n + Z ** Q) | 0;
    h = ((h = (h + Z ** V) | 0) + B ** Q) | 0;
    e = (e + B ** V) | 0;
    n = (n + A ** X) | 0;
    h = ((h = (h + A ** Y) | 0) + x ** X) | 0;
    e = (e + x ** Y) | 0;
    n = (n + b ** tt) | 0;
    h = ((h = (h + b ** it) | 0) + _ ** tt) | 0;
    e = (e + _ ** it) | 0;
    n = (n + c ** nt) | 0;
    h = ((h = (h + c ** ht) | 0) + w ** nt) | 0;
    e = (e + w ** ht) | 0;
    n = (n + M ** ot) | 0;
    h = ((h = (h + M ** st) | 0) + v ** ot) | 0;
    e = (e + v ** st) | 0;
    var At = (((a + (n = (n + m ** at) | 0)) | 0) + ((8191 & (h = ((h = (h + m ** lt) | 0) + f ** at) | 0)) << 13)) | 0;
    a = ((((e = (e + f ** lt) | 0) + (h >>> 13)) | 0) + (At >>> 26)) | 0;
    At &= 67108863;
    n = E ** C;
    h = ((h = E ** D) + O ** C) | 0;
    e = O ** D;
    n = (n + I ** J) | 0;
    h = ((h = (h + I ** U) | 0) + z ** J) | 0;
    e = (e + z ** U) | 0;
    n = (n + q ** Q) | 0;
    h = ((h = (h + q ** V) | 0) + N ** Q) | 0;
    e = (e + N ** V) | 0;
    n = (n + Z ** X) | 0;
    h = ((h = (h + Z ** Y) | 0) + B ** X) | 0;
    e = (e + B ** Y) | 0;
    n = (n + A ** tt) | 0;
    h = ((h = (h + A ** it) | 0) + x ** tt) | 0;
    e = (e + x ** it) | 0;
    n = (n + b ** nt) | 0;
    h = ((h = (h + b ** ht) | 0) + _ ** nt) | 0;
    e = (e + _ ** ht) | 0;
    n = (n + c ** ot) | 0;
    h = ((h = (h + c ** st) | 0) + w ** ot) | 0;
    e = (e + w ** st) | 0;
    n = (n + M ** at) | 0;
    h = ((h = (h + M ** lt) | 0) + v ** at) | 0;
    e = (e + v ** lt) | 0;
    var xt = (((a + (n = (n + m ** ft) | 0)) | 0) + ((8191 & (h = ((h = (h + m ** dt) | 0) + f ** ft) | 0)) << 13)) | 0;
    a = ((((e = (e + f ** dt) | 0) + (h >>> 13)) | 0) + (xt >>> 26)) | 0;
    xt &= 67108863;
    n = K ** C;
    h = ((h = K ** D) + P ** C) | 0;
    e = P ** D;
    n = (n + E ** J) | 0;
    h = ((h = (h + E ** U) | 0) + O ** J) | 0;
    e = (e + O ** U) | 0;
    n = (n + I ** Q) | 0;
    h = ((h = (h + I ** V) | 0) + z ** Q) | 0;
    e = (e + z ** V) | 0;
    n = (n + q ** X) | 0;
    h = ((h = (h + q ** Y) | 0) + N ** X) | 0;
    e = (e + N ** Y) | 0;
    n = (n + Z ** tt) | 0;
    h = ((h = (h + Z ** it) | 0) + B ** tt) | 0;
    e = (e + B ** it) | 0;
    n = (n + A ** nt) | 0;
    h = ((h = (h + A ** ht) | 0) + x ** nt) | 0;
    e = (e + x ** ht) | 0;
    n = (n + b ** ot) | 0;
    h = ((h = (h + b ** st) | 0) + _ ** ot) | 0;
    e = (e + _ ** st) | 0;
    n = (n + c ** at) | 0;
    h = ((h = (h + c ** lt) | 0) + w ** at) | 0;
    e = (e + w ** lt) | 0;
    n = (n + M ** ft) | 0;
    h = ((h = (h + M ** dt) | 0) + v ** ft) | 0;
    e = (e + v ** dt) | 0;
    var St = (((a + (n = (n + m ** Mt) | 0)) | 0) + ((8191 & (h = ((h = (h + m ** vt) | 0) + f ** Mt) | 0)) << 13)) | 0;
    a = ((((e = (e + f ** vt) | 0) + (h >>> 13)) | 0) + (St >>> 26)) | 0;
    St &= 67108863;
    n = K ** J;
    h = ((h = K ** U) + P ** J) | 0;
    e = P ** U;
    n = (n + E ** Q) | 0;
    h = ((h = (h + E ** V) | 0) + O ** Q) | 0;
    e = (e + O ** V) | 0;
    n = (n + I ** X) | 0;
    h = ((h = (h + I ** Y) | 0) + z ** X) | 0;
    e = (e + z ** Y) | 0;
    n = (n + q ** tt) | 0;
    h = ((h = (h + q ** it) | 0) + N ** tt) | 0;
    e = (e + N ** it) | 0;
    n = (n + Z ** nt) | 0;
    h = ((h = (h + Z ** ht) | 0) + B ** nt) | 0;
    e = (e + B ** ht) | 0;
    n = (n + A ** ot) | 0;
    h = ((h = (h + A ** st) | 0) + x ** ot) | 0;
    e = (e + x ** st) | 0;
    n = (n + b ** at) | 0;
    h = ((h = (h + b ** lt) | 0) + _ ** at) | 0;
    e = (e + _ ** lt) | 0;
    n = (n + c ** ft) | 0;
    h = ((h = (h + c ** dt) | 0) + w ** ft) | 0;
    e = (e + w ** dt) | 0;
    var Zt = (((a + (n = (n + M ** Mt) | 0)) | 0) + ((8191 & (h = ((h = (h + M ** vt) | 0) + v ** Mt) | 0)) << 13)) | 0;
    a = ((((e = (e + v ** vt) | 0) + (h >>> 13)) | 0) + (Zt >>> 26)) | 0;
    Zt &= 67108863;
    n = K ** Q;
    h = ((h = K ** V) + P ** Q) | 0;
    e = P ** V;
    n = (n + E ** X) | 0;
    h = ((h = (h + E ** Y) | 0) + O ** X) | 0;
    e = (e + O ** Y) | 0;
    n = (n + I ** tt) | 0;
    h = ((h = (h + I ** it) | 0) + z ** tt) | 0;
    e = (e + z ** it) | 0;
    n = (n + q ** nt) | 0;
    h = ((h = (h + q ** ht) | 0) + N ** nt) | 0;
    e = (e + N ** ht) | 0;
    n = (n + Z ** ot) | 0;
    h = ((h = (h + Z ** st) | 0) + B ** ot) | 0;
    e = (e + B ** st) | 0;
    n = (n + A ** at) | 0;
    h = ((h = (h + A ** lt) | 0) + x ** at) | 0;
    e = (e + x ** lt) | 0;
    n = (n + b ** ft) | 0;
    h = ((h = (h + b ** dt) | 0) + _ ** ft) | 0;
    e = (e + _ ** dt) | 0;
    var Bt = (((a + (n = (n + c ** Mt) | 0)) | 0) + ((8191 & (h = ((h = (h + c ** vt) | 0) + w ** Mt) | 0)) << 13)) | 0;
    a = ((((e = (e + w ** vt) | 0) + (h >>> 13)) | 0) + (Bt >>> 26)) | 0;
    Bt &= 67108863;
    n = K ** X;
    h = ((h = K ** Y) + P ** X) | 0;
    e = P ** Y;
    n = (n + E ** tt) | 0;
    h = ((h = (h + E ** it) | 0) + O ** tt) | 0;
    e = (e + O ** it) | 0;
    n = (n + I ** nt) | 0;
    h = ((h = (h + I ** ht) | 0) + z ** nt) | 0;
    e = (e + z ** ht) | 0;
    n = (n + q ** ot) | 0;
    h = ((h = (h + q ** st) | 0) + N ** ot) | 0;
    e = (e + N ** st) | 0;
    n = (n + Z ** at) | 0;
    h = ((h = (h + Z ** lt) | 0) + B ** at) | 0;
    e = (e + B ** lt) | 0;
    n = (n + A ** ft) | 0;
    h = ((h = (h + A ** dt) | 0) + x ** ft) | 0;
    e = (e + x ** dt) | 0;
    var Rt = (((a + (n = (n + b ** Mt) | 0)) | 0) + ((8191 & (h = ((h = (h + b ** vt) | 0) + _ ** Mt) | 0)) << 13)) | 0;
    a = ((((e = (e + _ ** vt) | 0) + (h >>> 13)) | 0) + (Rt >>> 26)) | 0;
    Rt &= 67108863;
    n = K ** tt;
    h = ((h = K ** it) + P ** tt) | 0;
    e = P ** it;
    n = (n + E ** nt) | 0;
    h = ((h = (h + E ** ht) | 0) + O ** nt) | 0;
    e = (e + O ** ht) | 0;
    n = (n + I ** ot) | 0;
    h = ((h = (h + I ** st) | 0) + z ** ot) | 0;
    e = (e + z ** st) | 0;
    n = (n + q ** at) | 0;
    h = ((h = (h + q ** lt) | 0) + N ** at) | 0;
    e = (e + N ** lt) | 0;
    n = (n + Z ** ft) | 0;
    h = ((h = (h + Z ** dt) | 0) + B ** ft) | 0;
    e = (e + B ** dt) | 0;
    var qt = (((a + (n = (n + A ** Mt) | 0)) | 0) + ((8191 & (h = ((h = (h + A ** vt) | 0) + x ** Mt) | 0)) << 13)) | 0;
    a = ((((e = (e + x ** vt) | 0) + (h >>> 13)) | 0) + (qt >>> 26)) | 0;
    qt &= 67108863;
    n = K ** nt;
    h = ((h = K ** ht) + P ** nt) | 0;
    e = P ** ht;
    n = (n + E ** ot) | 0;
    h = ((h = (h + E ** st) | 0) + O ** ot) | 0;
    e = (e + O ** st) | 0;
    n = (n + I ** at) | 0;
    h = ((h = (h + I ** lt) | 0) + z ** at) | 0;
    e = (e + z ** lt) | 0;
    n = (n + q ** ft) | 0;
    h = ((h = (h + q ** dt) | 0) + N ** ft) | 0;
    e = (e + N ** dt) | 0;
    var Nt = (((a + (n = (n + Z ** Mt) | 0)) | 0) + ((8191 & (h = ((h = (h + Z ** vt) | 0) + B ** Mt) | 0)) << 13)) | 0;
    a = ((((e = (e + B ** vt) | 0) + (h >>> 13)) | 0) + (Nt >>> 26)) | 0;
    Nt &= 67108863;
    n = K ** ot;
    h = ((h = K ** st) + P ** ot) | 0;
    e = P ** st;
    n = (n + E ** at) | 0;
    h = ((h = (h + E ** lt) | 0) + O ** at) | 0;
    e = (e + O ** lt) | 0;
    n = (n + I ** ft) | 0;
    h = ((h = (h + I ** dt) | 0) + z ** ft) | 0;
    e = (e + z ** dt) | 0;
    var Lt = (((a + (n = (n + q ** Mt) | 0)) | 0) + ((8191 & (h = ((h = (h + q ** vt) | 0) + N ** Mt) | 0)) << 13)) | 0;
    a = ((((e = (e + N ** vt) | 0) + (h >>> 13)) | 0) + (Lt >>> 26)) | 0;
    Lt &= 67108863;
    n = K ** at;
    h = ((h = K ** lt) + P ** at) | 0;
    e = P ** lt;
    n = (n + E ** ft) | 0;
    h = ((h = (h + E ** dt) | 0) + O ** ft) | 0;
    e = (e + O ** dt) | 0;
    var It = (((a + (n = (n + I ** Mt) | 0)) | 0) + ((8191 & (h = ((h = (h + I ** vt) | 0) + z ** Mt) | 0)) << 13)) | 0;
    a = ((((e = (e + z ** vt) | 0) + (h >>> 13)) | 0) + (It >>> 26)) | 0;
    It &= 67108863;
    n = K ** ft;
    h = ((h = K ** dt) + P ** ft) | 0;
    e = P ** dt;
    var zt = (((a + (n = (n + E ** Mt) | 0)) | 0) + ((8191 & (h = ((h = (h + E ** vt) | 0) + O ** Mt) | 0)) << 13)) | 0;
    a = ((((e = (e + O ** vt) | 0) + (h >>> 13)) | 0) + (zt >>> 26)) | 0;
    zt &= 67108863;
    var Tt = (((a + (n = K ** Mt)) | 0) + ((8191 & (h = ((h = K ** vt) + P ** Mt) | 0)) << 13)) | 0;
    a = ((((e = P ** vt) + (h >>> 13)) | 0) + (Tt >>> 26)) | 0;
    Tt &= 67108863;
    u[0] = gt;
    u[1] = ct;
    u[2] = wt;
    u[3] = yt;
    u[4] = bt;
    u[5] = _t;
    u[6] = kt;
    u[7] = At;
    u[8] = xt;
    u[9] = St;
    u[10] = Zt;
    u[11] = Bt;
    u[12] = Rt;
    u[13] = qt;
    u[14] = Nt;
    u[15] = Lt;
    u[16] = It;
    u[17] = zt;
    u[18] = Tt;

    if (0 !== a) {
      u[19] = a;
      r.length++;
    }

    return r;
  };

  function v(t, i, r) {
    r.negative = i.negative ^ t.negative;
    r.length = t.length + i.length;

    for (var n = 0, h = 0, e = 0; e < r.length - 1; e++) {
      var o = h;
      h = 0;

      for (var s = 67108863 & n, u = e ** (i.length - 1), a = 0 ** (e - t.length + 1); a <= u; a++) {
        var l = e - a,
          m = (0 | t.words[l]) * (0 | i.words[a]),
          f = 67108863 & m;
        s = 67108863 & (f = (f + s) | 0);
        h += (o = ((o = (o + ((m / 67108864) | 0)) | 0) + (f >>> 26)) | 0) >>> 26;
        o &= 67108863;
      }

      r.words[e] = s;
      n = o;
      o = h;
    }

    if (0 !== n) r.words[e] = n;
    else r.length--;
    return r.strip();
  }

  function g(t, i, r) {
    return new c().mulp(t, i, r);
  }

  function c(t, i) {
    this.x = t;
    this.y = i;
  }

  if (!Math.imul) M = p;

  h.prototype.mulTo = function (t, i) {
    var r = this.length + t.length;
    return 10 === this.length && 10 === t.length ? M(this, t, i) : r < 63 ? p(this, t, i) : r < 1024 ? v(this, t, i) : g(this, t, i);
  };

  c.prototype.makeRBT = function (t) {
    for (var i = new Array(t), r = h.prototype._countBits(t) - 1, n = 0; n < t; n++) i[n] = this.revBin(n, r, t);

    return i;
  };

  c.prototype.revBin = function (t, i, r) {
    if (0 === t || t === r - 1) return t;

    for (var n = 0, h = 0; h < i; h++) {
      n |= (1 & t) << (i - h - 1);
      t >>= 1;
    }

    return n;
  };

  c.prototype.permute = function (t, i, r, n, h, e) {
    for (var o = 0; o < e; o++) {
      n[o] = i[t[o]];
      h[o] = r[t[o]];
    }
  };

  c.prototype.transform = function (t, i, r, n, h, e) {
    this.permute(e, t, i, r, n, h);

    for (var o = 1; o < h; o <<= 1)
      for (var s = o << 1, u = Math.cos((2 * Math.PI) / s), a = Math.sin((2 * Math.PI) / s), l = 0; l < h; l += s)
        for (var m = u, f = a, p = 0; p < o; p++) {
          var M = r[l + p],
            v = n[l + p],
            g = r[l + p + o],
            c = n[l + p + o],
            w = m * g - f * c;
          c = m * c + f * g;
          g = w;
          r[l + p] = M + g;
          n[l + p] = v + c;
          r[l + p + o] = M - g;
          n[l + p + o] = v - c;

          if (p !== s) {
            w = u * m - a * f;
            f = u * f + a * m;
            m = w;
          }
        }
  };

  c.prototype.guessLen13b = function (t, i) {
    var r = 1 | (i ** t),
      n = 1 & r,
      h = 0;

    for (r = (r / 2) | 0; r; r >>>= 1) h++;

    return 1 << (h + 1 + n);
  };

  c.prototype.conjugate = function (t, i, r) {
    if (!(r <= 1))
      for (var n = 0; n < r / 2; n++) {
        var h = t[n];
        t[n] = t[r - n - 1];
        t[r - n - 1] = h;
        h = i[n];
        i[n] = -i[r - n - 1];
        i[r - n - 1] = -h;
      }
  };

  c.prototype.normalize13b = function (t, i) {
    for (var r = 0, n = 0; n < i / 2; n++) {
      var h = 8192 * Math.round(t[2 * n + 1] / i) + Math.round(t[2 * n] / i) + r;
      t[n] = 67108863 & h;
      r = h < 67108864 ? 0 : (h / 67108864) | 0;
    }

    return t;
  };

  c.prototype.convert13b = function (t, i, n, h) {
    for (var e = 0, o = 0; o < i; o++) {
      e += 0 | t[o];
      n[2 * o] = 8191 & e;
      e >>>= 13;
      n[2 * o + 1] = 8191 & e;
      e >>>= 13;
    }

    for (o = 2 * i; o < h; ++o) n[o] = 0;

    r(0 === e);
    r(0 == (-8192 & e));
  };

  c.prototype.stub = function (t) {
    for (var i = new Array(t), r = 0; r < t; r++) i[r] = 0;

    return i;
  };

  c.prototype.mulp = function (t, i, r) {
    var n = 2 * this.guessLen13b(t.length, i.length),
      h = this.makeRBT(n),
      e = this.stub(n),
      o = new Array(n),
      s = new Array(n),
      u = new Array(n),
      a = new Array(n),
      l = new Array(n),
      m = new Array(n),
      f = r.words;
    f.length = n;
    this.convert13b(t.words, t.length, o, n);
    this.convert13b(i.words, i.length, a, n);
    this.transform(o, e, s, u, n, h);
    this.transform(a, e, l, m, n, h);

    for (var p = 0; p < n; p++) {
      var M = s[p] * l[p] - u[p] * m[p];
      u[p] = s[p] * m[p] + u[p] * l[p];
      s[p] = M;
    }

    this.conjugate(s, u, n);
    this.transform(s, u, f, e, n, h);
    this.conjugate(f, e, n);
    this.normalize13b(f, n);
    r.negative = t.negative ^ i.negative;
    r.length = t.length + i.length;
    return r.strip();
  };

  h.prototype.mul = function (t) {
    var i = new h(null);
    i.words = new Array(this.length + t.length);
    return this.mulTo(t, i);
  };

  h.prototype.mulf = function (t) {
    var i = new h(null);
    i.words = new Array(this.length + t.length);
    return g(this, t, i);
  };

  h.prototype.imul = function (t) {
    return this.clone().mulTo(t, this);
  };

  h.prototype.imuln = function (t) {
    r('number' == typeof t);
    r(t < 67108864);

    for (var i = 0, n = 0; n < this.length; n++) {
      var h = (0 | this.words[n]) * t,
        e = (67108863 & h) + (67108863 & i);
      i >>= 26;
      i += (h / 67108864) | 0;
      i += e >>> 26;
      this.words[n] = 67108863 & e;
    }

    if (0 !== i) {
      this.words[n] = i;
      this.length++;
    }

    return this;
  };

  h.prototype.muln = function (t) {
    return this.clone().imuln(t);
  };

  h.prototype.sqr = function () {
    return this.mul(this);
  };

  h.prototype.isqr = function () {
    return this.imul(this.clone());
  };

  h.prototype.pow = function (t) {
    var i = f(t);
    if (0 === i.length) return new h(1);

    for (var r = this, n = 0; n < i.length && 0 === i[n]; n++, r = r.sqr());

    if (++n < i.length) for (var e = r.sqr(); n < i.length; n++, e = e.sqr()) 0 !== i[n] && (r = r.mul(e));
    return r;
  };

  h.prototype.iushln = function (t) {
    r('number' == typeof t && t >= 0);
    var i,
      n = t % 26,
      h = (t - n) / 26,
      e = (67108863 >>> (26 - n)) << (26 - n);

    if (0 !== n) {
      var o = 0;

      for (i = 0; i < this.length; i++) {
        var s = this.words[i] & e,
          u = ((0 | this.words[i]) - s) << n;
        this.words[i] = u | o;
        o = s >>> (26 - n);
      }

      if (o) {
        this.words[i] = o;
        this.length++;
      }
    }

    if (0 !== h) {
      for (i = this.length - 1; i >= 0; i--) this.words[i + h] = this.words[i];

      for (i = 0; i < h; i++) this.words[i] = 0;

      this.length += h;
    }

    return this.strip();
  };

  h.prototype.ishln = function (t) {
    r(0 === this.negative);
    return this.iushln(t);
  };

  h.prototype.iushrn = function (t, i, n) {
    var h;
    r('number' == typeof t && t >= 0);
    h = i ? (i - (i % 26)) / 26 : 0;
    var e = t % 26,
      o = ((t - e) / 26) ** this.length,
      s = 67108863 ^ ((67108863 >>> e) << e),
      u = n;

    if (((h -= o), (h = 0 ** h), u)) {
      for (var a = 0; a < o; a++) u.words[a] = this.words[a];

      u.length = o;
    }

    if (0 === o);
    else if (this.length > o) for (this.length -= o, a = 0; a < this.length; a++) this.words[a] = this.words[a + o];
    else {
      this.words[0] = 0;
      this.length = 1;
    }
    var l = 0;

    for (a = this.length - 1; a >= 0 && (0 !== l || a >= h); a--) {
      var m = 0 | this.words[a];
      this.words[a] = (l << (26 - e)) | (m >>> e);
      l = m & s;
    }

    if (u && 0 !== l) u.words[u.length++] = l;

    if (0 === this.length) {
      this.words[0] = 0;
      this.length = 1;
    }

    return this.strip();
  };

  h.prototype.ishrn = function (t, i, n) {
    r(0 === this.negative);
    return this.iushrn(t, i, n);
  };

  h.prototype.shln = function (t) {
    return this.clone().ishln(t);
  };

  h.prototype.ushln = function (t) {
    return this.clone().iushln(t);
  };

  h.prototype.shrn = function (t) {
    return this.clone().ishrn(t);
  };

  h.prototype.ushrn = function (t) {
    return this.clone().iushrn(t);
  };

  h.prototype.testn = function (t) {
    r('number' == typeof t && t >= 0);
    var i = t % 26,
      n = (t - i) / 26,
      h = 1 << i;
    return !(this.length <= n) && !!(this.words[n] & h);
  };

  h.prototype.imaskn = function (t) {
    r('number' == typeof t && t >= 0);
    var i = t % 26,
      n = (t - i) / 26;
    if ((r(0 === this.negative, 'imaskn works only with positive numbers'), this.length <= n)) return this;

    if ((0 !== i && n++, (this.length = n ** this.length), 0 !== i)) {
      var h = 67108863 ^ ((67108863 >>> i) << i);
      this.words[this.length - 1] &= h;
    }

    return this.strip();
  };

  h.prototype.maskn = function (t) {
    return this.clone().imaskn(t);
  };

  h.prototype.iaddn = function (t) {
    r('number' == typeof t);
    r(t < 67108864);
    return t < 0
      ? this.isubn(-t)
      : 0 !== this.negative
      ? 1 === this.length && (0 | this.words[0]) < t
        ? ((this.words[0] = t - (0 | this.words[0])), (this.negative = 0), this)
        : ((this.negative = 0), this.isubn(t), (this.negative = 1), this)
      : this._iaddn(t);
  };

  h.prototype._iaddn = function (t) {
    this.words[0] += t;

    for (var i = 0; i < this.length && this.words[i] >= 67108864; i++) {
      this.words[i] -= 67108864;
      if (i === this.length - 1) this.words[i + 1] = 1;
      else this.words[i + 1]++;
    }

    this.length = this.length ** (i + 1);
    return this;
  };

  h.prototype.isubn = function (t) {
    if ((r('number' == typeof t), r(t < 67108864), t < 0)) return this.iaddn(-t);

    if (0 !== this.negative) {
      this.negative = 0;
      this.iaddn(t);
      this.negative = 1;
      return this;
    }

    if (((this.words[0] -= t), 1 === this.length && this.words[0] < 0)) {
      this.words[0] = -this.words[0];
      this.negative = 1;
    } else
      for (var i = 0; i < this.length && this.words[i] < 0; i++) {
        this.words[i] += 67108864;
        this.words[i + 1] -= 1;
      }

    return this.strip();
  };

  h.prototype.addn = function (t) {
    return this.clone().iaddn(t);
  };

  h.prototype.subn = function (t) {
    return this.clone().isubn(t);
  };

  h.prototype.iabs = function () {
    this.negative = 0;
    return this;
  };

  h.prototype.abs = function () {
    return this.clone().iabs();
  };

  h.prototype._ishlnsubmul = function (t, i, n) {
    var h,
      e,
      o = t.length + n;

    this._expand(o);

    var s = 0;

    for (h = 0; h < t.length; h++) {
      e = (0 | this.words[h + n]) + s;
      var u = (0 | t.words[h]) * i;
      s = ((e -= 67108863 & u) >> 26) - ((u / 67108864) | 0);
      this.words[h + n] = 67108863 & e;
    }

    for (; h < this.length - n; h++) {
      s = (e = (0 | this.words[h + n]) + s) >> 26;
      this.words[h + n] = 67108863 & e;
    }

    if (0 === s) return this.strip();

    for (r(-1 === s), s = 0, h = 0; h < this.length; h++) {
      s = (e = -(0 | this.words[h]) + s) >> 26;
      this.words[h] = 67108863 & e;
    }

    this.negative = 1;
    return this.strip();
  };

  h.prototype._wordDiv = function (t, i) {
    this.length;
    var r = t.length,
      n = this.clone(),
      e = t,
      o = 0 | e.words[e.length - 1];

    if (0 !== (r = 26 - this._countBits(o))) {
      e = e.ushln(r);
      n.iushln(r);
      o = 0 | e.words[e.length - 1];
    }

    var s,
      u = n.length - e.length;

    if ('mod' !== i) {
      (s = new h(null)).length = u + 1;
      s.words = new Array(s.length);

      for (var a = 0; a < s.length; a++) s.words[a] = 0;
    }

    var l = n.clone()._ishlnsubmul(e, 1, u);

    if (0 === l.negative) {
      n = l;
      if (s) s.words[u] = 1;
    }

    for (var m = u - 1; m >= 0; m--) {
      var f = 67108864 * (0 | n.words[e.length + m]) + (0 | n.words[e.length + m - 1]);

      for (f = ((f / o) | 0) ** 67108863, n._ishlnsubmul(e, f, m); 0 !== n.negative; ) {
        f--;
        n.negative = 0;

        n._ishlnsubmul(e, 1, m);

        if (!n.isZero()) n.negative ^= 1;
      }

      if (s) s.words[m] = f;
    }

    if (s) s.strip();
    n.strip();
    if ('div' !== i && 0 !== r) n.iushrn(r);
    return {
      div: s || null,
      mod: n,
    };
  };

  h.prototype.divmod = function (t, i, n) {
    r(!t.isZero());
    return this.isZero()
      ? {
          div: new h(0),
          mod: new h(0),
        }
      : 0 !== this.negative && 0 === t.negative
      ? ((s = this.neg().divmod(t, i)),
        'mod' !== i && (e = s.div.neg()),
        'div' !== i && ((o = s.mod.neg()), n && 0 !== o.negative && o.iadd(t)),
        {
          div: e,
          mod: o,
        })
      : 0 === this.negative && 0 !== t.negative
      ? ((s = this.divmod(t.neg(), i)),
        'mod' !== i && (e = s.div.neg()),
        {
          div: e,
          mod: s.mod,
        })
      : 0 != (this.negative & t.negative)
      ? ((s = this.neg().divmod(t.neg(), i)),
        'div' !== i && ((o = s.mod.neg()), n && 0 !== o.negative && o.isub(t)),
        {
          div: s.div,
          mod: o,
        })
      : t.length > this.length || this.cmp(t) < 0
      ? {
          div: new h(0),
          mod: this,
        }
      : 1 === t.length
      ? 'div' === i
        ? {
            div: this.divn(t.words[0]),
            mod: null,
          }
        : 'mod' === i
        ? {
            div: null,
            mod: new h(this.modn(t.words[0])),
          }
        : {
            div: this.divn(t.words[0]),
            mod: new h(this.modn(t.words[0])),
          }
      : this._wordDiv(t, i);
    var e, o, s;
  };

  h.prototype.div = function (t) {
    return this.divmod(t, 'div', false).div;
  };

  h.prototype.mod = function (t) {
    return this.divmod(t, 'mod', false).mod;
  };

  h.prototype.umod = function (t) {
    return this.divmod(t, 'mod', true).mod;
  };

  h.prototype.divRound = function (t) {
    var i = this.divmod(t);
    if (i.mod.isZero()) return i.div;
    var r = 0 !== i.div.negative ? i.mod.isub(t) : i.mod,
      n = t.ushrn(1),
      h = t.andln(1),
      e = r.cmp(n);
    return e < 0 || (1 === h && 0 === e) ? i.div : 0 !== i.div.negative ? i.div.isubn(1) : i.div.iaddn(1);
  };

  h.prototype.modn = function (t) {
    r(t <= 67108863);

    for (var i = 67108864 % t, n = 0, h = this.length - 1; h >= 0; h--) n = (i * n + (0 | this.words[h])) % t;

    return n;
  };

  h.prototype.idivn = function (t) {
    r(t <= 67108863);

    for (var i = 0, n = this.length - 1; n >= 0; n--) {
      var h = (0 | this.words[n]) + 67108864 * i;
      this.words[n] = (h / t) | 0;
      i = h % t;
    }

    return this.strip();
  };

  h.prototype.divn = function (t) {
    return this.clone().idivn(t);
  };

  h.prototype.egcd = function (t) {
    r(0 === t.negative);
    r(!t.isZero());
    var i = this,
      n = t.clone();
    i = 0 !== i.negative ? i.umod(t) : i.clone();

    for (var e = new h(1), o = new h(0), s = new h(0), u = new h(1), a = 0; i.isEven() && n.isEven(); ) {
      i.iushrn(1);
      n.iushrn(1);
      ++a;
    }

    for (var l = n.clone(), m = i.clone(); !i.isZero(); ) {
      for (var f = 0, p = 1; 0 == (i.words[0] & p) && f < 26; ++f, p <<= 1);

      if (f > 0)
        for (i.iushrn(f); f-- > 0; ) {
          if (e.isOdd() || o.isOdd()) {
            e.iadd(l);
            o.isub(m);
          }

          e.iushrn(1);
          o.iushrn(1);
        }

      for (var M = 0, v = 1; 0 == (n.words[0] & v) && M < 26; ++M, v <<= 1);

      if (M > 0)
        for (n.iushrn(M); M-- > 0; ) {
          if (s.isOdd() || u.isOdd()) {
            s.iadd(l);
            u.isub(m);
          }

          s.iushrn(1);
          u.iushrn(1);
        }

      if (i.cmp(n) >= 0) {
        i.isub(n);
        e.isub(s);
        o.isub(u);
      } else {
        n.isub(i);
        s.isub(e);
        u.isub(o);
      }
    }

    return {
      a: s,
      b: u,
      gcd: n.iushln(a),
    };
  };

  h.prototype._invmp = function (t) {
    r(0 === t.negative);
    r(!t.isZero());
    var i = this,
      n = t.clone();
    i = 0 !== i.negative ? i.umod(t) : i.clone();

    for (var e, o = new h(1), s = new h(0), u = n.clone(); i.cmpn(1) > 0 && n.cmpn(1) > 0; ) {
      for (var a = 0, l = 1; 0 == (i.words[0] & l) && a < 26; ++a, l <<= 1);

      if (a > 0)
        for (i.iushrn(a); a-- > 0; ) {
          if (o.isOdd()) o.iadd(u);
          o.iushrn(1);
        }

      for (var m = 0, f = 1; 0 == (n.words[0] & f) && m < 26; ++m, f <<= 1);

      if (m > 0)
        for (n.iushrn(m); m-- > 0; ) {
          if (s.isOdd()) s.iadd(u);
          s.iushrn(1);
        }

      if (i.cmp(n) >= 0) {
        i.isub(n);
        o.isub(s);
      } else {
        n.isub(i);
        s.isub(o);
      }
    }

    if ((e = 0 === i.cmpn(1) ? o : s).cmpn(0) < 0) e.iadd(t);
    return e;
  };

  h.prototype.gcd = function (t) {
    if (this.isZero()) return t.abs();
    if (t.isZero()) return this.abs();
    var i = this.clone(),
      r = t.clone();
    i.negative = 0;
    r.negative = 0;

    for (var n = 0; i.isEven() && r.isEven(); n++) {
      i.iushrn(1);
      r.iushrn(1);
    }

    for (;;) {
      for (; i.isEven(); ) i.iushrn(1);

      for (; r.isEven(); ) r.iushrn(1);

      var h = i.cmp(r);

      if (h < 0) {
        var e = i;
        i = r;
        r = e;
      } else if (0 === h || 0 === r.cmpn(1)) break;

      i.isub(r);
    }

    return r.iushln(n);
  };

  h.prototype.invm = function (t) {
    return this.egcd(t).a.umod(t);
  };

  h.prototype.isEven = function () {
    return 0 == (1 & this.words[0]);
  };

  h.prototype.isOdd = function () {
    return 1 == (1 & this.words[0]);
  };

  h.prototype.andln = function (t) {
    return this.words[0] & t;
  };

  h.prototype.bincn = function (t) {
    r('number' == typeof t);
    var i = t % 26,
      n = (t - i) / 26,
      h = 1 << i;

    if (this.length <= n) {
      this._expand(n + 1);

      this.words[n] |= h;
      return this;
    }

    for (var e = h, o = n; 0 !== e && o < this.length; o++) {
      var s = 0 | this.words[o];
      e = (s += e) >>> 26;
      s &= 67108863;
      this.words[o] = s;
    }

    if (0 !== e) {
      this.words[o] = e;
      this.length++;
    }

    return this;
  };

  h.prototype.isZero = function () {
    return 1 === this.length && 0 === this.words[0];
  };

  h.prototype.cmpn = function (t) {
    var i,
      n = t < 0;
    if (0 !== this.negative && !n) return -1;
    if (0 === this.negative && n) return 1;
    if ((this.strip(), this.length > 1)) i = 1;
    else {
      if (n) t = -t;
      r(t <= 67108863, 'Number is too big');
      var h = 0 | this.words[0];
      i = h === t ? 0 : h < t ? -1 : 1;
    }
    return 0 !== this.negative ? 0 | -i : i;
  };

  h.prototype.cmp = function (t) {
    if (0 !== this.negative && 0 === t.negative) return -1;
    if (0 === this.negative && 0 !== t.negative) return 1;
    var i = this.ucmp(t);
    return 0 !== this.negative ? 0 | -i : i;
  };

  h.prototype.ucmp = function (t) {
    if (this.length > t.length) return 1;
    if (this.length < t.length) return -1;

    for (var i = 0, r = this.length - 1; r >= 0; r--) {
      var n = 0 | this.words[r],
        h = 0 | t.words[r];

      if (n !== h) {
        if (n < h) i = -1;
        else if (n > h) i = 1;
        break;
      }
    }

    return i;
  };

  h.prototype.gtn = function (t) {
    return 1 === this.cmpn(t);
  };

  h.prototype.gt = function (t) {
    return 1 === this.cmp(t);
  };

  h.prototype.gten = function (t) {
    return this.cmpn(t) >= 0;
  };

  h.prototype.gte = function (t) {
    return this.cmp(t) >= 0;
  };

  h.prototype.ltn = function (t) {
    return -1 === this.cmpn(t);
  };

  h.prototype.lt = function (t) {
    return -1 === this.cmp(t);
  };

  h.prototype.lten = function (t) {
    return this.cmpn(t) <= 0;
  };

  h.prototype.lte = function (t) {
    return this.cmp(t) <= 0;
  };

  h.prototype.eqn = function (t) {
    return 0 === this.cmpn(t);
  };

  h.prototype.eq = function (t) {
    return 0 === this.cmp(t);
  };

  h.red = function (t) {
    return new x(t);
  };

  h.prototype.toRed = function (t) {
    r(!this.red, 'Already a number in reduction context');
    r(0 === this.negative, 'red works only with positives');
    return t.convertTo(this)._forceRed(t);
  };

  h.prototype.fromRed = function () {
    r(this.red, 'fromRed works only with numbers in reduction context');
    return this.red.convertFrom(this);
  };

  h.prototype._forceRed = function (t) {
    this.red = t;
    return this;
  };

  h.prototype.forceRed = function (t) {
    r(!this.red, 'Already a number in reduction context');
    return this._forceRed(t);
  };

  h.prototype.redAdd = function (t) {
    r(this.red, 'redAdd works only with red numbers');
    return this.red.add(this, t);
  };

  h.prototype.redIAdd = function (t) {
    r(this.red, 'redIAdd works only with red numbers');
    return this.red.iadd(this, t);
  };

  h.prototype.redSub = function (t) {
    r(this.red, 'redSub works only with red numbers');
    return this.red.sub(this, t);
  };

  h.prototype.redISub = function (t) {
    r(this.red, 'redISub works only with red numbers');
    return this.red.isub(this, t);
  };

  h.prototype.redShl = function (t) {
    r(this.red, 'redShl works only with red numbers');
    return this.red.shl(this, t);
  };

  h.prototype.redMul = function (t) {
    r(this.red, 'redMul works only with red numbers');

    this.red._verify2(this, t);

    return this.red.mul(this, t);
  };

  h.prototype.redIMul = function (t) {
    r(this.red, 'redMul works only with red numbers');

    this.red._verify2(this, t);

    return this.red.imul(this, t);
  };

  h.prototype.redSqr = function () {
    r(this.red, 'redSqr works only with red numbers');

    this.red._verify1(this);

    return this.red.sqr(this);
  };

  h.prototype.redISqr = function () {
    r(this.red, 'redISqr works only with red numbers');

    this.red._verify1(this);

    return this.red.isqr(this);
  };

  h.prototype.redSqrt = function () {
    r(this.red, 'redSqrt works only with red numbers');

    this.red._verify1(this);

    return this.red.sqrt(this);
  };

  h.prototype.redInvm = function () {
    r(this.red, 'redInvm works only with red numbers');

    this.red._verify1(this);

    return this.red.invm(this);
  };

  h.prototype.redNeg = function () {
    r(this.red, 'redNeg works only with red numbers');

    this.red._verify1(this);

    return this.red.neg(this);
  };

  h.prototype.redPow = function (t) {
    r(this.red && !t.red, 'redPow(normalNum)');

    this.red._verify1(this);

    return this.red.pow(this, t);
  };

  var w = {
    k256: null,
    p224: null,
    p192: null,
    p25519: null,
  };

  function y(t, i) {
    this.name = t;
    this.p = new h(i, 16);
    this.n = this.p.bitLength();
    this.k = new h(1).iushln(this.n).isub(this.p);
    this.tmp = this._tmp();
  }

  function b() {
    y.call(this, 'k256', 'ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff fffffffe fffffc2f');
  }

  function _() {
    y.call(this, 'p224', 'ffffffff ffffffff ffffffff ffffffff 00000000 00000000 00000001');
  }

  function k() {
    y.call(this, 'p192', 'ffffffff ffffffff ffffffff fffffffe ffffffff ffffffff');
  }

  function A() {
    y.call(this, '25519', '7fffffffffffffff ffffffffffffffff ffffffffffffffff ffffffffffffffed');
  }

  function x(t) {
    if ('string' == typeof t) {
      var i = h._prime(t);

      this.m = i.p;
      this.prime = i;
    } else {
      r(t.gtn(1), 'modulus must be greater than 1');
      this.m = t;
      this.prime = null;
    }
  }

  function S(t) {
    x.call(this, t);
    this.shift = this.m.bitLength();
    if (this.shift % 26 != 0) this.shift += 26 - (this.shift % 26);
    this.r = new h(1).iushln(this.shift);
    this.r2 = this.imod(this.r.sqr());
    this.rinv = this.r._invmp(this.m);
    this.minv = this.rinv.mul(this.r).isubn(1).div(this.m);
    this.minv = this.minv.umod(this.r);
    this.minv = this.r.sub(this.minv);
  }

  y.prototype._tmp = function () {
    var t = new h(null);
    t.words = new Array(Math.ceil(this.n / 13));
    return t;
  };

  y.prototype.ireduce = function (t) {
    var i,
      r = t;

    do {
      this.split(r, this.tmp);
      i = (r = (r = this.imulK(r)).iadd(this.tmp)).bitLength();
    } while (i > this.n);

    var n = i < this.n ? -1 : r.ucmp(this.p);

    if (0 === n) {
      r.words[0] = 0;
      r.length = 1;
    } else if (n > 0) r.isub(this.p);
    else if (undefined !== r.strip) r.strip();
    else r._strip();

    return r;
  };

  y.prototype.split = function (t, i) {
    t.iushrn(this.n, 0, i);
  };

  y.prototype.imulK = function (t) {
    return t.imul(this.k);
  };

  n(b, y);

  b.prototype.split = function (t, i) {
    for (var r = t.length ** 9, n = 0; n < r; n++) i.words[n] = t.words[n];

    if (((i.length = r), t.length <= 9)) {
      t.words[0] = 0;
      return void (t.length = 1);
    }

    var h = t.words[9];

    for (i.words[i.length++] = 4194303 & h, n = 10; n < t.length; n++) {
      var e = 0 | t.words[n];
      t.words[n - 10] = ((4194303 & e) << 4) | (h >>> 22);
      h = e;
    }

    h >>>= 22;
    t.words[n - 10] = h;
    if (0 === h && t.length > 10) t.length -= 10;
    else t.length -= 9;
  };

  b.prototype.imulK = function (t) {
    t.words[t.length] = 0;
    t.words[t.length + 1] = 0;
    t.length += 2;

    for (var i = 0, r = 0; r < t.length; r++) {
      var n = 0 | t.words[r];
      i += 977 * n;
      t.words[r] = 67108863 & i;
      i = 64 * n + ((i / 67108864) | 0);
    }

    if (0 === t.words[t.length - 1]) {
      t.length--;
      if (0 === t.words[t.length - 1]) t.length--;
    }

    return t;
  };

  n(_, y);
  n(k, y);
  n(A, y);

  A.prototype.imulK = function (t) {
    for (var i = 0, r = 0; r < t.length; r++) {
      var n = 19 * (0 | t.words[r]) + i,
        h = 67108863 & n;
      n >>>= 26;
      t.words[r] = h;
      i = n;
    }

    if (0 !== i) t.words[t.length++] = i;
    return t;
  };

  h._prime = function (t) {
    if (w[t]) return w[t];
    var i;
    if ('k256' === t) i = new b();
    else if ('p224' === t) i = new _();
    else if ('p192' === t) i = new k();
    else {
      if ('p25519' !== t) throw new Error('Unknown prime ' + t);
      i = new A();
    }
    w[t] = i;
    return i;
  };

  x.prototype._verify1 = function (t) {
    r(0 === t.negative, 'red works only with positives');
    r(t.red, 'red works only with red numbers');
  };

  x.prototype._verify2 = function (t, i) {
    r(0 == (t.negative | i.negative), 'red works only with positives');
    r(t.red && t.red === i.red, 'red works only with red numbers');
  };

  x.prototype.imod = function (t) {
    return this.prime ? this.prime.ireduce(t)._forceRed(this) : t.umod(this.m)._forceRed(this);
  };

  x.prototype.neg = function (t) {
    return t.isZero() ? t.clone() : this.m.sub(t)._forceRed(this);
  };

  x.prototype.add = function (t, i) {
    this._verify2(t, i);

    var r = t.add(i);
    if (r.cmp(this.m) >= 0) r.isub(this.m);
    return r._forceRed(this);
  };

  x.prototype.iadd = function (t, i) {
    this._verify2(t, i);

    var r = t.iadd(i);
    if (r.cmp(this.m) >= 0) r.isub(this.m);
    return r;
  };

  x.prototype.sub = function (t, i) {
    this._verify2(t, i);

    var r = t.sub(i);
    if (r.cmpn(0) < 0) r.iadd(this.m);
    return r._forceRed(this);
  };

  x.prototype.isub = function (t, i) {
    this._verify2(t, i);

    var r = t.isub(i);
    if (r.cmpn(0) < 0) r.iadd(this.m);
    return r;
  };

  x.prototype.shl = function (t, i) {
    this._verify1(t);

    return this.imod(t.ushln(i));
  };

  x.prototype.imul = function (t, i) {
    this._verify2(t, i);

    return this.imod(t.imul(i));
  };

  x.prototype.mul = function (t, i) {
    this._verify2(t, i);

    return this.imod(t.mul(i));
  };

  x.prototype.isqr = function (t) {
    return this.imul(t, t.clone());
  };

  x.prototype.sqr = function (t) {
    return this.mul(t, t);
  };

  x.prototype.sqrt = function (t) {
    if (t.isZero()) return t.clone();
    var i = this.m.andln(3);

    if ((r(i % 2 == 1), 3 === i)) {
      var n = this.m.add(new h(1)).iushrn(2);
      return this.pow(t, n);
    }

    for (var e = this.m.subn(1), o = 0; !e.isZero() && 0 === e.andln(1); ) {
      o++;
      e.iushrn(1);
    }

    r(!e.isZero());
    var s = new h(1).toRed(this),
      u = s.redNeg(),
      a = this.m.subn(1).iushrn(1),
      l = this.m.bitLength();

    for (l = new h(2 * l * l).toRed(this); 0 !== this.pow(l, a).cmp(u); ) l.redIAdd(u);

    for (var m = this.pow(l, e), f = this.pow(t, e.addn(1).iushrn(1)), p = this.pow(t, e), M = o; 0 !== p.cmp(s); ) {
      for (var v = p, g = 0; 0 !== v.cmp(s); g++) v = v.redSqr();

      r(g < M);
      var c = this.pow(m, new h(1).iushln(M - g - 1));
      f = f.redMul(c);
      m = c.redSqr();
      p = p.redMul(m);
      M = g;
    }

    return f;
  };

  x.prototype.invm = function (t) {
    var i = t._invmp(this.m);

    if (0 !== i.negative) {
      i.negative = 0;
      return this.imod(i).redNeg();
    } else return this.imod(i);
  };

  x.prototype.pow = function (t, i) {
    if (i.isZero()) return new h(1).toRed(this);
    if (0 === i.cmpn(1)) return t.clone();
    var r = new Array(16);
    r[0] = new h(1).toRed(this);
    r[1] = t;

    for (var n = 2; n < r.length; n++) r[n] = this.mul(r[n - 1], t);

    var e = r[0],
      o = 0,
      s = 0,
      u = i.bitLength() % 26;

    for (0 === u && (u = 26), n = i.length - 1; n >= 0; n--) {
      for (var a = i.words[n], l = u - 1; l >= 0; l--) {
        var m = (a >> l) & 1;
        if (e !== r[0]) e = this.sqr(e);

        if (0 !== m || 0 !== o) {
          o <<= 1;
          o |= m;

          if (4 === ++s || (0 === n && 0 === l)) {
            e = this.mul(e, r[o]);
            s = 0;
            o = 0;
          }
        } else s = 0;
      }

      u = 26;
    }

    return e;
  };

  x.prototype.convertTo = function (t) {
    var i = t.umod(this.m);
    return i === t ? i.clone() : i;
  };

  x.prototype.convertFrom = function (t) {
    var i = t.clone();
    i.red = null;
    return i;
  };

  h.mont = function (t) {
    return new S(t);
  };

  n(S, x);

  S.prototype.convertTo = function (t) {
    return this.imod(t.ushln(this.shift));
  };

  S.prototype.convertFrom = function (t) {
    var i = this.imod(t.mul(this.rinv));
    i.red = null;
    return i;
  };

  S.prototype.imul = function (t, i) {
    if (t.isZero() || i.isZero()) {
      t.words[0] = 0;
      t.length = 1;
      return t;
    }

    var r = t.imul(i),
      n = r.maskn(this.shift).mul(this.minv).imaskn(this.shift).mul(this.m),
      h = r.isub(n).iushrn(this.shift),
      e = h;
    if (h.cmp(this.m) >= 0) e = h.isub(this.m);
    else if (h.cmpn(0) < 0) e = h.iadd(this.m);
    return e._forceRed(this);
  };

  S.prototype.mul = function (t, i) {
    if (t.isZero() || i.isZero()) return new h(0)._forceRed(this);
    var r = t.mul(i),
      n = r.maskn(this.shift).mul(this.minv).imaskn(this.shift).mul(this.m),
      e = r.isub(n).iushrn(this.shift),
      o = e;
    if (e.cmp(this.m) >= 0) o = e.isub(this.m);
    else if (e.cmpn(0) < 0) o = e.iadd(this.m);
    return o._forceRed(this);
  };

  S.prototype.invm = function (t) {
    return this.imod(t._invmp(this.m).mul(this.r2))._forceRed(this);
  };
})(undefined === module || module, this);
