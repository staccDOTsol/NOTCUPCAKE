!(function () {
  'use strict';

  var t = 'input is invalid type',
    n = 'object' == typeof window,
    i = n ? window : {};
  if (i.JS_SHA3_NO_WINDOW) n = false;
  var o = !n && 'object' == typeof self;
  if (!i.JS_SHA3_NO_NODE_JS && 'object' == typeof process && process.versions && process.versions.node) i = globals;
  else if (o) i = self;
  var s = !i.JS_SHA3_NO_COMMON_JS && 'object' == typeof module && module.exports,
    f = 'function' == typeof define && define.amd,
    u = !i.JS_SHA3_NO_ARRAY_BUFFER && 'undefined' != typeof ArrayBuffer,
    c = '0123456789abcdef'.split(''),
    h = [4, 1024, 262144, 67108864],
    p = [0, 8, 16, 24],
    y = [
      1,
      0,
      32898,
      0,
      32906,
      2147483648,
      2147516416,
      2147483648,
      32907,
      0,
      2147483649,
      0,
      2147516545,
      2147483648,
      32777,
      2147483648,
      138,
      0,
      136,
      0,
      2147516425,
      0,
      2147483658,
      0,
      2147516555,
      0,
      139,
      2147483648,
      32905,
      2147483648,
      32771,
      2147483648,
      32770,
      2147483648,
      128,
      2147483648,
      32778,
      0,
      2147483658,
      2147483648,
      2147516545,
      2147483648,
      32896,
      2147483648,
      2147483649,
      0,
      2147516424,
      2147483648,
    ],
    l = [224, 256, 384, 512],
    b = [128, 256],
    A = ['hex', 'buffer', 'arrayBuffer', 'array', 'digest'],
    w = {
      128: 168,
      256: 136,
    };
  if (!(!i.JS_SHA3_NO_NODE_JS && Array.isArray))
    Array.isArray = function (t) {
      return '[object Array]' === Object.prototype.toString.call(t);
    };
  if (!(!u || (!i.JS_SHA3_NO_ARRAY_BUFFER_IS_VIEW && ArrayBuffer.isView)))
    ArrayBuffer.isView = function (t) {
      return 'object' == typeof t && t.buffer && t.buffer.constructor === ArrayBuffer;
    };

  for (
    var v = function (t, n, i) {
        return function (o) {
          return new I(t, n, t).update(o)[i]();
        };
      },
      B = function (t, n, i) {
        return function (o, s) {
          return new I(t, n, s).update(o)[i]();
        };
      },
      _ = function (t, n, i) {
        return function (n, o, s, f) {
          return E['cshake' + t].update(n, o, s, f)[i]();
        };
      },
      k = function (t, n, i) {
        return function (n, o, s, f) {
          return E['kmac' + t].update(n, o, s, f)[i]();
        };
      },
      S = function (t, n, i, o) {
        for (var s = 0; s < A.length; ++s) {
          var f = A[s];
          t[f] = n(i, o, f);
        }

        return t;
      },
      C = function (t, n) {
        var i = v(t, n, 'hex');

        i.create = function () {
          return new I(t, n, t);
        };

        i.update = function (t) {
          return i.create().update(t);
        };

        return S(i, v, t, n);
      },
      x = [
        {
          name: 'keccak',
          padding: [1, 256, 65536, 16777216],
          bits: l,
          createMethod: C,
        },
        {
          name: 'sha3',
          padding: [6, 1536, 393216, 100663296],
          bits: l,
          createMethod: C,
        },
        {
          name: 'shake',
          padding: [31, 7936, 2031616, 520093696],
          bits: b,
          createMethod: function (t, n) {
            var i = B(t, n, 'hex');

            i.create = function (i) {
              return new I(t, n, i);
            };

            i.update = function (t, n) {
              return i.create(n).update(t);
            };

            return S(i, B, t, n);
          },
        },
        {
          name: 'cshake',
          padding: h,
          bits: b,
          createMethod: function (t, n) {
            var i = w[t],
              o = _(t, 0, 'hex');

            o.create = function (o, s, f) {
              return s || f ? new I(t, n, o).bytepad([s, f], i) : E['shake' + t].create(o);
            };

            o.update = function (t, n, i, s) {
              return o.create(n, i, s).update(t);
            };

            return S(o, _, t, n);
          },
        },
        {
          name: 'kmac',
          padding: h,
          bits: b,
          createMethod: function (t, n) {
            var i = w[t],
              o = k(t, 0, 'hex');

            o.create = function (o, s, f) {
              return new R(t, n, s).bytepad(['KMAC', f], i).bytepad([o], i);
            };

            o.update = function (t, n, i, s) {
              return o.create(t, i, s).update(n);
            };

            return S(o, k, t, n);
          },
        },
      ],
      E = {},
      O = [],
      z = 0;
    z < x.length;
    ++z
  )
    for (var N = x[z], j = N.bits, J = 0; J < j.length; ++J) {
      var M = N.name + '_' + j[J];

      if ((O.push(M), (E[M] = N.createMethod(j[J], N.padding)), 'sha3' !== N.name)) {
        var H = N.name + j[J];
        O.push(H);
        E[H] = E[M];
      }
    }

  function I(t, n, i) {
    this.blocks = [];
    this.s = [];
    this.padding = n;
    this.outputBits = i;
    this.reset = true;
    this.finalized = false;
    this.block = 0;
    this.start = 0;
    this.blockCount = (1600 - (t << 1)) >> 5;
    this.byteCount = this.blockCount << 2;
    this.outputBlocks = i >> 5;
    this.extraBytes = (31 & i) >> 3;

    for (var o = 0; o < 50; ++o) this.s[o] = 0;
  }

  function R(t, n, i) {
    I.call(this, t, n, i);
  }

  I.prototype.update = function (n) {
    if (this.finalized) throw new Error('finalize already called');
    var i,
      o = typeof n;

    if ('string' !== o) {
      if ('object' !== o) throw new Error(t);
      if (null === n) throw new Error(t);
      if (u && n.constructor === ArrayBuffer) n = new Uint8Array(n);
      else if (!(Array.isArray(n) || (u && ArrayBuffer.isView(n)))) throw new Error(t);
      i = true;
    }

    for (var s, f, c = this.blocks, h = this.byteCount, y = n.length, l = this.blockCount, b = 0, A = this.s; b < y; ) {
      if (this.reset) for (this.reset = false, c[0] = this.block, s = 1; s < l + 1; ++s) c[s] = 0;
      if (i) for (s = this.start; b < y && s < h; ++b) c[s >> 2] |= n[b] << p[3 & s++];
      else
        for (s = this.start; b < y && s < h; ++b)
          (f = n.charCodeAt(b)) < 128
            ? (c[s >> 2] |= f << p[3 & s++])
            : f < 2048
            ? ((c[s >> 2] |= (192 | (f >> 6)) << p[3 & s++]), (c[s >> 2] |= (128 | (63 & f)) << p[3 & s++]))
            : f < 55296 || f >= 57344
            ? ((c[s >> 2] |= (224 | (f >> 12)) << p[3 & s++]), (c[s >> 2] |= (128 | ((f >> 6) & 63)) << p[3 & s++]), (c[s >> 2] |= (128 | (63 & f)) << p[3 & s++]))
            : ((f = 65536 + (((1023 & f) << 10) | (1023 & n.charCodeAt(++b)))),
              (c[s >> 2] |= (240 | (f >> 18)) << p[3 & s++]),
              (c[s >> 2] |= (128 | ((f >> 12) & 63)) << p[3 & s++]),
              (c[s >> 2] |= (128 | ((f >> 6) & 63)) << p[3 & s++]),
              (c[s >> 2] |= (128 | (63 & f)) << p[3 & s++]));

      if (((this.lastByteIndex = s), s >= h)) {
        for (this.start = s - h, this.block = c[l], s = 0; s < l; ++s) A[s] ^= c[s];

        U(A);
        this.reset = true;
      } else this.start = s;
    }

    return this;
  };

  I.prototype.encode = function (t, n) {
    var i = 255 & t,
      o = 1,
      s = [i];

    for (i = 255 & (t >>= 8); i > 0; ) {
      s.unshift(i);
      i = 255 & (t >>= 8);
      ++o;
    }

    if (n) s.push(o);
    else s.unshift(o);
    this.update(s);
    return s.length;
  };

  I.prototype.encodeString = function (n) {
    var i,
      o = typeof n;

    if ('string' !== o) {
      if ('object' !== o) throw new Error(t);
      if (null === n) throw new Error(t);
      if (u && n.constructor === ArrayBuffer) n = new Uint8Array(n);
      else if (!(Array.isArray(n) || (u && ArrayBuffer.isView(n)))) throw new Error(t);
      i = true;
    }

    var s = 0,
      f = n.length;
    if (i) s = f;
    else
      for (var c = 0; c < n.length; ++c) {
        var h = n.charCodeAt(c);
        if (h < 128) s += 1;
        else if (h < 2048) s += 2;
        else if (h < 55296 || h >= 57344) s += 3;
        else {
          h = 65536 + (((1023 & h) << 10) | (1023 & n.charCodeAt(++c)));
          s += 4;
        }
      }
    s += this.encode(8 * s);
    this.update(n);
    return s;
  };

  I.prototype.bytepad = function (t, n) {
    for (var i = this.encode(n), o = 0; o < t.length; ++o) i += this.encodeString(t[o]);

    var s = n - (i % n),
      f = [];
    f.length = s;
    this.update(f);
    return this;
  };

  I.prototype.finalize = function () {
    if (!this.finalized) {
      this.finalized = true;
      var t = this.blocks,
        n = this.lastByteIndex,
        i = this.blockCount,
        o = this.s;
      if (((t[n >> 2] |= this.padding[3 & n]), this.lastByteIndex === this.byteCount)) for (t[0] = t[i], n = 1; n < i + 1; ++n) t[n] = 0;

      for (t[i - 1] |= 2147483648, n = 0; n < i; ++n) o[n] ^= t[n];

      U(o);
    }
  };

  I.prototype.toString = I.prototype.hex = function () {
    this.finalize();

    for (var t, n = this.blockCount, i = this.s, o = this.outputBlocks, s = this.extraBytes, f = 0, u = 0, h = ''; u < o; ) {
      for (f = 0; f < n && u < o; ++f, ++u) {
        t = i[f];
        h += c[(t >> 4) & 15] + c[15 & t] + c[(t >> 12) & 15] + c[(t >> 8) & 15] + c[(t >> 20) & 15] + c[(t >> 16) & 15] + c[(t >> 28) & 15] + c[(t >> 24) & 15];
      }

      if (u % n == 0) {
        U(i);
        f = 0;
      }
    }

    if (s) {
      t = i[f];
      h += c[(t >> 4) & 15] + c[15 & t];
      if (s > 1) h += c[(t >> 12) & 15] + c[(t >> 8) & 15];
      if (s > 2) h += c[(t >> 20) & 15] + c[(t >> 16) & 15];
    }

    return h;
  };

  I.prototype.arrayBuffer = function () {
    this.finalize();
    var t,
      n = this.blockCount,
      i = this.s,
      o = this.outputBlocks,
      s = this.extraBytes,
      f = 0,
      u = 0,
      c = this.outputBits >> 3;
    t = s ? new ArrayBuffer((o + 1) << 2) : new ArrayBuffer(c);

    for (var h = new Uint32Array(t); u < o; ) {
      for (f = 0; f < n && u < o; ++f, ++u) h[u] = i[f];

      if (u % n == 0) U(i);
    }

    if (s) {
      h[f] = i[f];
      t = t.slice(0, c);
    }

    return t;
  };

  I.prototype.buffer = I.prototype.arrayBuffer;

  I.prototype.digest = I.prototype.array = function () {
    this.finalize();

    for (var t, n, i = this.blockCount, o = this.s, s = this.outputBlocks, f = this.extraBytes, u = 0, c = 0, h = []; c < s; ) {
      for (u = 0; u < i && c < s; ++u, ++c) {
        t = c << 2;
        n = o[u];
        h[t] = 255 & n;
        h[t + 1] = (n >> 8) & 255;
        h[t + 2] = (n >> 16) & 255;
        h[t + 3] = (n >> 24) & 255;
      }

      if (c % i == 0) U(o);
    }

    if (f) {
      t = c << 2;
      n = o[u];
      h[t] = 255 & n;
      if (f > 1) h[t + 1] = (n >> 8) & 255;
      if (f > 2) h[t + 2] = (n >> 16) & 255;
    }

    return h;
  };

  R.prototype = new I();

  R.prototype.finalize = function () {
    this.encode(this.outputBits, true);
    return I.prototype.finalize.call(this);
  };

  var U = function (t) {
    var n,
      i,
      o,
      s,
      f,
      u,
      c,
      h,
      p,
      l,
      b,
      A,
      w,
      v,
      B,
      _,
      k,
      S,
      C,
      x,
      E,
      O,
      z,
      N,
      j,
      J,
      M,
      H,
      I,
      R,
      U,
      V,
      F,
      D,
      W,
      Y,
      K,
      q,
      G,
      L,
      P,
      Q,
      T,
      X,
      Z,
      $,
      tt,
      rt,
      et,
      nt,
      it,
      ot,
      at,
      st,
      ft,
      ut,
      ct,
      ht,
      pt,
      dt,
      yt,
      lt,
      bt;

    for (o = 0; o < 48; o += 2) {
      s = t[0] ^ t[10] ^ t[20] ^ t[30] ^ t[40];
      f = t[1] ^ t[11] ^ t[21] ^ t[31] ^ t[41];
      u = t[2] ^ t[12] ^ t[22] ^ t[32] ^ t[42];
      c = t[3] ^ t[13] ^ t[23] ^ t[33] ^ t[43];
      h = t[4] ^ t[14] ^ t[24] ^ t[34] ^ t[44];
      p = t[5] ^ t[15] ^ t[25] ^ t[35] ^ t[45];
      l = t[6] ^ t[16] ^ t[26] ^ t[36] ^ t[46];
      b = t[7] ^ t[17] ^ t[27] ^ t[37] ^ t[47];
      n = (A = t[8] ^ t[18] ^ t[28] ^ t[38] ^ t[48]) ^ ((u << 1) | (c >>> 31));
      i = (w = t[9] ^ t[19] ^ t[29] ^ t[39] ^ t[49]) ^ ((c << 1) | (u >>> 31));
      t[0] ^= n;
      t[1] ^= i;
      t[10] ^= n;
      t[11] ^= i;
      t[20] ^= n;
      t[21] ^= i;
      t[30] ^= n;
      t[31] ^= i;
      t[40] ^= n;
      t[41] ^= i;
      n = s ^ ((h << 1) | (p >>> 31));
      i = f ^ ((p << 1) | (h >>> 31));
      t[2] ^= n;
      t[3] ^= i;
      t[12] ^= n;
      t[13] ^= i;
      t[22] ^= n;
      t[23] ^= i;
      t[32] ^= n;
      t[33] ^= i;
      t[42] ^= n;
      t[43] ^= i;
      n = u ^ ((l << 1) | (b >>> 31));
      i = c ^ ((b << 1) | (l >>> 31));
      t[4] ^= n;
      t[5] ^= i;
      t[14] ^= n;
      t[15] ^= i;
      t[24] ^= n;
      t[25] ^= i;
      t[34] ^= n;
      t[35] ^= i;
      t[44] ^= n;
      t[45] ^= i;
      n = h ^ ((A << 1) | (w >>> 31));
      i = p ^ ((w << 1) | (A >>> 31));
      t[6] ^= n;
      t[7] ^= i;
      t[16] ^= n;
      t[17] ^= i;
      t[26] ^= n;
      t[27] ^= i;
      t[36] ^= n;
      t[37] ^= i;
      t[46] ^= n;
      t[47] ^= i;
      n = l ^ ((s << 1) | (f >>> 31));
      i = b ^ ((f << 1) | (s >>> 31));
      t[8] ^= n;
      t[9] ^= i;
      t[18] ^= n;
      t[19] ^= i;
      t[28] ^= n;
      t[29] ^= i;
      t[38] ^= n;
      t[39] ^= i;
      t[48] ^= n;
      t[49] ^= i;
      v = t[0];
      B = t[1];
      $ = (t[11] << 4) | (t[10] >>> 28);
      tt = (t[10] << 4) | (t[11] >>> 28);
      H = (t[20] << 3) | (t[21] >>> 29);
      I = (t[21] << 3) | (t[20] >>> 29);
      dt = (t[31] << 9) | (t[30] >>> 23);
      yt = (t[30] << 9) | (t[31] >>> 23);
      Q = (t[40] << 18) | (t[41] >>> 14);
      T = (t[41] << 18) | (t[40] >>> 14);
      D = (t[2] << 1) | (t[3] >>> 31);
      W = (t[3] << 1) | (t[2] >>> 31);
      _ = (t[13] << 12) | (t[12] >>> 20);
      k = (t[12] << 12) | (t[13] >>> 20);
      rt = (t[22] << 10) | (t[23] >>> 22);
      et = (t[23] << 10) | (t[22] >>> 22);
      R = (t[33] << 13) | (t[32] >>> 19);
      U = (t[32] << 13) | (t[33] >>> 19);
      lt = (t[42] << 2) | (t[43] >>> 30);
      bt = (t[43] << 2) | (t[42] >>> 30);
      st = (t[5] << 30) | (t[4] >>> 2);
      ft = (t[4] << 30) | (t[5] >>> 2);
      Y = (t[14] << 6) | (t[15] >>> 26);
      K = (t[15] << 6) | (t[14] >>> 26);
      S = (t[25] << 11) | (t[24] >>> 21);
      C = (t[24] << 11) | (t[25] >>> 21);
      nt = (t[34] << 15) | (t[35] >>> 17);
      it = (t[35] << 15) | (t[34] >>> 17);
      V = (t[45] << 29) | (t[44] >>> 3);
      F = (t[44] << 29) | (t[45] >>> 3);
      N = (t[6] << 28) | (t[7] >>> 4);
      j = (t[7] << 28) | (t[6] >>> 4);
      ut = (t[17] << 23) | (t[16] >>> 9);
      ct = (t[16] << 23) | (t[17] >>> 9);
      q = (t[26] << 25) | (t[27] >>> 7);
      G = (t[27] << 25) | (t[26] >>> 7);
      x = (t[36] << 21) | (t[37] >>> 11);
      E = (t[37] << 21) | (t[36] >>> 11);
      ot = (t[47] << 24) | (t[46] >>> 8);
      at = (t[46] << 24) | (t[47] >>> 8);
      X = (t[8] << 27) | (t[9] >>> 5);
      Z = (t[9] << 27) | (t[8] >>> 5);
      J = (t[18] << 20) | (t[19] >>> 12);
      M = (t[19] << 20) | (t[18] >>> 12);
      ht = (t[29] << 7) | (t[28] >>> 25);
      pt = (t[28] << 7) | (t[29] >>> 25);
      L = (t[38] << 8) | (t[39] >>> 24);
      P = (t[39] << 8) | (t[38] >>> 24);
      O = (t[48] << 14) | (t[49] >>> 18);
      z = (t[49] << 14) | (t[48] >>> 18);
      t[0] = v ^ (~_ & S);
      t[1] = B ^ (~k & C);
      t[10] = N ^ (~J & H);
      t[11] = j ^ (~M & I);
      t[20] = D ^ (~Y & q);
      t[21] = W ^ (~K & G);
      t[30] = X ^ (~$ & rt);
      t[31] = Z ^ (~tt & et);
      t[40] = st ^ (~ut & ht);
      t[41] = ft ^ (~ct & pt);
      t[2] = _ ^ (~S & x);
      t[3] = k ^ (~C & E);
      t[12] = J ^ (~H & R);
      t[13] = M ^ (~I & U);
      t[22] = Y ^ (~q & L);
      t[23] = K ^ (~G & P);
      t[32] = $ ^ (~rt & nt);
      t[33] = tt ^ (~et & it);
      t[42] = ut ^ (~ht & dt);
      t[43] = ct ^ (~pt & yt);
      t[4] = S ^ (~x & O);
      t[5] = C ^ (~E & z);
      t[14] = H ^ (~R & V);
      t[15] = I ^ (~U & F);
      t[24] = q ^ (~L & Q);
      t[25] = G ^ (~P & T);
      t[34] = rt ^ (~nt & ot);
      t[35] = et ^ (~it & at);
      t[44] = ht ^ (~dt & lt);
      t[45] = pt ^ (~yt & bt);
      t[6] = x ^ (~O & v);
      t[7] = E ^ (~z & B);
      t[16] = R ^ (~V & N);
      t[17] = U ^ (~F & j);
      t[26] = L ^ (~Q & D);
      t[27] = P ^ (~T & W);
      t[36] = nt ^ (~ot & X);
      t[37] = it ^ (~at & Z);
      t[46] = dt ^ (~lt & st);
      t[47] = yt ^ (~bt & ft);
      t[8] = O ^ (~v & _);
      t[9] = z ^ (~B & k);
      t[18] = V ^ (~N & J);
      t[19] = F ^ (~j & M);
      t[28] = Q ^ (~D & Y);
      t[29] = T ^ (~W & K);
      t[38] = ot ^ (~X & $);
      t[39] = at ^ (~Z & tt);
      t[48] = lt ^ (~st & ut);
      t[49] = bt ^ (~ft & ct);
      t[0] ^= y[o];
      t[1] ^= y[o + 1];
    }
  };

  if (s) module.exports = E;
  else {
    for (z = 0; z < O.length; ++z) i[O[z]] = E[O[z]];

    if (f)
      define(function () {
        return E;
      });
  }
})();
