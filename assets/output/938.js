exports.clusterApiUrl = function (e, t) {
  var r = false === t ? 'http' : 'https';
  if (!e) return Ha[r].devnet;
  var n = Ha[r][e];
  if (!n) throw new Error('Unknown ' + r + ' cluster: ' + e);
  return n;
};

exports.sendAndConfirmRawTransaction = function (e, t, r) {
  var n, a, i;
  return module76.default.async(
    function (s) {
      for (;;)
        switch ((s.prev = s.next)) {
          case 0:
            n = r && {
              skipPreflight: r.skipPreflight,
              preflightCommitment: r.preflightCommitment || r.commitment,
            };
            s.next = 3;
            return module76.default.awrap(e.sendRawTransaction(t, n));

          case 3:
            a = s.sent;
            s.next = 6;
            return module76.default.awrap(e.confirmTransaction(a, r && r.commitment));

          case 6:
            if (!(i = s.sent.value).err) {
              s.next = 9;
              break;
            }

            throw new Error('Raw transaction ' + a + ' failed (' + JSON.stringify(i) + ')');

          case 9:
            return s.abrupt('return', a);

          case 10:
          case 'end':
            return s.stop();
        }
    },
    null,
    null,
    null,
    Promise
  );
};

exports.sendAndConfirmTransaction = Er;

var module76 = require('@babel/runtime/helpers/interopRequireDefault')(require('./76')),
  u = require('@babel/runtime/helpers/interopRequireDefault')(require('./59')),
  module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  l = require('@babel/runtime/helpers/interopRequireDefault')(require('./35')),
  module10 = require('@babel/runtime/helpers/interopRequireDefault')(require('./10')),
  module12 = require('@babel/runtime/helpers/interopRequireDefault')(require('./12')),
  module15 = require('@babel/runtime/helpers/interopRequireDefault')(require('./15')),
  module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module939 = require('@babel/runtime/helpers/interopRequireDefault')(require('./939')),
  module940 = require('@babel/runtime/helpers/interopRequireDefault')(require('./940')),
  module941 = require('@babel/runtime/helpers/interopRequireDefault')(require('./941')),
  module946 = (function (e, t) {
    if (!t && e && e.__esModule) return e;
    if (null === e || ('object' != typeof e && 'function' != typeof e))
      return {
        default: e,
      };
    var r = x(t);
    if (r && r.has(e)) return r.get(e);
    var n = {},
      a = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var i in e)
      if ('default' !== i && Object.prototype.hasOwnProperty.call(e, i)) {
        var s = a ? Object.getOwnPropertyDescriptor(e, i) : null;
        if (s && (s.get || s.set)) Object.defineProperty(n, i, s);
        else n[i] = e[i];
      }

    n.default = e;
    if (r) r.set(e, n);
    return n;
  })(require('./946')),
  module948 = require('@babel/runtime/helpers/interopRequireDefault')(require('./948')),
  module965 = require('@babel/runtime/helpers/interopRequireDefault')(require('./965')),
  module1002 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1002'));

function x(e) {
  if ('function' != typeof WeakMap) return null;
  var t = new WeakMap(),
    r = new WeakMap();
  return (x = function (e) {
    return e ? r : t;
  })(e);
}

function A(e, t) {
  var r = ('undefined' != typeof Symbol && e[Symbol.iterator]) || e['@@iterator'];
  if (r) return (r = r.call(e)).next.bind(r);

  if (Array.isArray(e) || (r = I(e)) || (t && e && 'number' == typeof e.length)) {
    if (r) e = r;
    var n = 0;
    return function () {
      return n >= e.length
        ? {
            done: true,
          }
        : {
            done: false,
            value: e[n++],
          };
    };
  }

  throw new TypeError('Invalid attempt to iterate non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.');
}

function I(e, t) {
  if (e) {
    if ('string' == typeof e) return P(e, t);
    var r = Object.prototype.toString.call(e).slice(8, -1);
    if ('Object' === r && e.constructor) r = e.constructor.name;
    return 'Map' === r || 'Set' === r ? Array.from(e) : 'Arguments' === r || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(r) ? P(e, t) : undefined;
  }
}

function P(e, t) {
  if (null == t || t > e.length) t = e.length;

  for (var r = 0, n = new Array(t); r < t; r++) n[r] = e[r];

  return n;
}

function E(e) {
  var t = B();
  return function () {
    var r,
      n = module15.default(e);

    if (t) {
      var a = module15.default(this).constructor;
      r = Reflect.construct(n, arguments, a);
    } else r = n.apply(this, arguments);

    return module12.default(this, r);
  };
}

function B() {
  if ('undefined' == typeof Reflect || !Reflect.construct) return false;
  if (Reflect.construct.sham) return false;
  if ('function' == typeof Proxy) return true;

  try {
    Boolean.prototype.valueOf.call(Reflect.construct(Boolean, [], function () {}));
    return true;
  } catch (e) {
    return false;
  }
}

var module1004 = function (e) {
    return require('./1003').Buffer.isBuffer(e)
      ? e
      : e instanceof Uint8Array
      ? require('./1003').Buffer.from(e.buffer, e.byteOffset, e.byteLength)
      : require('./1003').Buffer.from(e);
  },
  R = 'undefined' != typeof globalThis ? globalThis : 'undefined' != typeof window ? window : undefined !== globals ? globals : 'undefined' != typeof self ? self : {};

var C = {},
  O = {},
  N = W;

function W(e, t) {
  if (!e) throw new Error(t || 'Assertion failed');
}

W.equal = function (e, t, r) {
  if (e != t) throw new Error(r || 'Assertion failed: ' + e + ' != ' + t);
};

var z = {
  exports: {},
};
if ('function' == typeof Object.create)
  z.exports = function (e, t) {
    e.super_ = t;
    e.prototype = Object.create(t.prototype, {
      constructor: {
        value: e,
        enumerable: false,
        writable: true,
        configurable: true,
      },
    });
  };
else
  z.exports = function (e, t) {
    e.super_ = t;

    var r = function () {};

    r.prototype = t.prototype;
    e.prototype = new r();
    e.prototype.constructor = e;
  };
var U = N,
  L = z.exports;

function K(e, t) {
  return 55296 == (64512 & e.charCodeAt(t)) && !(t < 0 || t + 1 >= e.length) && 56320 == (64512 & e.charCodeAt(t + 1));
}

function D(e) {
  return ((e >>> 24) | ((e >>> 8) & 65280) | ((e << 8) & 16711680) | ((255 & e) << 24)) >>> 0;
}

function M(e) {
  return 1 === e.length ? '0' + e : e;
}

function q(e) {
  return 7 === e.length
    ? '0' + e
    : 6 === e.length
    ? '00' + e
    : 5 === e.length
    ? '000' + e
    : 4 === e.length
    ? '0000' + e
    : 3 === e.length
    ? '00000' + e
    : 2 === e.length
    ? '000000' + e
    : 1 === e.length
    ? '0000000' + e
    : e;
}

O.inherits = L;

O.toArray = function (e, t) {
  if (Array.isArray(e)) return e.slice();
  if (!e) return [];
  var r = [];
  if ('string' == typeof e) {
    if (t) {
      if ('hex' === t) for ((e = e.replace(/[^a-z0-9]+/gi, '')).length % 2 != 0 && (e = '0' + e), a = 0; a < e.length; a += 2) r.push(parseInt(e[a] + e[a + 1], 16));
    } else
      for (var n = 0, a = 0; a < e.length; a++) {
        var i = e.charCodeAt(a);
        if (i < 128) r[n++] = i;
        else if (i < 2048) {
          r[n++] = (i >> 6) | 192;
          r[n++] = (63 & i) | 128;
        } else if (K(e, a)) {
          i = 65536 + ((1023 & i) << 10) + (1023 & e.charCodeAt(++a));
          r[n++] = (i >> 18) | 240;
          r[n++] = ((i >> 12) & 63) | 128;
          r[n++] = ((i >> 6) & 63) | 128;
          r[n++] = (63 & i) | 128;
        } else {
          r[n++] = (i >> 12) | 224;
          r[n++] = ((i >> 6) & 63) | 128;
          r[n++] = (63 & i) | 128;
        }
      }
  } else for (a = 0; a < e.length; a++) r[a] = 0 | e[a];
  return r;
};

O.toHex = function (e) {
  for (var t = '', r = 0; r < e.length; r++) t += M(e[r].toString(16));

  return t;
};

O.htonl = D;

O.toHex32 = function (e, t) {
  for (var r = '', n = 0; n < e.length; n++) {
    var a = e[n];
    if ('little' === t) a = D(a);
    r += q(a.toString(16));
  }

  return r;
};

O.zero2 = M;
O.zero8 = q;

O.join32 = function (e, t, r, n) {
  var a = r - t;
  U(a % 4 == 0);

  for (var i = new Array(a / 4), s = 0, o = t; s < i.length; s++, o += 4) {
    var u;
    u = 'big' === n ? (e[o] << 24) | (e[o + 1] << 16) | (e[o + 2] << 8) | e[o + 3] : (e[o + 3] << 24) | (e[o + 2] << 16) | (e[o + 1] << 8) | e[o];
    i[s] = u >>> 0;
  }

  return i;
};

O.split32 = function (e, t) {
  for (var r = new Array(4 * e.length), n = 0, a = 0; n < e.length; n++, a += 4) {
    var i = e[n];

    if ('big' === t) {
      r[a] = i >>> 24;
      r[a + 1] = (i >>> 16) & 255;
      r[a + 2] = (i >>> 8) & 255;
      r[a + 3] = 255 & i;
    } else {
      r[a + 3] = i >>> 24;
      r[a + 2] = (i >>> 16) & 255;
      r[a + 1] = (i >>> 8) & 255;
      r[a] = 255 & i;
    }
  }

  return r;
};

O.rotr32 = function (e, t) {
  return (e >>> t) | (e << (32 - t));
};

O.rotl32 = function (e, t) {
  return (e << t) | (e >>> (32 - t));
};

O.sum32 = function (e, t) {
  return (e + t) >>> 0;
};

O.sum32_3 = function (e, t, r) {
  return (e + t + r) >>> 0;
};

O.sum32_4 = function (e, t, r, n) {
  return (e + t + r + n) >>> 0;
};

O.sum32_5 = function (e, t, r, n, a) {
  return (e + t + r + n + a) >>> 0;
};

O.sum64 = function (e, t, r, n) {
  var a = e[t],
    i = (n + e[t + 1]) >>> 0,
    s = (i < n ? 1 : 0) + r + a;
  e[t] = s >>> 0;
  e[t + 1] = i;
};

O.sum64_hi = function (e, t, r, n) {
  return (((t + n) >>> 0 < t ? 1 : 0) + e + r) >>> 0;
};

O.sum64_lo = function (e, t, r, n) {
  return (t + n) >>> 0;
};

O.sum64_4_hi = function (e, t, r, n, a, i, s, o) {
  var u = 0,
    c = t;
  u += (c = (c + n) >>> 0) < t ? 1 : 0;
  u += (c = (c + i) >>> 0) < i ? 1 : 0;
  return (e + r + a + s + (u += (c = (c + o) >>> 0) < o ? 1 : 0)) >>> 0;
};

O.sum64_4_lo = function (e, t, r, n, a, i, s, o) {
  return (t + n + i + o) >>> 0;
};

O.sum64_5_hi = function (e, t, r, n, a, i, s, o, u, c) {
  var l = 0,
    h = t;
  l += (h = (h + n) >>> 0) < t ? 1 : 0;
  l += (h = (h + i) >>> 0) < i ? 1 : 0;
  l += (h = (h + o) >>> 0) < o ? 1 : 0;
  return (e + r + a + s + u + (l += (h = (h + c) >>> 0) < c ? 1 : 0)) >>> 0;
};

O.sum64_5_lo = function (e, t, r, n, a, i, s, o, u, c) {
  return (t + n + i + o + c) >>> 0;
};

O.rotr64_hi = function (e, t, r) {
  return ((t << (32 - r)) | (e >>> r)) >>> 0;
};

O.rotr64_lo = function (e, t, r) {
  return ((e << (32 - r)) | (t >>> r)) >>> 0;
};

O.shr64_hi = function (e, t, r) {
  return e >>> r;
};

O.shr64_lo = function (e, t, r) {
  return ((e << (32 - r)) | (t >>> r)) >>> 0;
};

var j = {},
  F = O,
  H = N;

function V() {
  this.pending = null;
  this.pendingTotal = 0;
  this.blockSize = this.constructor.blockSize;
  this.outSize = this.constructor.outSize;
  this.hmacStrength = this.constructor.hmacStrength;
  this.padLength = this.constructor.padLength / 8;
  this.endian = 'big';
  this._delta8 = this.blockSize / 8;
  this._delta32 = this.blockSize / 32;
}

j.BlockHash = V;

V.prototype.update = function (e, t) {
  if (((e = F.toArray(e, t)), this.pending ? (this.pending = this.pending.concat(e)) : (this.pending = e), (this.pendingTotal += e.length), this.pending.length >= this._delta8)) {
    var r = (e = this.pending).length % this._delta8;
    this.pending = e.slice(e.length - r, e.length);
    if (0 === this.pending.length) this.pending = null;
    e = F.join32(e, 0, e.length - r, this.endian);

    for (var n = 0; n < e.length; n += this._delta32) this._update(e, n, n + this._delta32);
  }

  return this;
};

V.prototype.digest = function (e) {
  this.update(this._pad());
  H(null === this.pending);
  return this._digest(e);
};

V.prototype._pad = function () {
  var e = this.pendingTotal,
    t = this._delta8,
    r = t - ((e + this.padLength) % t),
    n = new Array(r + this.padLength);
  n[0] = 128;

  for (var a = 1; a < r; a++) n[a] = 0;

  if (((e <<= 3), 'big' === this.endian)) {
    for (var i = 8; i < this.padLength; i++) n[a++] = 0;

    n[a++] = 0;
    n[a++] = 0;
    n[a++] = 0;
    n[a++] = 0;
    n[a++] = (e >>> 24) & 255;
    n[a++] = (e >>> 16) & 255;
    n[a++] = (e >>> 8) & 255;
    n[a++] = 255 & e;
  } else
    for (
      n[a++] = 255 & e, n[a++] = (e >>> 8) & 255, n[a++] = (e >>> 16) & 255, n[a++] = (e >>> 24) & 255, n[a++] = 0, n[a++] = 0, n[a++] = 0, n[a++] = 0, i = 8;
      i < this.padLength;
      i++
    )
      n[a++] = 0;

  return n;
};

var Y = {},
  G = {},
  X = O.rotr32;

function J(e, t, r) {
  return (e & t) ^ (~e & r);
}

function Z(e, t, r) {
  return (e & t) ^ (e & r) ^ (t & r);
}

function $(e, t, r) {
  return e ^ t ^ r;
}

G.ft_1 = function (e, t, r, n) {
  return 0 === e ? J(t, r, n) : 1 === e || 3 === e ? $(t, r, n) : 2 === e ? Z(t, r, n) : undefined;
};

G.ch32 = J;
G.maj32 = Z;
G.p32 = $;

G.s0_256 = function (e) {
  return X(e, 2) ^ X(e, 13) ^ X(e, 22);
};

G.s1_256 = function (e) {
  return X(e, 6) ^ X(e, 11) ^ X(e, 25);
};

G.g0_256 = function (e) {
  return X(e, 7) ^ X(e, 18) ^ (e >>> 3);
};

G.g1_256 = function (e) {
  return X(e, 17) ^ X(e, 19) ^ (e >>> 10);
};

var Q = O,
  ee = j,
  te = G,
  re = Q.rotl32,
  ne = Q.sum32,
  ae = Q.sum32_5,
  ie = te.ft_1,
  se = ee.BlockHash,
  oe = [1518500249, 1859775393, 2400959708, 3395469782];

function ue() {
  if (!(this instanceof ue)) return new ue();
  se.call(this);
  this.h = [1732584193, 4023233417, 2562383102, 271733878, 3285377520];
  this.W = new Array(80);
}

Q.inherits(ue, se);
var ce = ue;
ue.blockSize = 512;
ue.outSize = 160;
ue.hmacStrength = 80;
ue.padLength = 64;

ue.prototype._update = function (e, t) {
  for (var r = this.W, n = 0; n < 16; n++) r[n] = e[t + n];

  for (; n < r.length; n++) r[n] = re(r[n - 3] ^ r[n - 8] ^ r[n - 14] ^ r[n - 16], 1);

  var a = this.h[0],
    i = this.h[1],
    s = this.h[2],
    o = this.h[3],
    u = this.h[4];

  for (n = 0; n < r.length; n++) {
    var c = ~~(n / 20),
      l = ae(re(a, 5), ie(c, i, s, o), u, r[n], oe[c]);
    u = o;
    o = s;
    s = re(i, 30);
    i = a;
    a = l;
  }

  this.h[0] = ne(this.h[0], a);
  this.h[1] = ne(this.h[1], i);
  this.h[2] = ne(this.h[2], s);
  this.h[3] = ne(this.h[3], o);
  this.h[4] = ne(this.h[4], u);
};

ue.prototype._digest = function (e) {
  return 'hex' === e ? Q.toHex32(this.h, 'big') : Q.split32(this.h, 'big');
};

var le = O,
  he = j,
  fe = G,
  de = N,
  pe = le.sum32,
  be = le.sum32_4,
  ge = le.sum32_5,
  ye = fe.ch32,
  me = fe.maj32,
  ke = fe.s0_256,
  ve = fe.s1_256,
  we = fe.g0_256,
  Se = fe.g1_256,
  _e = he.BlockHash,
  xe = [
    1116352408,
    1899447441,
    3049323471,
    3921009573,
    961987163,
    1508970993,
    2453635748,
    2870763221,
    3624381080,
    310598401,
    607225278,
    1426881987,
    1925078388,
    2162078206,
    2614888103,
    3248222580,
    3835390401,
    4022224774,
    264347078,
    604807628,
    770255983,
    1249150122,
    1555081692,
    1996064986,
    2554220882,
    2821834349,
    2952996808,
    3210313671,
    3336571891,
    3584528711,
    113926993,
    338241895,
    666307205,
    773529912,
    1294757372,
    1396182291,
    1695183700,
    1986661051,
    2177026350,
    2456956037,
    2730485921,
    2820302411,
    3259730800,
    3345764771,
    3516065817,
    3600352804,
    4094571909,
    275423344,
    430227734,
    506948616,
    659060556,
    883997877,
    958139571,
    1322822218,
    1537002063,
    1747873779,
    1955562222,
    2024104815,
    2227730452,
    2361852424,
    2428436474,
    2756734187,
    3204031479,
    3329325298,
  ];

function Ae() {
  if (!(this instanceof Ae)) return new Ae();

  _e.call(this);

  this.h = [1779033703, 3144134277, 1013904242, 2773480762, 1359893119, 2600822924, 528734635, 1541459225];
  this.k = xe;
  this.W = new Array(64);
}

le.inherits(Ae, _e);
var Ie = Ae;
Ae.blockSize = 512;
Ae.outSize = 256;
Ae.hmacStrength = 192;
Ae.padLength = 64;

Ae.prototype._update = function (e, t) {
  for (var r = this.W, n = 0; n < 16; n++) r[n] = e[t + n];

  for (; n < r.length; n++) r[n] = be(Se(r[n - 2]), r[n - 7], we(r[n - 15]), r[n - 16]);

  var a = this.h[0],
    i = this.h[1],
    s = this.h[2],
    o = this.h[3],
    u = this.h[4],
    c = this.h[5],
    l = this.h[6],
    h = this.h[7];

  for (de(this.k.length === r.length), n = 0; n < r.length; n++) {
    var f = ge(h, ve(u), ye(u, c, l), this.k[n], r[n]),
      d = pe(ke(a), me(a, i, s));
    h = l;
    l = c;
    c = u;
    u = pe(o, f);
    o = s;
    s = i;
    i = a;
    a = pe(f, d);
  }

  this.h[0] = pe(this.h[0], a);
  this.h[1] = pe(this.h[1], i);
  this.h[2] = pe(this.h[2], s);
  this.h[3] = pe(this.h[3], o);
  this.h[4] = pe(this.h[4], u);
  this.h[5] = pe(this.h[5], c);
  this.h[6] = pe(this.h[6], l);
  this.h[7] = pe(this.h[7], h);
};

Ae.prototype._digest = function (e) {
  return 'hex' === e ? le.toHex32(this.h, 'big') : le.split32(this.h, 'big');
};

var Pe = O,
  Ee = Ie;

function Be() {
  if (!(this instanceof Be)) return new Be();
  Ee.call(this);
  this.h = [3238371032, 914150663, 812702999, 4144912697, 4290775857, 1750603025, 1694076839, 3204075428];
}

Pe.inherits(Be, Ee);
var Te = Be;
Be.blockSize = 512;
Be.outSize = 224;
Be.hmacStrength = 192;
Be.padLength = 64;

Be.prototype._digest = function (e) {
  return 'hex' === e ? Pe.toHex32(this.h.slice(0, 7), 'big') : Pe.split32(this.h.slice(0, 7), 'big');
};

var Re = O,
  Ce = j,
  Oe = N,
  Ne = Re.rotr64_hi,
  We = Re.rotr64_lo,
  ze = Re.shr64_hi,
  Ue = Re.shr64_lo,
  Le = Re.sum64,
  Ke = Re.sum64_hi,
  De = Re.sum64_lo,
  Me = Re.sum64_4_hi,
  qe = Re.sum64_4_lo,
  je = Re.sum64_5_hi,
  Fe = Re.sum64_5_lo,
  He = Ce.BlockHash,
  Ve = [
    1116352408,
    3609767458,
    1899447441,
    602891725,
    3049323471,
    3964484399,
    3921009573,
    2173295548,
    961987163,
    4081628472,
    1508970993,
    3053834265,
    2453635748,
    2937671579,
    2870763221,
    3664609560,
    3624381080,
    2734883394,
    310598401,
    1164996542,
    607225278,
    1323610764,
    1426881987,
    3590304994,
    1925078388,
    4068182383,
    2162078206,
    991336113,
    2614888103,
    633803317,
    3248222580,
    3479774868,
    3835390401,
    2666613458,
    4022224774,
    944711139,
    264347078,
    2341262773,
    604807628,
    2007800933,
    770255983,
    1495990901,
    1249150122,
    1856431235,
    1555081692,
    3175218132,
    1996064986,
    2198950837,
    2554220882,
    3999719339,
    2821834349,
    766784016,
    2952996808,
    2566594879,
    3210313671,
    3203337956,
    3336571891,
    1034457026,
    3584528711,
    2466948901,
    113926993,
    3758326383,
    338241895,
    168717936,
    666307205,
    1188179964,
    773529912,
    1546045734,
    1294757372,
    1522805485,
    1396182291,
    2643833823,
    1695183700,
    2343527390,
    1986661051,
    1014477480,
    2177026350,
    1206759142,
    2456956037,
    344077627,
    2730485921,
    1290863460,
    2820302411,
    3158454273,
    3259730800,
    3505952657,
    3345764771,
    106217008,
    3516065817,
    3606008344,
    3600352804,
    1432725776,
    4094571909,
    1467031594,
    275423344,
    851169720,
    430227734,
    3100823752,
    506948616,
    1363258195,
    659060556,
    3750685593,
    883997877,
    3785050280,
    958139571,
    3318307427,
    1322822218,
    3812723403,
    1537002063,
    2003034995,
    1747873779,
    3602036899,
    1955562222,
    1575990012,
    2024104815,
    1125592928,
    2227730452,
    2716904306,
    2361852424,
    442776044,
    2428436474,
    593698344,
    2756734187,
    3733110249,
    3204031479,
    2999351573,
    3329325298,
    3815920427,
    3391569614,
    3928383900,
    3515267271,
    566280711,
    3940187606,
    3454069534,
    4118630271,
    4000239992,
    116418474,
    1914138554,
    174292421,
    2731055270,
    289380356,
    3203993006,
    460393269,
    320620315,
    685471733,
    587496836,
    852142971,
    1086792851,
    1017036298,
    365543100,
    1126000580,
    2618297676,
    1288033470,
    3409855158,
    1501505948,
    4234509866,
    1607167915,
    987167468,
    1816402316,
    1246189591,
  ];

function Ye() {
  if (!(this instanceof Ye)) return new Ye();
  He.call(this);
  this.h = [
    1779033703,
    4089235720,
    3144134277,
    2227873595,
    1013904242,
    4271175723,
    2773480762,
    1595750129,
    1359893119,
    2917565137,
    2600822924,
    725511199,
    528734635,
    4215389547,
    1541459225,
    327033209,
  ];
  this.k = Ve;
  this.W = new Array(160);
}

Re.inherits(Ye, He);
var Ge = Ye;

function Xe(e, t, r, n, a) {
  var i = (e & r) ^ (~e & a);
  if (i < 0) i += 4294967296;
  return i;
}

function Je(e, t, r, n, a, i) {
  var s = (t & n) ^ (~t & i);
  if (s < 0) s += 4294967296;
  return s;
}

function Ze(e, t, r, n, a) {
  var i = (e & r) ^ (e & a) ^ (r & a);
  if (i < 0) i += 4294967296;
  return i;
}

function $e(e, t, r, n, a, i) {
  var s = (t & n) ^ (t & i) ^ (n & i);
  if (s < 0) s += 4294967296;
  return s;
}

function Qe(e, t) {
  var r = Ne(e, t, 28) ^ Ne(t, e, 2) ^ Ne(t, e, 7);
  if (r < 0) r += 4294967296;
  return r;
}

function et(e, t) {
  var r = We(e, t, 28) ^ We(t, e, 2) ^ We(t, e, 7);
  if (r < 0) r += 4294967296;
  return r;
}

function tt(e, t) {
  var r = Ne(e, t, 14) ^ Ne(e, t, 18) ^ Ne(t, e, 9);
  if (r < 0) r += 4294967296;
  return r;
}

function rt(e, t) {
  var r = We(e, t, 14) ^ We(e, t, 18) ^ We(t, e, 9);
  if (r < 0) r += 4294967296;
  return r;
}

function nt(e, t) {
  var r = Ne(e, t, 1) ^ Ne(e, t, 8) ^ ze(e, t, 7);
  if (r < 0) r += 4294967296;
  return r;
}

function at(e, t) {
  var r = We(e, t, 1) ^ We(e, t, 8) ^ Ue(e, t, 7);
  if (r < 0) r += 4294967296;
  return r;
}

function it(e, t) {
  var r = Ne(e, t, 19) ^ Ne(t, e, 29) ^ ze(e, t, 6);
  if (r < 0) r += 4294967296;
  return r;
}

function st(e, t) {
  var r = We(e, t, 19) ^ We(t, e, 29) ^ Ue(e, t, 6);
  if (r < 0) r += 4294967296;
  return r;
}

Ye.blockSize = 1024;
Ye.outSize = 512;
Ye.hmacStrength = 192;
Ye.padLength = 128;

Ye.prototype._prepareBlock = function (e, t) {
  for (var r = this.W, n = 0; n < 32; n++) r[n] = e[t + n];

  for (; n < r.length; n += 2) {
    var a = it(r[n - 4], r[n - 3]),
      i = st(r[n - 4], r[n - 3]),
      s = r[n - 14],
      o = r[n - 13],
      u = nt(r[n - 30], r[n - 29]),
      c = at(r[n - 30], r[n - 29]),
      l = r[n - 32],
      h = r[n - 31];
    r[n] = Me(a, i, s, o, u, c, l, h);
    r[n + 1] = qe(a, i, s, o, u, c, l, h);
  }
};

Ye.prototype._update = function (e, t) {
  this._prepareBlock(e, t);

  var r = this.W,
    n = this.h[0],
    a = this.h[1],
    i = this.h[2],
    s = this.h[3],
    o = this.h[4],
    u = this.h[5],
    c = this.h[6],
    l = this.h[7],
    h = this.h[8],
    f = this.h[9],
    d = this.h[10],
    p = this.h[11],
    b = this.h[12],
    g = this.h[13],
    y = this.h[14],
    m = this.h[15];
  Oe(this.k.length === r.length);

  for (var k = 0; k < r.length; k += 2) {
    var v = y,
      w = m,
      S = tt(h, f),
      _ = rt(h, f),
      x = Xe(h, f, d, p, b),
      A = Je(h, f, d, p, b, g),
      I = this.k[k],
      P = this.k[k + 1],
      E = r[k],
      B = r[k + 1],
      T = je(v, w, S, _, x, A, I, P, E, B),
      R = Fe(v, w, S, _, x, A, I, P, E, B);

    v = Qe(n, a);
    w = et(n, a);
    S = Ze(n, a, i, s, o);
    _ = $e(n, a, i, s, o, u);
    var C = Ke(v, w, S, _),
      O = De(v, w, S, _);
    y = b;
    m = g;
    b = d;
    g = p;
    d = h;
    p = f;
    h = Ke(c, l, T, R);
    f = De(l, l, T, R);
    c = o;
    l = u;
    o = i;
    u = s;
    i = n;
    s = a;
    n = Ke(T, R, C, O);
    a = De(T, R, C, O);
  }

  Le(this.h, 0, n, a);
  Le(this.h, 2, i, s);
  Le(this.h, 4, o, u);
  Le(this.h, 6, c, l);
  Le(this.h, 8, h, f);
  Le(this.h, 10, d, p);
  Le(this.h, 12, b, g);
  Le(this.h, 14, y, m);
};

Ye.prototype._digest = function (e) {
  return 'hex' === e ? Re.toHex32(this.h, 'big') : Re.split32(this.h, 'big');
};

var ot = O,
  ut = Ge;

function ct() {
  if (!(this instanceof ct)) return new ct();
  ut.call(this);
  this.h = [
    3418070365,
    3238371032,
    1654270250,
    914150663,
    2438529370,
    812702999,
    355462360,
    4144912697,
    1731405415,
    4290775857,
    2394180231,
    1750603025,
    3675008525,
    1694076839,
    1203062813,
    3204075428,
  ];
}

ot.inherits(ct, ut);
var lt = ct;
ct.blockSize = 1024;
ct.outSize = 384;
ct.hmacStrength = 192;
ct.padLength = 128;

ct.prototype._digest = function (e) {
  return 'hex' === e ? ot.toHex32(this.h.slice(0, 12), 'big') : ot.split32(this.h.slice(0, 12), 'big');
};

Y.sha1 = ce;
Y.sha224 = Te;
Y.sha256 = Ie;
Y.sha384 = lt;
Y.sha512 = Ge;
var ht = {},
  ft = O,
  dt = j,
  pt = ft.rotl32,
  bt = ft.sum32,
  gt = ft.sum32_3,
  yt = ft.sum32_4,
  mt = dt.BlockHash;

function kt() {
  if (!(this instanceof kt)) return new kt();
  mt.call(this);
  this.h = [1732584193, 4023233417, 2562383102, 271733878, 3285377520];
  this.endian = 'little';
}

function vt(e, t, r, n) {
  return e <= 15 ? t ^ r ^ n : e <= 31 ? (t & r) | (~t & n) : e <= 47 ? (t | ~r) ^ n : e <= 63 ? (t & n) | (r & ~n) : t ^ (r | ~n);
}

function wt(e) {
  return e <= 15 ? 0 : e <= 31 ? 1518500249 : e <= 47 ? 1859775393 : e <= 63 ? 2400959708 : 2840853838;
}

function St(e) {
  return e <= 15 ? 1352829926 : e <= 31 ? 1548603684 : e <= 47 ? 1836072691 : e <= 63 ? 2053994217 : 0;
}

ft.inherits(kt, mt);
ht.ripemd160 = kt;
kt.blockSize = 512;
kt.outSize = 160;
kt.hmacStrength = 192;
kt.padLength = 64;

kt.prototype._update = function (e, t) {
  for (var r = this.h[0], n = this.h[1], a = this.h[2], i = this.h[3], s = this.h[4], o = r, u = n, c = a, l = i, h = s, f = 0; f < 80; f++) {
    var d = bt(pt(yt(r, vt(f, n, a, i), e[_t[f] + t], wt(f)), At[f]), s);
    r = s;
    s = i;
    i = pt(a, 10);
    a = n;
    n = d;
    d = bt(pt(yt(o, vt(79 - f, u, c, l), e[xt[f] + t], St(f)), It[f]), h);
    o = h;
    h = l;
    l = pt(c, 10);
    c = u;
    u = d;
  }

  d = gt(this.h[1], a, l);
  this.h[1] = gt(this.h[2], i, h);
  this.h[2] = gt(this.h[3], s, o);
  this.h[3] = gt(this.h[4], r, u);
  this.h[4] = gt(this.h[0], n, c);
  this.h[0] = d;
};

kt.prototype._digest = function (e) {
  return 'hex' === e ? ft.toHex32(this.h, 'little') : ft.split32(this.h, 'little');
};

var _t = [
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    7,
    4,
    13,
    1,
    10,
    6,
    15,
    3,
    12,
    0,
    9,
    5,
    2,
    14,
    11,
    8,
    3,
    10,
    14,
    4,
    9,
    15,
    8,
    1,
    2,
    7,
    0,
    6,
    13,
    11,
    5,
    12,
    1,
    9,
    11,
    10,
    0,
    8,
    12,
    4,
    13,
    3,
    7,
    15,
    14,
    5,
    6,
    2,
    4,
    0,
    5,
    9,
    7,
    12,
    2,
    10,
    14,
    1,
    3,
    8,
    11,
    6,
    15,
    13,
  ],
  xt = [
    5,
    14,
    7,
    0,
    9,
    2,
    11,
    4,
    13,
    6,
    15,
    8,
    1,
    10,
    3,
    12,
    6,
    11,
    3,
    7,
    0,
    13,
    5,
    10,
    14,
    15,
    8,
    12,
    4,
    9,
    1,
    2,
    15,
    5,
    1,
    3,
    7,
    14,
    6,
    9,
    11,
    8,
    12,
    2,
    10,
    0,
    4,
    13,
    8,
    6,
    4,
    1,
    3,
    11,
    15,
    0,
    5,
    12,
    2,
    13,
    9,
    7,
    10,
    14,
    12,
    15,
    10,
    4,
    1,
    5,
    8,
    7,
    6,
    2,
    13,
    14,
    0,
    3,
    9,
    11,
  ],
  At = [
    11,
    14,
    15,
    12,
    5,
    8,
    7,
    9,
    11,
    13,
    14,
    15,
    6,
    7,
    9,
    8,
    7,
    6,
    8,
    13,
    11,
    9,
    7,
    15,
    7,
    12,
    15,
    9,
    11,
    7,
    13,
    12,
    11,
    13,
    6,
    7,
    14,
    9,
    13,
    15,
    14,
    8,
    13,
    6,
    5,
    12,
    7,
    5,
    11,
    12,
    14,
    15,
    14,
    15,
    9,
    8,
    9,
    14,
    5,
    6,
    8,
    6,
    5,
    12,
    9,
    15,
    5,
    11,
    6,
    8,
    13,
    12,
    5,
    12,
    13,
    14,
    11,
    8,
    5,
    6,
  ],
  It = [
    8,
    9,
    9,
    11,
    13,
    15,
    15,
    5,
    7,
    7,
    8,
    11,
    14,
    14,
    12,
    6,
    9,
    13,
    15,
    7,
    12,
    8,
    9,
    11,
    7,
    7,
    12,
    7,
    6,
    15,
    13,
    11,
    9,
    7,
    15,
    11,
    8,
    6,
    6,
    14,
    12,
    13,
    5,
    14,
    13,
    13,
    7,
    5,
    15,
    5,
    8,
    11,
    14,
    14,
    6,
    14,
    6,
    9,
    12,
    9,
    12,
    5,
    15,
    8,
    8,
    5,
    12,
    9,
    12,
    5,
    14,
    6,
    8,
    13,
    6,
    5,
    15,
    13,
    11,
    11,
  ],
  Pt = O,
  Et = N;

function Bt(e, t, r) {
  if (!(this instanceof Bt)) return new Bt(e, t, r);
  this.Hash = e;
  this.blockSize = e.blockSize / 8;
  this.outSize = e.outSize / 8;
  this.inner = null;
  this.outer = null;

  this._init(Pt.toArray(t, r));
}

var Tt = Bt;

Bt.prototype._init = function (e) {
  if (e.length > this.blockSize) e = new this.Hash().update(e).digest();
  Et(e.length <= this.blockSize);

  for (var t = e.length; t < this.blockSize; t++) e.push(0);

  for (t = 0; t < e.length; t++) e[t] ^= 54;

  for (this.inner = new this.Hash().update(e), t = 0; t < e.length; t++) e[t] ^= 106;

  this.outer = new this.Hash().update(e);
};

Bt.prototype.update = function (e, t) {
  this.inner.update(e, t);
  return this;
};

Bt.prototype.digest = function (e) {
  this.outer.update(this.inner.digest());
  return this.outer.digest(e);
};

(function (e) {
  var t = C;
  t.utils = O;
  t.common = j;
  t.sha = Y;
  t.ripemd = ht;
  t.hmac = Tt;
  t.sha1 = t.sha.sha1;
  t.sha256 = t.sha.sha256;
  t.sha224 = t.sha.sha224;
  t.sha384 = t.sha.sha384;
  t.sha512 = t.sha.sha512;
  t.ripemd160 = t.ripemd.ripemd160;
})();

var Rt = C,
  Ct = false,
  Ot = false,
  Nt = {
    debug: 1,
    default: 2,
    info: 2,
    warning: 3,
    error: 4,
    off: 5,
  },
  Wt = Nt.default,
  zt = null;

var Ut,
  Lt,
  Kt = (function () {
    try {
      var e = [];
      if (
        (['NFD', 'NFC', 'NFKD', 'NFKC'].forEach(function (t) {
          try {
            if ('test' !== 'test'.normalize(t)) throw new Error('bad normalize');
          } catch (r) {
            e.push(t);
          }
        }),
        e.length)
      )
        throw new Error('missing ' + e.join(', '));
      if (String.fromCharCode(233).normalize('NFD') !== String.fromCharCode(101, 769)) throw new Error('broken implementation');
    } catch (e) {
      return e.message;
    }

    return null;
  })();

!(function (e) {
  e.DEBUG = 'DEBUG';
  e.INFO = 'INFO';
  e.WARNING = 'WARNING';
  e.ERROR = 'ERROR';
  e.OFF = 'OFF';
})(Ut || (Ut = {}));

(function (e) {
  e.UNKNOWN_ERROR = 'UNKNOWN_ERROR';
  e.NOT_IMPLEMENTED = 'NOT_IMPLEMENTED';
  e.UNSUPPORTED_OPERATION = 'UNSUPPORTED_OPERATION';
  e.NETWORK_ERROR = 'NETWORK_ERROR';
  e.SERVER_ERROR = 'SERVER_ERROR';
  e.TIMEOUT = 'TIMEOUT';
  e.BUFFER_OVERRUN = 'BUFFER_OVERRUN';
  e.NUMERIC_FAULT = 'NUMERIC_FAULT';
  e.MISSING_NEW = 'MISSING_NEW';
  e.INVALID_ARGUMENT = 'INVALID_ARGUMENT';
  e.MISSING_ARGUMENT = 'MISSING_ARGUMENT';
  e.UNEXPECTED_ARGUMENT = 'UNEXPECTED_ARGUMENT';
  e.CALL_EXCEPTION = 'CALL_EXCEPTION';
  e.INSUFFICIENT_FUNDS = 'INSUFFICIENT_FUNDS';
  e.NONCE_EXPIRED = 'NONCE_EXPIRED';
  e.REPLACEMENT_UNDERPRICED = 'REPLACEMENT_UNDERPRICED';
  e.UNPREDICTABLE_GAS_LIMIT = 'UNPREDICTABLE_GAS_LIMIT';
  e.TRANSACTION_REPLACED = 'TRANSACTION_REPLACED';
})(Lt || (Lt = {}));

var Dt = '0123456789abcdef',
  Mt = (function () {
    function e(t) {
      module7.default(this, e);
      Object.defineProperty(this, 'version', {
        enumerable: true,
        value: t,
        writable: false,
      });
    }

    module8.default(
      e,
      [
        {
          key: '_log',
          value: function (e, t) {
            var r = e.toLowerCase();
            if (null == Nt[r]) this.throwArgumentError('invalid log level name', 'logLevel', e);
            if (!(Wt > Nt[r])) console.log.apply(console, t);
          },
        },
        {
          key: 'debug',
          value: function (...args) {
            this._log(e.levels.DEBUG, args);
          },
        },
        {
          key: 'info',
          value: function (...args) {
            this._log(e.levels.INFO, args);
          },
        },
        {
          key: 'warn',
          value: function (...args) {
            this._log(e.levels.WARNING, args);
          },
        },
        {
          key: 'makeError',
          value: function (t, r, n) {
            if (Ot) return this.makeError('censored error', r, {});
            if (!r) r = e.errors.UNKNOWN_ERROR;
            if (!n) n = {};
            var a = [];
            Object.keys(n).forEach(function (e) {
              var t = n[e];

              try {
                if (t instanceof Uint8Array) {
                  for (var r = '', i = 0; i < t.length; i++) {
                    r += Dt[t[i] >> 4];
                    r += Dt[15 & t[i]];
                  }

                  a.push(e + '=Uint8Array(0x' + r + ')');
                } else a.push(e + '=' + JSON.stringify(t));
              } catch (t) {
                a.push(e + '=' + JSON.stringify(n[e].toString()));
              }
            });
            a.push('code=' + r);
            a.push('version=' + this.version);
            var i = t;
            if (a.length) t += ' (' + a.join(', ') + ')';
            var s = new Error(t);
            s.reason = i;
            s.code = r;
            Object.keys(n).forEach(function (e) {
              s[e] = n[e];
            });
            return s;
          },
        },
        {
          key: 'throwError',
          value: function (e, t, r) {
            throw this.makeError(e, t, r);
          },
        },
        {
          key: 'throwArgumentError',
          value: function (t, r, n) {
            return this.throwError(t, e.errors.INVALID_ARGUMENT, {
              argument: r,
              value: n,
            });
          },
        },
        {
          key: 'assert',
          value: function (e, t, r, n) {
            if (!e) this.throwError(t, r, n);
          },
        },
        {
          key: 'assertArgument',
          value: function (e, t, r, n) {
            if (!e) this.throwArgumentError(t, r, n);
          },
        },
        {
          key: 'checkNormalize',
          value: function (t) {
            if (Kt)
              this.throwError('platform missing String.prototype.normalize', e.errors.UNSUPPORTED_OPERATION, {
                operation: 'String.prototype.normalize',
                form: Kt,
              });
          },
        },
        {
          key: 'checkSafeUint53',
          value: function (t, r) {
            if ('number' == typeof t) {
              if (null == r) r = 'value not safe';
              if (t < 0 || t >= 9007199254740991)
                this.throwError(r, e.errors.NUMERIC_FAULT, {
                  operation: 'checkSafeInteger',
                  fault: 'out-of-safe-range',
                  value: t,
                });
              if (t % 1)
                this.throwError(r, e.errors.NUMERIC_FAULT, {
                  operation: 'checkSafeInteger',
                  fault: 'non-integer',
                  value: t,
                });
            }
          },
        },
        {
          key: 'checkArgumentCount',
          value: function (t, r, n) {
            n = n ? ': ' + n : '';
            if (t < r)
              this.throwError('missing argument' + n, e.errors.MISSING_ARGUMENT, {
                count: t,
                expectedCount: r,
              });
            if (t > r)
              this.throwError('too many arguments' + n, e.errors.UNEXPECTED_ARGUMENT, {
                count: t,
                expectedCount: r,
              });
          },
        },
        {
          key: 'checkNew',
          value: function (t, r) {
            if (!(t !== Object && null != t))
              this.throwError('missing new', e.errors.MISSING_NEW, {
                name: r.name,
              });
          },
        },
        {
          key: 'checkAbstract',
          value: function (t, r) {
            if (t === r)
              this.throwError('cannot instantiate abstract class ' + JSON.stringify(r.name) + ' directly; use a sub-class', e.errors.UNSUPPORTED_OPERATION, {
                name: t.name,
                operation: 'new',
              });
            else if (!(t !== Object && null != t))
              this.throwError('missing new', e.errors.MISSING_NEW, {
                name: r.name,
              });
          },
        },
      ],
      [
        {
          key: 'globalLogger',
          value: function () {
            if (!zt) zt = new e('logger/5.5.0');
            return zt;
          },
        },
        {
          key: 'setCensorship',
          value: function (t, r) {
            if (
              (!t &&
                r &&
                this.globalLogger().throwError('cannot permanently disable censorship', e.errors.UNSUPPORTED_OPERATION, {
                  operation: 'setCensorship',
                }),
              Ct)
            ) {
              if (!t) return;
              this.globalLogger().throwError('error censorship permanent', e.errors.UNSUPPORTED_OPERATION, {
                operation: 'setCensorship',
              });
            }

            Ot = !!t;
            Ct = !!r;
          },
        },
        {
          key: 'setLogLevel',
          value: function (t) {
            var r = Nt[t.toLowerCase()];
            if (null != r) Wt = r;
            else e.globalLogger().warn('invalid log level - ' + t);
          },
        },
        {
          key: 'from',
          value: function (t) {
            return new e(t);
          },
        },
      ]
    );
    return e;
  })();

Mt.errors = Lt;
Mt.levels = Ut;
var qt = new Mt('bytes/5.5.0');

function jt(e) {
  return !!e.toHexString;
}

function Ft(e) {
  if (e.slice) return e;
  else {
    e.slice = function () {
      var t = Array.prototype.slice.call(arguments);
      return Ft(new Uint8Array(Array.prototype.slice.apply(e, t)));
    };

    return e;
  }
}

function Ht(e) {
  return 'number' == typeof e && e == e && e % 1 == 0;
}

function Vt(e) {
  if (null == e) return false;
  if (e.constructor === Uint8Array) return true;
  if ('string' == typeof e) return false;
  if (!Ht(e.length) || e.length < 0) return false;

  for (var t = 0; t < e.length; t++) {
    var r = e[t];
    if (!Ht(r) || r < 0 || r >= 256) return false;
  }

  return true;
}

function Yt(e, t) {
  if ((t || (t = {}), 'number' == typeof e)) {
    qt.checkSafeUint53(e, 'invalid arrayify value');

    for (var r = []; e; ) {
      r.unshift(255 & e);
      e = parseInt(String(e / 256));
    }

    if (0 === r.length) r.push(0);
    return Ft(new Uint8Array(r));
  }

  if ((t.allowMissingPrefix && 'string' == typeof e && '0x' !== e.substring(0, 2) && (e = '0x' + e), jt(e) && (e = e.toHexString()), Gt(e))) {
    var n = e.substring(2);
    if (n.length % 2) 'left' === t.hexPad ? (n = '0x0' + n.substring(2)) : 'right' === t.hexPad ? (n += '0') : qt.throwArgumentError('hex data is odd-length', 'value', e);

    for (var a = [], i = 0; i < n.length; i += 2) a.push(parseInt(n.substring(i, i + 2), 16));

    return Ft(new Uint8Array(a));
  }

  return Vt(e) ? Ft(new Uint8Array(e)) : qt.throwArgumentError('invalid arrayify value', 'value', e);
}

function Gt(e, t) {
  return !('string' != typeof e || !e.match(/^0x[0-9A-Fa-f]*$/)) && (!t || e.length === 2 + 2 * t);
}

function Xt(e) {
  return '0x' + Rt.sha256().update(Yt(e)).digest('hex');
}

new Mt('sha2/5.5.0');

var module1004 = (function () {
  function e(t) {
    module7.default(this, e);
    module29.default(this, t);
  }

  module8.default(
    e,
    [
      {
        key: 'encode',
        value: function () {
          return require('./1003').Buffer.from(require('./1004').serialize($t, this));
        },
      },
    ],
    [
      {
        key: 'decode',
        value: function (e) {
          return require('./1004').deserialize($t, this, e);
        },
      },
      {
        key: 'decodeUnchecked',
        value: function (e) {
          return require('./1004').deserializeUnchecked($t, this, e);
        },
      },
    ]
  );
  return e;
})();

exports.Struct = module1004;

var Zt = (function (e) {
  module10.default(r, e);
  var t = E(r);

  function r(e) {
    var n;
    if ((module7.default(this, r), ((n = t.call(this, e)).enum = ''), 1 !== Object.keys(e).length)) throw new Error('Enum can only take single value');
    Object.keys(e).map(function (e) {
      n.enum = e;
    });
    return n;
  }

  return module8.default(r);
})(module1004);

exports.Enum = Zt;
var $t = new Map();
exports.SOLANA_SCHEMA = $t;

function Qt(e) {
  return undefined !== e._bn;
}

exports.MAX_SEED_LENGTH = 32;

var module1006 = (function (e) {
  module10.default(n, e);
  var r = E(n);

  function n(e) {
    var t;
    if ((module7.default(this, n), ((t = r.call(this, {}))._bn = undefined), Qt(e))) t._bn = e._bn;
    else {
      if ('string' == typeof e) {
        var a = module941.default.decode(e);
        if (32 != a.length) throw new Error('Invalid public key input');
        t._bn = new module940.default(a);
      } else t._bn = new module940.default(e);

      if (t._bn.byteLength() > 32) throw new Error('Invalid public key input');
    }
    return t;
  }

  module8.default(
    n,
    [
      {
        key: 'equals',
        value: function (e) {
          return this._bn.eq(e._bn);
        },
      },
      {
        key: 'toBase58',
        value: function () {
          return module941.default.encode(this.toBytes());
        },
      },
      {
        key: 'toJSON',
        value: function () {
          return this.toBase58();
        },
      },
      {
        key: 'toBytes',
        value: function () {
          return this.toBuffer();
        },
      },
      {
        key: 'toBuffer',
        value: function () {
          var module1003 = this._bn.toArrayLike(require('./1003').Buffer);

          if (32 === module1003.length) return module1003;

          var module1003 = require('./1003').Buffer.alloc(32);

          module1003.copy(module1003, 32 - module1003.length);
          return module1003;
        },
      },
      {
        key: 'toString',
        value: function () {
          return this.toBase58();
        },
      },
    ],
    [
      {
        key: 'createWithSeed',
        value: function (e, r, a) {
          var i, u;
          return module76.default.async(
            function (o) {
              for (;;)
                switch ((o.prev = o.next)) {
                  case 0:
                    i = require('./1003').Buffer.concat([e.toBuffer(), require('./1003').Buffer.from(r), a.toBuffer()]);
                    u = Xt(new Uint8Array(i)).slice(2);
                    return o.abrupt('return', new n(require('./1003').Buffer.from(u, 'hex')));

                  case 3:
                  case 'end':
                    return o.stop();
                }
            },
            null,
            null,
            null,
            Promise
          );
        },
      },
      {
        key: 'createProgramAddress',
        value: function (e, r) {
          var a, i, u;
          return module76.default.async(
            function (o) {
              for (;;)
                switch ((o.prev = o.next)) {
                  case 0:
                    if (
                      ((a = require('./1003').Buffer.alloc(0)),
                      e.forEach(function (e) {
                        if (e.length > 32) throw new TypeError('Max seed length exceeded');
                        a = require('./1003').Buffer.concat([a, module1004(e)]);
                      }),
                      (a = require('./1003').Buffer.concat([a, r.toBuffer(), require('./1003').Buffer.from('ProgramDerivedAddress')])),
                      (i = Xt(new Uint8Array(a)).slice(2)),
                      !rr((u = new module940.default(i, 16).toArray(undefined, 32))))
                    ) {
                      o.next = 7;
                      break;
                    }

                    throw new Error('Invalid seeds, address must fall off the curve');

                  case 7:
                    return o.abrupt('return', new n(u));

                  case 8:
                  case 'end':
                    return o.stop();
                }
            },
            null,
            null,
            null,
            Promise
          );
        },
      },
      {
        key: 'findProgramAddress',
        value: function (e, r) {
          var n, a, i;
          return module76.default.async(
            function (u) {
              for (;;)
                switch ((u.prev = u.next)) {
                  case 0:
                    n = 255;

                  case 1:
                    if (0 == n) {
                      u.next = 18;
                      break;
                    }

                    u.prev = 2;
                    i = e.concat(require('./1003').Buffer.from([n]));
                    u.next = 6;
                    return module76.default.awrap(this.createProgramAddress(i, r));

                  case 6:
                    a = u.sent;
                    u.next = 15;
                    break;

                  case 9:
                    if (((u.prev = 9), (u.t0 = u.catch(2)), !(u.t0 instanceof TypeError))) {
                      u.next = 13;
                      break;
                    }

                    throw u.t0;

                  case 13:
                    n--;
                    return u.abrupt('continue', 1);

                  case 15:
                    return u.abrupt('return', [a, n]);

                  case 18:
                    throw new Error('Unable to find a viable program address nonce');

                  case 19:
                  case 'end':
                    return u.stop();
                }
            },
            null,
            this,
            [[2, 9]],
            Promise
          );
        },
      },
      {
        key: 'isOnCurve',
        value: function (e) {
          return 1 == rr(e);
        },
      },
    ]
  );
  return n;
})(module1004);

exports.PublicKey = module1006;
module1006.default = new module1006('11111111111111111111111111111111');
$t.set(module1006, {
  kind: 'struct',
  fields: [['_bn', 'u256']],
});
var tr = module939.default.lowlevel;

function rr(e) {
  var t = [tr.gf(), tr.gf(), tr.gf(), tr.gf()],
    r = tr.gf(),
    n = tr.gf(),
    a = tr.gf(),
    i = tr.gf(),
    s = tr.gf(),
    o = tr.gf(),
    u = tr.gf();
  tr.set25519(t[2], nr);
  tr.unpack25519(t[1], e);
  tr.S(a, t[1]);
  tr.M(i, a, tr.D);
  tr.Z(a, a, t[2]);
  tr.A(i, t[2], i);
  tr.S(s, i);
  tr.S(o, s);
  tr.M(u, o, s);
  tr.M(r, u, a);
  tr.M(r, r, i);
  tr.pow2523(r, r);
  tr.M(r, r, a);
  tr.M(r, r, i);
  tr.M(r, r, i);
  tr.M(t[0], r, i);
  tr.S(n, t[0]);
  tr.M(n, n, i);
  if (ir(n, a)) tr.M(t[0], t[0], ar);
  tr.S(n, t[0]);
  tr.M(n, n, i);
  return ir(n, a) ? 0 : 1;
}

var nr = tr.gf([1]),
  ar = tr.gf([41136, 18958, 6951, 50414, 58488, 44335, 6150, 12099, 55207, 15867, 153, 11085, 57099, 20417, 9344, 11139]);

function ir(e, t) {
  var r = new Uint8Array(32),
    n = new Uint8Array(32);
  tr.pack25519(r, e);
  tr.pack25519(n, t);
  return tr.crypto_verify_32(r, 0, n, 0);
}

var sr = (function () {
  function e(t) {
    module7.default(this, e);
    this._keypair = undefined;
    this._keypair = t ? module939.default.sign.keyPair.fromSecretKey(module1004(t)) : module939.default.sign.keyPair();
  }

  module8.default(e, [
    {
      key: 'publicKey',
      get: function () {
        return new module1006(this._keypair.publicKey);
      },
    },
    {
      key: 'secretKey',
      get: function () {
        return module1004(this._keypair.secretKey);
      },
    },
  ]);
  return e;
})();

exports.Account = sr;
var or = new module1006('BPFLoader1111111111111111111111111111111111');
exports.BPF_LOADER_DEPRECATED_PROGRAM_ID = or;

var ur = function () {
    var e = arguments.length > 0 && undefined !== arguments[0] ? arguments[0] : 'publicKey';
    return module946.blob(32, e);
  },
  module1006 = function () {
    var e = arguments.length > 0 && undefined !== arguments[0] ? arguments[0] : 'string',
      r = module946.struct([module946.u32('length'), module946.u32('lengthPadding'), module946.blob(module946.offset(module946.u32(), -8), 'chars')], e),
      n = r.decode.bind(r),
      a = r.encode.bind(r);

    r.decode = function (e, t) {
      return n(e, t).chars.toString('utf8');
    };

    r.encode = function (e, r, n) {
      var module1003 = {
        chars: require('./1003').Buffer.from(e, 'utf8'),
      };
      return a(module1003, r, n);
    };

    r.alloc = function (e) {
      return module946.u32().span + module946.u32().span + require('./1003').Buffer.from(e, 'utf8').length;
    };

    return r;
  };

function lr(e, t) {
  var r = 0;
  e.layout.fields.forEach(function (e) {
    if (e.span >= 0) r += e.span;
    else if ('function' == typeof e.alloc) r += e.alloc(t[e.property]);
  });
  return r;
}

function hr(e) {
  for (var t = 0, r = 0; ; ) {
    var n = e.shift();
    if (((t |= (127 & n) << (7 * r)), (r += 1), 0 == (128 & n))) break;
  }

  return t;
}

function fr(e, t) {
  for (var r = t; ; ) {
    var n = 127 & r;

    if (0 == (r >>= 7)) {
      e.push(n);
      break;
    }

    n |= 128;
    e.push(n);
  }
}

var module1006 = (function () {
  function e(t) {
    var r = this;
    module7.default(this, e);
    this.header = undefined;
    this.accountKeys = undefined;
    this.recentBlockhash = undefined;
    this.instructions = undefined;
    this.indexToProgramIds = new Map();
    this.header = t.header;
    this.accountKeys = t.accountKeys.map(function (e) {
      return new module1006(e);
    });
    this.recentBlockhash = t.recentBlockhash;
    this.instructions = t.instructions;
    this.instructions.forEach(function (e) {
      return r.indexToProgramIds.set(e.programIdIndex, r.accountKeys[e.programIdIndex]);
    });
  }

  module8.default(
    e,
    [
      {
        key: 'isAccountSigner',
        value: function (e) {
          return e < this.header.numRequiredSignatures;
        },
      },
      {
        key: 'isAccountWritable',
        value: function (e) {
          return (
            e < this.header.numRequiredSignatures - this.header.numReadonlySignedAccounts ||
            (e >= this.header.numRequiredSignatures && e < this.accountKeys.length - this.header.numReadonlyUnsignedAccounts)
          );
        },
      },
      {
        key: 'isProgramId',
        value: function (e) {
          return this.indexToProgramIds.has(e);
        },
      },
      {
        key: 'programIds',
        value: function () {
          return l.default(this.indexToProgramIds.values());
        },
      },
      {
        key: 'nonProgramIds',
        value: function () {
          var e = this;
          return this.accountKeys.filter(function (t, r) {
            return !e.isProgramId(r);
          });
        },
      },
      {
        key: 'serialize',
        value: function () {
          var e = this.accountKeys.length,
            r = [];
          fr(r, e);
          var module1003 = this.instructions.map(function (e) {
              var r = e.accounts,
                module1003 = e.programIdIndex,
                a = module941.default.decode(e.data),
                i = [];
              fr(i, r.length);
              var o = [];
              fr(o, a.length);
              return {
                programIdIndex: module1003,
                keyIndicesCount: require('./1003').Buffer.from(i),
                keyIndices: require('./1003').Buffer.from(r),
                dataLength: require('./1003').Buffer.from(o),
                data: a,
              };
            }),
            a = [];
          fr(a, module1003.length);

          var module1003 = require('./1003').Buffer.alloc(gr);

          require('./1003').Buffer.from(a).copy(module1003);

          var o = a.length;
          module1003.forEach(function (e) {
            var t = module946
              .struct([
                module946.u8('programIdIndex'),
                module946.blob(e.keyIndicesCount.length, 'keyIndicesCount'),
                module946.seq(module946.u8('keyIndex'), e.keyIndices.length, 'keyIndices'),
                module946.blob(e.dataLength.length, 'dataLength'),
                module946.seq(module946.u8('userdatum'), e.data.length, 'data'),
              ])
              .encode(e, module1003, o);
            o += t;
          });
          module1003 = module1003.slice(0, o);

          var u = module946.struct([
              module946.blob(1, 'numRequiredSignatures'),
              module946.blob(1, 'numReadonlySignedAccounts'),
              module946.blob(1, 'numReadonlyUnsignedAccounts'),
              module946.blob(r.length, 'keyCount'),
              module946.seq(ur('key'), e, 'keys'),
              ur('recentBlockhash'),
            ]),
            module1003 = {
              numRequiredSignatures: require('./1003').Buffer.from([this.header.numRequiredSignatures]),
              numReadonlySignedAccounts: require('./1003').Buffer.from([this.header.numReadonlySignedAccounts]),
              numReadonlyUnsignedAccounts: require('./1003').Buffer.from([this.header.numReadonlyUnsignedAccounts]),
              keyCount: require('./1003').Buffer.from(r),
              keys: this.accountKeys.map(function (e) {
                return module1004(e.toBytes());
              }),
              recentBlockhash: module941.default.decode(this.recentBlockhash),
            },
            module1003 = require('./1003').Buffer.alloc(2048),
            h = u.encode(module1003, module1003);

          module1003.copy(module1003, h);
          return module1003.slice(0, h + module1003.length);
        },
      },
    ],
    [
      {
        key: 'from',
        value: function (r) {
          for (var n = l.default(r), a = n.shift(), i = n.shift(), o = n.shift(), u = hr(n), c = [], h = 0; h < u; h++) {
            var f = n.slice(0, 32);
            n = n.slice(32);
            c.push(module941.default.encode(require('./1003').Buffer.from(f)));
          }

          for (var d = n.slice(0, 32), p = hr((n = n.slice(32))), b = [], g = 0; g < p; g++) {
            var y = n.shift(),
              m = hr(n),
              v = n.slice(0, m),
              w = hr((n = n.slice(m))),
              S = n.slice(0, w),
              module1003 = module941.default.encode(require('./1003').Buffer.from(S));
            n = n.slice(w);
            b.push({
              programIdIndex: y,
              accounts: v,
              data: module1003,
            });
          }

          return new e({
            header: {
              numRequiredSignatures: a,
              numReadonlySignedAccounts: i,
              numReadonlyUnsignedAccounts: o,
            },
            recentBlockhash: module941.default.encode(require('./1003').Buffer.from(d)),
            accountKeys: c,
            instructions: b,
          });
        },
      },
    ]
  );
  return e;
})();

function pr(e, t) {
  if (!e) throw new Error(t || 'Assertion failed');
}

exports.Message = module1006;

var module1006 = require('./1003').Buffer.alloc(64).fill(0),
  gr = 1232;

exports.PACKET_DATA_SIZE = gr;
var module1006 = module8.default(function e(r) {
  module7.default(this, e);
  this.keys = undefined;
  this.programId = undefined;
  this.data = require('./1003').Buffer.alloc(0);
  this.programId = r.programId;
  this.keys = r.keys;
  if (r.data) this.data = r.data;
});
exports.TransactionInstruction = module1006;

var module1006 = (function () {
  function e(t) {
    module7.default(this, e);
    this.signatures = [];
    this.feePayer = undefined;
    this.instructions = [];
    this.recentBlockhash = undefined;
    this.nonceInfo = undefined;
    if (t) module29.default(this, t);
  }

  module8.default(
    e,
    [
      {
        key: 'signature',
        get: function () {
          return this.signatures.length > 0 ? this.signatures[0].signature : null;
        },
      },
      {
        key: 'add',
        value: function (...args) {
          if (0 === args.length) throw new Error('No instructions');
          args.forEach(function (t) {
            if ('instructions' in t) e.instructions = e.instructions.concat(t.instructions);
            else if ('data' in t && 'programId' in t && 'keys' in t) e.instructions.push(t);
            else e.instructions.push(new module1006(t));
          });
          return this;
        },
      },
      {
        key: 'compileMessage',
        value: function () {
          var e = this.nonceInfo;

          if (e && this.instructions[0] != e.nonceInstruction) {
            this.recentBlockhash = e.nonce;
            this.instructions.unshift(e.nonceInstruction);
          }

          var t,
            r = this.recentBlockhash;
          if (!r) throw new Error('Transaction recentBlockhash required');
          if ((this.instructions.length < 1 && console.warn('No instructions provided'), this.feePayer)) t = this.feePayer;
          else {
            if (!(this.signatures.length > 0 && this.signatures[0].publicKey)) throw new Error('Transaction fee payer required');
            t = this.signatures[0].publicKey;
          }

          for (var n = 0; n < this.instructions.length; n++)
            if (undefined === this.instructions[n].programId) throw new Error('Transaction instruction index ' + n + ' has undefined program id');

          var a = [],
            i = [];
          this.instructions.forEach(function (e) {
            e.keys.forEach(function (e) {
              i.push(module29.default({}, e));
            });
            var t = e.programId.toString();
            if (!a.includes(t)) a.push(t);
          });
          a.forEach(function (e) {
            i.push({
              pubkey: new module1006(e),
              isSigner: false,
              isWritable: false,
            });
          });
          i.sort(function (e, t) {
            var r = e.pubkey.toBase58().localeCompare(t.pubkey.toBase58()),
              n = e.isSigner === t.isSigner ? 0 : e.isSigner ? -1 : 1,
              a = e.isWritable === t.isWritable ? r : e.isWritable ? -1 : 1;
            return n || a;
          });
          var s = [];
          i.forEach(function (e) {
            var t = e.pubkey.toString(),
              r = s.findIndex(function (e) {
                return e.pubkey.toString() === t;
              });
            if (r > -1) s[r].isWritable = s[r].isWritable || e.isWritable;
            else s.push(e);
          });
          var o = s.findIndex(function (e) {
            return e.pubkey.equals(t);
          });

          if (o > -1) {
            var u = s.splice(o, 1),
              l = module23.default(u, 1)[0];
            l.isSigner = true;
            l.isWritable = true;
            s.unshift(l);
          } else
            s.unshift({
              pubkey: t,
              isSigner: true,
              isWritable: true,
            });

          for (
            var h,
              f = function (e) {
                var t = s.findIndex(function (t) {
                  return t.pubkey.equals(e.publicKey);
                });
                if (!(t > -1)) throw new Error('unknown signer: ' + e.publicKey.toString());

                if (!s[t].isSigner) {
                  s[t].isSigner = true;
                  console.warn(
                    'Transaction references a signature that is unnecessary, only the fee payer and instruction signer accounts should sign a transaction. This behavior is deprecated and will throw an error in the next major version release.'
                  );
                }
              },
              d = A(this.signatures);
            !(h = d()).done;

          ) {
            f(h.value);
          }

          var b = 0,
            g = 0,
            y = 0,
            m = [],
            v = [];
          s.forEach(function (e) {
            var t = e.pubkey,
              r = e.isSigner,
              n = e.isWritable;

            if (r) {
              m.push(t.toString());
              b += 1;
              if (!n) g += 1;
            } else {
              v.push(t.toString());
              if (!n) y += 1;
            }
          });
          var w = m.concat(v),
            S = this.instructions.map(function (e) {
              var t = e.data,
                r = e.programId;
              return {
                programIdIndex: w.indexOf(r.toString()),
                accounts: e.keys.map(function (e) {
                  return w.indexOf(e.pubkey.toString());
                }),
                data: module941.default.encode(t),
              };
            });
          S.forEach(function (e) {
            pr(e.programIdIndex >= 0);
            e.accounts.forEach(function (e) {
              return pr(e >= 0);
            });
          });
          return new module1006({
            header: {
              numRequiredSignatures: b,
              numReadonlySignedAccounts: g,
              numReadonlyUnsignedAccounts: y,
            },
            accountKeys: w,
            recentBlockhash: r,
            instructions: S,
          });
        },
      },
      {
        key: '_compile',
        value: function () {
          var e = this.compileMessage(),
            t = e.accountKeys.slice(0, e.header.numRequiredSignatures);
          if (
            this.signatures.length === t.length &&
            this.signatures.every(function (e, r) {
              return t[r].equals(e.publicKey);
            })
          )
            return e;
          this.signatures = t.map(function (e) {
            return {
              signature: null,
              publicKey: e,
            };
          });
          return e;
        },
      },
      {
        key: 'serializeMessage',
        value: function () {
          return this._compile().serialize();
        },
      },
      {
        key: 'setSigners',
        value: function (...args) {
          if (0 === args.length) throw new Error('No signers');
          var n = new Set();
          this.signatures = args
            .filter(function (e) {
              var t = e.toString();
              return !n.has(t) && (n.add(t), true);
            })
            .map(function (e) {
              return {
                signature: null,
                publicKey: e,
              };
            });
        },
      },
      {
        key: 'sign',
        value: function (...args) {
          if (0 === args.length) throw new Error('No signers');

          for (var n = new Set(), a = [], i = 0, s = args; i < s.length; i++) {
            var o = s[i],
              u = o.publicKey.toString();

            if (!n.has(u)) {
              n.add(u);
              a.push(o);
            }
          }

          this.signatures = a.map(function (e) {
            return {
              signature: null,
              publicKey: e.publicKey,
            };
          });

          var c = this._compile();

          this._partialSign.apply(this, [c].concat(a));

          this._verifySignatures(c.serialize(), true);
        },
      },
      {
        key: 'partialSign',
        value: function (...args) {
          if (0 === args.length) throw new Error('No signers');

          for (var n = new Set(), a = [], i = 0, s = args; i < s.length; i++) {
            var o = s[i],
              u = o.publicKey.toString();

            if (!n.has(u)) {
              n.add(u);
              a.push(o);
            }
          }

          var c = this._compile();

          this._partialSign.apply(this, [c].concat(a));
        },
      },
      {
        key: '_partialSign',
        value: function (e) {
          for (var t = this, r = e.serialize(), n = arguments.length, a = new Array(n > 1 ? n - 1 : 0), i = 1; i < n; i++) a[i - 1] = arguments[i];

          a.forEach(function (e) {
            var n = module939.default.sign.detached(r, e.secretKey);

            t._addSignature(e.publicKey, module1004(n));
          });
        },
      },
      {
        key: 'addSignature',
        value: function (e, t) {
          this._compile();

          this._addSignature(e, t);
        },
      },
      {
        key: '_addSignature',
        value: function (e, r) {
          pr(64 === r.length);
          var n = this.signatures.findIndex(function (t) {
            return e.equals(t.publicKey);
          });
          if (n < 0) throw new Error('unknown signer: ' + e.toString());
          this.signatures[n].signature = require('./1003').Buffer.from(r);
        },
      },
      {
        key: 'verifySignatures',
        value: function () {
          return this._verifySignatures(this.serializeMessage(), true);
        },
      },
      {
        key: '_verifySignatures',
        value: function (e, t) {
          for (var r, n = A(this.signatures); !(r = n()).done; ) {
            var a = r.value,
              i = a.signature,
              s = a.publicKey;

            if (null === i) {
              if (t) return false;
            } else if (!module939.default.sign.detached.verify(e, i, s.toBuffer())) return false;
          }

          return true;
        },
      },
      {
        key: 'serialize',
        value: function (e) {
          var t = module29.default(
              {
                requireAllSignatures: true,
                verifySignatures: true,
              },
              e
            ),
            r = t.requireAllSignatures,
            n = t.verifySignatures,
            a = this.serializeMessage();
          if (n && !this._verifySignatures(a, r)) throw new Error('Signature verification failed');
          return this._serialize(a);
        },
      },
      {
        key: '_serialize',
        value: function (e) {
          var r = this.signatures,
            n = [];
          fr(n, r.length);

          var a = n.length + 64 * r.length + e.length,
            module1003 = require('./1003').Buffer.alloc(a);

          pr(r.length < 256);

          require('./1003').Buffer.from(n).copy(module1003, 0);

          r.forEach(function (e, r) {
            var a = e.signature;

            if (null !== a) {
              pr(64 === a.length, 'signature has invalid length');

              require('./1003')
                .Buffer.from(a)
                .copy(module1003, n.length + 64 * r);
            }
          });
          e.copy(module1003, n.length + 64 * r.length);
          pr(module1003.length <= gr, 'Transaction too large: ' + module1003.length + ' > ' + gr);
          return module1003;
        },
      },
      {
        key: 'keys',
        get: function () {
          pr(1 === this.instructions.length);
          return this.instructions[0].keys.map(function (e) {
            return e.pubkey;
          });
        },
      },
      {
        key: 'programId',
        get: function () {
          pr(1 === this.instructions.length);
          return this.instructions[0].programId;
        },
      },
      {
        key: 'data',
        get: function () {
          pr(1 === this.instructions.length);
          return this.instructions[0].data;
        },
      },
    ],
    [
      {
        key: 'from',
        value: function (r) {
          for (var n = l.default(r), a = hr(n), i = [], o = 0; o < a; o++) {
            var u = n.slice(0, 64);
            n = n.slice(64);
            i.push(module941.default.encode(require('./1003').Buffer.from(u)));
          }

          return e.populate(module1006.from(n), i);
        },
      },
      {
        key: 'populate',
        value: function (t) {
          var r = arguments.length > 1 && undefined !== arguments[1] ? arguments[1] : [],
            n = new e();
          n.recentBlockhash = t.recentBlockhash;
          if (t.header.numRequiredSignatures > 0) n.feePayer = t.accountKeys[0];
          r.forEach(function (e, r) {
            var a = {
              signature: e == module941.default.encode(module1006) ? null : module941.default.decode(e),
              publicKey: t.accountKeys[r],
            };
            n.signatures.push(a);
          });
          t.instructions.forEach(function (e) {
            var r = e.accounts.map(function (e) {
              var r = t.accountKeys[e];
              return {
                pubkey: r,
                isSigner:
                  n.signatures.some(function (e) {
                    return e.publicKey.toString() === r.toString();
                  }) || t.isAccountSigner(e),
                isWritable: t.isAccountWritable(e),
              };
            });
            n.instructions.push(
              new module1006({
                keys: r,
                programId: t.accountKeys[e.programIdIndex],
                data: module941.default.decode(e.data),
              })
            );
          });
          return n;
        },
      },
    ]
  );
  return e;
})();

exports.Transaction = module1006;
var kr = new module1006('SysvarC1ock11111111111111111111111111111111');
exports.SYSVAR_CLOCK_PUBKEY = kr;
var vr = new module1006('SysvarEpochSchedu1e111111111111111111111111');
exports.SYSVAR_EPOCH_SCHEDULE_PUBKEY = vr;
var wr = new module1006('Sysvar1nstructions1111111111111111111111111');
exports.SYSVAR_INSTRUCTIONS_PUBKEY = wr;
var Sr = new module1006('SysvarRecentB1ockHashes11111111111111111111');
exports.SYSVAR_RECENT_BLOCKHASHES_PUBKEY = Sr;

var _r = new module1006('SysvarRent111111111111111111111111111111111');

exports.SYSVAR_RENT_PUBKEY = _r;
var xr = new module1006('SysvarRewards111111111111111111111111111111');
exports.SYSVAR_REWARDS_PUBKEY = xr;
var Ar = new module1006('SysvarS1otHashes111111111111111111111111111');
exports.SYSVAR_SLOT_HASHES_PUBKEY = Ar;
var Ir = new module1006('SysvarS1otHistory11111111111111111111111111');
exports.SYSVAR_SLOT_HISTORY_PUBKEY = Ir;
var Pr = new module1006('SysvarStakeHistory1111111111111111111111111');

function Er(e, t, r, n) {
  var a, i, s;
  return module76.default.async(
    function (u) {
      for (;;)
        switch ((u.prev = u.next)) {
          case 0:
            a = n && {
              skipPreflight: n.skipPreflight,
              preflightCommitment: n.preflightCommitment || n.commitment,
            };
            u.next = 3;
            return module76.default.awrap(e.sendTransaction(t, r, a));

          case 3:
            i = u.sent;
            u.next = 6;
            return module76.default.awrap(e.confirmTransaction(i, n && n.commitment));

          case 6:
            if (!(s = u.sent.value).err) {
              u.next = 9;
              break;
            }

            throw new Error('Transaction ' + i + ' failed (' + JSON.stringify(s) + ')');

          case 9:
            return u.abrupt('return', i);

          case 10:
          case 'end':
            return u.stop();
        }
    },
    null,
    null,
    null,
    Promise
  );
}

function Br(e) {
  return new Promise(function (t) {
    return setTimeout(t, e);
  });
}

function Tr(e, r) {
  var n = e.layout.span >= 0 ? e.layout.span : lr(e, r),
    module1003 = require('./1003').Buffer.alloc(n),
    i = module29.default(
      {
        instruction: e.index,
      },
      r
    );

  e.layout.encode(i, module1003);
  return module1003;
}

function Rr(e, t) {
  var r;

  try {
    r = e.layout.decode(t);
  } catch (e) {
    throw new Error('invalid instruction; ' + e);
  }

  if (r.instruction !== e.index) throw new Error('invalid instruction; instruction index mismatch ' + r.instruction + ' != ' + e.index);
  return r;
}

exports.SYSVAR_STAKE_HISTORY_PUBKEY = Pr;
var Cr = module946.nu64('lamportsPerSignature');
exports.FeeCalculatorLayout = Cr;
var Or = module946.struct([module946.u32('version'), module946.u32('state'), ur('authorizedPubkey'), ur('nonce'), module946.struct([Cr], 'feeCalculator')]),
  Nr = Or.span;
exports.NONCE_ACCOUNT_LENGTH = Nr;

var Wr = (function () {
  function e(t) {
    module7.default(this, e);
    this.authorizedPubkey = undefined;
    this.nonce = undefined;
    this.feeCalculator = undefined;
    this.authorizedPubkey = t.authorizedPubkey;
    this.nonce = t.nonce;
    this.feeCalculator = t.feeCalculator;
  }

  module8.default(e, null, [
    {
      key: 'fromAccountData',
      value: function (t) {
        var r = Or.decode(module1004(t), 0);
        return new e({
          authorizedPubkey: new module1006(r.authorizedPubkey),
          nonce: new module1006(r.nonce).toString(),
          feeCalculator: r.feeCalculator,
        });
      },
    },
  ]);
  return e;
})();

exports.NonceAccount = Wr;

var zr = (function () {
  function e() {
    module7.default(this, e);
  }

  module8.default(e, null, [
    {
      key: 'decodeInstructionType',
      value: function (e) {
        this.checkProgramId(e.programId);

        for (var t, r = module946.u32('instruction').decode(e.data), n = 0, a = Object.entries(Ur); n < a.length; n++) {
          var i = a[n],
            s = module23.default(i, 2),
            o = s[0];

          if (s[1].index == r) {
            t = o;
            break;
          }
        }

        if (!t) throw new Error('Instruction type incorrect; not a SystemInstruction');
        return t;
      },
    },
    {
      key: 'decodeCreateAccount',
      value: function (e) {
        this.checkProgramId(e.programId);
        this.checkKeyLength(e.keys, 2);
        var t = Rr(Ur.Create, e.data),
          r = t.lamports,
          n = t.space,
          a = t.programId;
        return {
          fromPubkey: e.keys[0].pubkey,
          newAccountPubkey: e.keys[1].pubkey,
          lamports: r,
          space: n,
          programId: new module1006(a),
        };
      },
    },
    {
      key: 'decodeTransfer',
      value: function (e) {
        this.checkProgramId(e.programId);
        this.checkKeyLength(e.keys, 2);
        var t = Rr(Ur.Transfer, e.data).lamports;
        return {
          fromPubkey: e.keys[0].pubkey,
          toPubkey: e.keys[1].pubkey,
          lamports: t,
        };
      },
    },
    {
      key: 'decodeTransferWithSeed',
      value: function (e) {
        this.checkProgramId(e.programId);
        this.checkKeyLength(e.keys, 3);
        var t = Rr(Ur.TransferWithSeed, e.data),
          r = t.lamports,
          n = t.seed,
          a = t.programId;
        return {
          fromPubkey: e.keys[0].pubkey,
          basePubkey: e.keys[1].pubkey,
          toPubkey: e.keys[2].pubkey,
          lamports: r,
          seed: n,
          programId: new module1006(a),
        };
      },
    },
    {
      key: 'decodeAllocate',
      value: function (e) {
        this.checkProgramId(e.programId);
        this.checkKeyLength(e.keys, 1);
        var t = Rr(Ur.Allocate, e.data).space;
        return {
          accountPubkey: e.keys[0].pubkey,
          space: t,
        };
      },
    },
    {
      key: 'decodeAllocateWithSeed',
      value: function (e) {
        this.checkProgramId(e.programId);
        this.checkKeyLength(e.keys, 1);
        var t = Rr(Ur.AllocateWithSeed, e.data),
          r = t.base,
          n = t.seed,
          a = t.space,
          i = t.programId;
        return {
          accountPubkey: e.keys[0].pubkey,
          basePubkey: new module1006(r),
          seed: n,
          space: a,
          programId: new module1006(i),
        };
      },
    },
    {
      key: 'decodeAssign',
      value: function (e) {
        this.checkProgramId(e.programId);
        this.checkKeyLength(e.keys, 1);
        var t = Rr(Ur.Assign, e.data).programId;
        return {
          accountPubkey: e.keys[0].pubkey,
          programId: new module1006(t),
        };
      },
    },
    {
      key: 'decodeAssignWithSeed',
      value: function (e) {
        this.checkProgramId(e.programId);
        this.checkKeyLength(e.keys, 1);
        var t = Rr(Ur.AssignWithSeed, e.data),
          r = t.base,
          n = t.seed,
          a = t.programId;
        return {
          accountPubkey: e.keys[0].pubkey,
          basePubkey: new module1006(r),
          seed: n,
          programId: new module1006(a),
        };
      },
    },
    {
      key: 'decodeCreateWithSeed',
      value: function (e) {
        this.checkProgramId(e.programId);
        this.checkKeyLength(e.keys, 2);
        var t = Rr(Ur.CreateWithSeed, e.data),
          r = t.base,
          n = t.seed,
          a = t.lamports,
          i = t.space,
          s = t.programId;
        return {
          fromPubkey: e.keys[0].pubkey,
          newAccountPubkey: e.keys[1].pubkey,
          basePubkey: new module1006(r),
          seed: n,
          lamports: a,
          space: i,
          programId: new module1006(s),
        };
      },
    },
    {
      key: 'decodeNonceInitialize',
      value: function (e) {
        this.checkProgramId(e.programId);
        this.checkKeyLength(e.keys, 3);
        var t = Rr(Ur.InitializeNonceAccount, e.data).authorized;
        return {
          noncePubkey: e.keys[0].pubkey,
          authorizedPubkey: new module1006(t),
        };
      },
    },
    {
      key: 'decodeNonceAdvance',
      value: function (e) {
        this.checkProgramId(e.programId);
        this.checkKeyLength(e.keys, 3);
        Rr(Ur.AdvanceNonceAccount, e.data);
        return {
          noncePubkey: e.keys[0].pubkey,
          authorizedPubkey: e.keys[2].pubkey,
        };
      },
    },
    {
      key: 'decodeNonceWithdraw',
      value: function (e) {
        this.checkProgramId(e.programId);
        this.checkKeyLength(e.keys, 5);
        var t = Rr(Ur.WithdrawNonceAccount, e.data).lamports;
        return {
          noncePubkey: e.keys[0].pubkey,
          toPubkey: e.keys[1].pubkey,
          authorizedPubkey: e.keys[4].pubkey,
          lamports: t,
        };
      },
    },
    {
      key: 'decodeNonceAuthorize',
      value: function (e) {
        this.checkProgramId(e.programId);
        this.checkKeyLength(e.keys, 2);
        var t = Rr(Ur.AuthorizeNonceAccount, e.data).authorized;
        return {
          noncePubkey: e.keys[0].pubkey,
          authorizedPubkey: e.keys[1].pubkey,
          newAuthorizedPubkey: new module1006(t),
        };
      },
    },
    {
      key: 'checkProgramId',
      value: function (e) {
        if (!e.equals(Lr.programId)) throw new Error('invalid instruction; programId is not SystemProgram');
      },
    },
    {
      key: 'checkKeyLength',
      value: function (e, t) {
        if (e.length < t) throw new Error('invalid instruction; found ' + e.length + ' keys, expected at least ' + t);
      },
    },
  ]);
  return e;
})();

exports.SystemInstruction = zr;
var Ur = Object.freeze({
  Create: {
    index: 0,
    layout: module946.struct([module946.u32('instruction'), module946.ns64('lamports'), module946.ns64('space'), ur('programId')]),
  },
  Assign: {
    index: 1,
    layout: module946.struct([module946.u32('instruction'), ur('programId')]),
  },
  Transfer: {
    index: 2,
    layout: module946.struct([module946.u32('instruction'), module946.ns64('lamports')]),
  },
  CreateWithSeed: {
    index: 3,
    layout: module946.struct([module946.u32('instruction'), ur('base'), module1006('seed'), module946.ns64('lamports'), module946.ns64('space'), ur('programId')]),
  },
  AdvanceNonceAccount: {
    index: 4,
    layout: module946.struct([module946.u32('instruction')]),
  },
  WithdrawNonceAccount: {
    index: 5,
    layout: module946.struct([module946.u32('instruction'), module946.ns64('lamports')]),
  },
  InitializeNonceAccount: {
    index: 6,
    layout: module946.struct([module946.u32('instruction'), ur('authorized')]),
  },
  AuthorizeNonceAccount: {
    index: 7,
    layout: module946.struct([module946.u32('instruction'), ur('authorized')]),
  },
  Allocate: {
    index: 8,
    layout: module946.struct([module946.u32('instruction'), module946.ns64('space')]),
  },
  AllocateWithSeed: {
    index: 9,
    layout: module946.struct([module946.u32('instruction'), ur('base'), module1006('seed'), module946.ns64('space'), ur('programId')]),
  },
  AssignWithSeed: {
    index: 10,
    layout: module946.struct([module946.u32('instruction'), ur('base'), module1006('seed'), ur('programId')]),
  },
  TransferWithSeed: {
    index: 11,
    layout: module946.struct([module946.u32('instruction'), module946.ns64('lamports'), module1006('seed'), ur('programId')]),
  },
});
exports.SYSTEM_INSTRUCTION_LAYOUTS = Ur;

var Lr = (function () {
  function e() {
    module7.default(this, e);
  }

  module8.default(e, null, [
    {
      key: 'createAccount',
      value: function (e) {
        var t = Tr(Ur.Create, {
          lamports: e.lamports,
          space: e.space,
          programId: module1004(e.programId.toBuffer()),
        });
        return new module1006({
          keys: [
            {
              pubkey: e.fromPubkey,
              isSigner: true,
              isWritable: true,
            },
            {
              pubkey: e.newAccountPubkey,
              isSigner: true,
              isWritable: true,
            },
          ],
          programId: this.programId,
          data: t,
        });
      },
    },
    {
      key: 'transfer',
      value: function (e) {
        var t, r;

        if ('basePubkey' in e) {
          t = Tr(Ur.TransferWithSeed, {
            lamports: e.lamports,
            seed: e.seed,
            programId: module1004(e.programId.toBuffer()),
          });
          r = [
            {
              pubkey: e.fromPubkey,
              isSigner: false,
              isWritable: true,
            },
            {
              pubkey: e.basePubkey,
              isSigner: true,
              isWritable: false,
            },
            {
              pubkey: e.toPubkey,
              isSigner: false,
              isWritable: true,
            },
          ];
        } else {
          t = Tr(Ur.Transfer, {
            lamports: e.lamports,
          });
          r = [
            {
              pubkey: e.fromPubkey,
              isSigner: true,
              isWritable: true,
            },
            {
              pubkey: e.toPubkey,
              isSigner: false,
              isWritable: true,
            },
          ];
        }

        return new module1006({
          keys: r,
          programId: this.programId,
          data: t,
        });
      },
    },
    {
      key: 'assign',
      value: function (e) {
        var t, r;

        if ('basePubkey' in e) {
          t = Tr(Ur.AssignWithSeed, {
            base: module1004(e.basePubkey.toBuffer()),
            seed: e.seed,
            programId: module1004(e.programId.toBuffer()),
          });
          r = [
            {
              pubkey: e.accountPubkey,
              isSigner: false,
              isWritable: true,
            },
            {
              pubkey: e.basePubkey,
              isSigner: true,
              isWritable: false,
            },
          ];
        } else {
          t = Tr(Ur.Assign, {
            programId: module1004(e.programId.toBuffer()),
          });
          r = [
            {
              pubkey: e.accountPubkey,
              isSigner: true,
              isWritable: true,
            },
          ];
        }

        return new module1006({
          keys: r,
          programId: this.programId,
          data: t,
        });
      },
    },
    {
      key: 'createAccountWithSeed',
      value: function (e) {
        var t = Tr(Ur.CreateWithSeed, {
            base: module1004(e.basePubkey.toBuffer()),
            seed: e.seed,
            lamports: e.lamports,
            space: e.space,
            programId: module1004(e.programId.toBuffer()),
          }),
          r = [
            {
              pubkey: e.fromPubkey,
              isSigner: true,
              isWritable: true,
            },
            {
              pubkey: e.newAccountPubkey,
              isSigner: false,
              isWritable: true,
            },
          ];
        if (e.basePubkey != e.fromPubkey)
          r.push({
            pubkey: e.basePubkey,
            isSigner: true,
            isWritable: false,
          });
        return new module1006({
          keys: r,
          programId: this.programId,
          data: t,
        });
      },
    },
    {
      key: 'createNonceAccount',
      value: function (t) {
        var r = new module1006();
        if ('basePubkey' in t && 'seed' in t)
          r.add(
            e.createAccountWithSeed({
              fromPubkey: t.fromPubkey,
              newAccountPubkey: t.noncePubkey,
              basePubkey: t.basePubkey,
              seed: t.seed,
              lamports: t.lamports,
              space: Nr,
              programId: this.programId,
            })
          );
        else
          r.add(
            e.createAccount({
              fromPubkey: t.fromPubkey,
              newAccountPubkey: t.noncePubkey,
              lamports: t.lamports,
              space: Nr,
              programId: this.programId,
            })
          );
        var n = {
          noncePubkey: t.noncePubkey,
          authorizedPubkey: t.authorizedPubkey,
        };
        r.add(this.nonceInitialize(n));
        return r;
      },
    },
    {
      key: 'nonceInitialize',
      value: function (e) {
        var t = Tr(Ur.InitializeNonceAccount, {
            authorized: module1004(e.authorizedPubkey.toBuffer()),
          }),
          r = {
            keys: [
              {
                pubkey: e.noncePubkey,
                isSigner: false,
                isWritable: true,
              },
              {
                pubkey: Sr,
                isSigner: false,
                isWritable: false,
              },
              {
                pubkey: _r,
                isSigner: false,
                isWritable: false,
              },
            ],
            programId: this.programId,
            data: t,
          };
        return new module1006(r);
      },
    },
    {
      key: 'nonceAdvance',
      value: function (e) {
        var t = Tr(Ur.AdvanceNonceAccount),
          r = {
            keys: [
              {
                pubkey: e.noncePubkey,
                isSigner: false,
                isWritable: true,
              },
              {
                pubkey: Sr,
                isSigner: false,
                isWritable: false,
              },
              {
                pubkey: e.authorizedPubkey,
                isSigner: true,
                isWritable: false,
              },
            ],
            programId: this.programId,
            data: t,
          };
        return new module1006(r);
      },
    },
    {
      key: 'nonceWithdraw',
      value: function (e) {
        var t = Tr(Ur.WithdrawNonceAccount, {
          lamports: e.lamports,
        });
        return new module1006({
          keys: [
            {
              pubkey: e.noncePubkey,
              isSigner: false,
              isWritable: true,
            },
            {
              pubkey: e.toPubkey,
              isSigner: false,
              isWritable: true,
            },
            {
              pubkey: Sr,
              isSigner: false,
              isWritable: false,
            },
            {
              pubkey: _r,
              isSigner: false,
              isWritable: false,
            },
            {
              pubkey: e.authorizedPubkey,
              isSigner: true,
              isWritable: false,
            },
          ],
          programId: this.programId,
          data: t,
        });
      },
    },
    {
      key: 'nonceAuthorize',
      value: function (e) {
        var t = Tr(Ur.AuthorizeNonceAccount, {
          authorized: module1004(e.newAuthorizedPubkey.toBuffer()),
        });
        return new module1006({
          keys: [
            {
              pubkey: e.noncePubkey,
              isSigner: false,
              isWritable: true,
            },
            {
              pubkey: e.authorizedPubkey,
              isSigner: true,
              isWritable: false,
            },
          ],
          programId: this.programId,
          data: t,
        });
      },
    },
    {
      key: 'allocate',
      value: function (e) {
        var t, r;

        if ('basePubkey' in e) {
          t = Tr(Ur.AllocateWithSeed, {
            base: module1004(e.basePubkey.toBuffer()),
            seed: e.seed,
            space: e.space,
            programId: module1004(e.programId.toBuffer()),
          });
          r = [
            {
              pubkey: e.accountPubkey,
              isSigner: false,
              isWritable: true,
            },
            {
              pubkey: e.basePubkey,
              isSigner: true,
              isWritable: false,
            },
          ];
        } else {
          t = Tr(Ur.Allocate, {
            space: e.space,
          });
          r = [
            {
              pubkey: e.accountPubkey,
              isSigner: true,
              isWritable: true,
            },
          ];
        }

        return new module1006({
          keys: r,
          programId: this.programId,
          data: t,
        });
      },
    },
  ]);
  return e;
})();

exports.SystemProgram = Lr;
Lr.programId = new module1006('11111111111111111111111111111111');

var module1006 = (function () {
  function e() {
    module7.default(this, e);
  }

  module8.default(e, null, [
    {
      key: 'getMinNumSignatures',
      value: function (t) {
        return 2 * (Math.ceil(t / e.chunkSize) + 1 + 1);
      },
    },
    {
      key: 'load',
      value: function (r, n, a, i, u) {
        var module23, l, h, f, d, p, b, g, y, m, k, module948, module965, module1002, x;
        return module76.default.async(
          function (A) {
            for (;;)
              switch ((A.prev = A.next)) {
                case 0:
                  A.next = 2;
                  return module76.default.awrap(r.getMinimumBalanceForRentExemption(u.length));

                case 2:
                  module23 = A.sent;
                  A.next = 5;
                  return module76.default.awrap(r.getAccountInfo(a.publicKey, 'confirmed'));

                case 5:
                  if (((l = A.sent), (h = null), null === l)) {
                    A.next = 16;
                    break;
                  }

                  if (!l.executable) {
                    A.next = 11;
                    break;
                  }

                  console.error('Program load failed, account is already executable');
                  return A.abrupt('return', false);

                case 11:
                  if (l.data.length !== u.length)
                    (h = h || new module1006()).add(
                      Lr.allocate({
                        accountPubkey: a.publicKey,
                        space: u.length,
                      })
                    );
                  if (!l.owner.equals(i))
                    (h = h || new module1006()).add(
                      Lr.assign({
                        accountPubkey: a.publicKey,
                        programId: i,
                      })
                    );
                  if (l.lamports < module23)
                    (h = h || new module1006()).add(
                      Lr.transfer({
                        fromPubkey: n.publicKey,
                        toPubkey: a.publicKey,
                        lamports: module23 - l.lamports,
                      })
                    );
                  A.next = 17;
                  break;

                case 16:
                  h = new module1006().add(
                    Lr.createAccount({
                      fromPubkey: n.publicKey,
                      newAccountPubkey: a.publicKey,
                      lamports: module23 > 0 ? module23 : 1,
                      space: u.length,
                      programId: i,
                    })
                  );

                case 17:
                  if (null === h) {
                    A.next = 20;
                    break;
                  }

                  A.next = 20;
                  return module76.default.awrap(
                    Er(r, h, [n, a], {
                      commitment: 'confirmed',
                    })
                  );

                case 20:
                  f = module946.struct([
                    module946.u32('instruction'),
                    module946.u32('offset'),
                    module946.u32('bytesLength'),
                    module946.u32('bytesLengthPadding'),
                    module946.seq(module946.u8('byte'), module946.offset(module946.u32(), -8), 'bytes'),
                  ]);
                  d = e.chunkSize;
                  p = 0;
                  b = u;
                  g = [];

                case 25:
                  if (!(b.length > 0)) {
                    A.next = 39;
                    break;
                  }

                  if (
                    ((y = b.slice(0, d)),
                    (m = require('./1003').Buffer.alloc(d + 16)),
                    f.encode(
                      {
                        instruction: 0,
                        offset: p,
                        bytes: y,
                      },
                      m
                    ),
                    (k = new module1006().add({
                      keys: [
                        {
                          pubkey: a.publicKey,
                          isSigner: true,
                          isWritable: true,
                        },
                      ],
                      programId: i,
                      data: m,
                    })),
                    g.push(
                      Er(r, k, [n, a], {
                        commitment: 'confirmed',
                      })
                    ),
                    !r._rpcEndpoint.includes('solana.com'))
                  ) {
                    A.next = 35;
                    break;
                  }

                  module948 = 4;
                  A.next = 35;
                  return module76.default.awrap(Br(1e3 / module948));

                case 35:
                  p += d;
                  b = b.slice(d);
                  A.next = 25;
                  break;

                case 39:
                  A.next = 41;
                  return module76.default.awrap(Promise.all(g));

                case 41:
                  module965 = module946.struct([module946.u32('instruction')]);
                  module1002 = require('./1003').Buffer.alloc(module965.span);
                  module965.encode(
                    {
                      instruction: 1,
                    },
                    module1002
                  );
                  x = new module1006().add({
                    keys: [
                      {
                        pubkey: a.publicKey,
                        isSigner: true,
                        isWritable: true,
                      },
                      {
                        pubkey: _r,
                        isSigner: false,
                        isWritable: false,
                      },
                    ],
                    programId: i,
                    data: module1002,
                  });
                  A.next = 47;
                  return module76.default.awrap(
                    Er(r, x, [n, a], {
                      commitment: 'confirmed',
                    })
                  );

                case 47:
                  return A.abrupt('return', true);

                case 48:
                case 'end':
                  return A.stop();
              }
          },
          null,
          null,
          null,
          Promise
        );
      },
    },
  ]);
  return e;
})();

exports.Loader = module1006;
module1006.chunkSize = 932;
var Dr = new module1006('BPFLoader2111111111111111111111111111111111');
exports.BPF_LOADER_PROGRAM_ID = Dr;

var Mr = (function () {
  function e() {
    module7.default(this, e);
  }

  module8.default(e, null, [
    {
      key: 'getMinNumSignatures',
      value: function (e) {
        return module1006.getMinNumSignatures(e);
      },
    },
    {
      key: 'load',
      value: function (e, t, r, n, a) {
        return module1006.load(e, t, r, a, n);
      },
    },
  ]);
  return e;
})();

exports.BpfLoader = Mr;
var qr = {
  exports: {},
};
!(function (e, t) {
  var r = 'undefined' != typeof self ? self : R,
    n = (function () {
      function e() {
        this.fetch = false;
        this.DOMException = r.DOMException;
      }

      e.prototype = r;
      return new e();
    })();

  !(function (e) {
    !(function (t) {
      var r = {
        searchParams: 'URLSearchParams' in e,
        iterable: 'Symbol' in e && 'iterator' in Symbol,
        blob:
          'FileReader' in e &&
          'Blob' in e &&
          (function () {
            try {
              new Blob();
              return true;
            } catch (e) {
              return false;
            }
          })(),
        formData: 'FormData' in e,
        arrayBuffer: 'ArrayBuffer' in e,
      };
      if (r.arrayBuffer)
        var n = [
            '[object Int8Array]',
            '[object Uint8Array]',
            '[object Uint8ClampedArray]',
            '[object Int16Array]',
            '[object Uint16Array]',
            '[object Int32Array]',
            '[object Uint32Array]',
            '[object Float32Array]',
            '[object Float64Array]',
          ],
          a =
            ArrayBuffer.isView ||
            function (e) {
              return e && n.indexOf(Object.prototype.toString.call(e)) > -1;
            };

      function i(e) {
        if (('string' != typeof e && (e = String(e)), /[^a-z0-9\-#$%&'*+.^_`|~]/i.test(e))) throw new TypeError('Invalid character in header field name');
        return e.toLowerCase();
      }

      function s(e) {
        if ('string' != typeof e) e = String(e);
        return e;
      }

      function o(e) {
        var t = {
          next: function () {
            var t = e.shift();
            return {
              done: undefined === t,
              value: t,
            };
          },
        };
        if (r.iterable)
          t[Symbol.iterator] = function () {
            return t;
          };
        return t;
      }

      function u(e) {
        this.map = {};
        if (e instanceof u)
          e.forEach(function (e, t) {
            this.append(t, e);
          }, this);
        else if (Array.isArray(e))
          e.forEach(function (e) {
            this.append(e[0], e[1]);
          }, this);
        else if (e)
          Object.getOwnPropertyNames(e).forEach(function (t) {
            this.append(t, e[t]);
          }, this);
      }

      function c(e) {
        if (e.bodyUsed) return Promise.reject(new TypeError('Already read'));
        e.bodyUsed = true;
      }

      function l(e) {
        return new Promise(function (t, r) {
          e.onload = function () {
            t(e.result);
          };

          e.onerror = function () {
            r(e.error);
          };
        });
      }

      function h(e) {
        var t = new FileReader(),
          r = l(t);
        t.readAsArrayBuffer(e);
        return r;
      }

      function f(e) {
        for (var t = new Uint8Array(e), r = new Array(t.length), n = 0; n < t.length; n++) r[n] = String.fromCharCode(t[n]);

        return r.join('');
      }

      function d(e) {
        if (e.slice) return e.slice(0);
        var t = new Uint8Array(e.byteLength);
        t.set(new Uint8Array(e));
        return t.buffer;
      }

      function p() {
        this.bodyUsed = false;

        this._initBody = function (e) {
          var t;
          this._bodyInit = e;
          if (e)
            'string' == typeof e
              ? (this._bodyText = e)
              : r.blob && Blob.prototype.isPrototypeOf(e)
              ? (this._bodyBlob = e)
              : r.formData && FormData.prototype.isPrototypeOf(e)
              ? (this._bodyFormData = e)
              : r.searchParams && URLSearchParams.prototype.isPrototypeOf(e)
              ? (this._bodyText = e.toString())
              : r.arrayBuffer && r.blob && (t = e) && DataView.prototype.isPrototypeOf(t)
              ? ((this._bodyArrayBuffer = d(e.buffer)), (this._bodyInit = new Blob([this._bodyArrayBuffer])))
              : r.arrayBuffer && (ArrayBuffer.prototype.isPrototypeOf(e) || a(e))
              ? (this._bodyArrayBuffer = d(e))
              : (this._bodyText = e = Object.prototype.toString.call(e));
          else this._bodyText = '';
          if (!this.headers.get('content-type'))
            'string' == typeof e
              ? this.headers.set('content-type', 'text/plain;charset=UTF-8')
              : this._bodyBlob && this._bodyBlob.type
              ? this.headers.set('content-type', this._bodyBlob.type)
              : r.searchParams && URLSearchParams.prototype.isPrototypeOf(e) && this.headers.set('content-type', 'application/x-www-form-urlencoded;charset=UTF-8');
        };

        if (r.blob) {
          this.blob = function () {
            var e = c(this);
            if (e) return e;
            if (this._bodyBlob) return Promise.resolve(this._bodyBlob);
            if (this._bodyArrayBuffer) return Promise.resolve(new Blob([this._bodyArrayBuffer]));
            if (this._bodyFormData) throw new Error('could not read FormData body as blob');
            return Promise.resolve(new Blob([this._bodyText]));
          };

          this.arrayBuffer = function () {
            return this._bodyArrayBuffer ? c(this) || Promise.resolve(this._bodyArrayBuffer) : this.blob().then(h);
          };
        }

        this.text = function () {
          var e,
            t,
            r,
            n = c(this);
          if (n) return n;

          if (this._bodyBlob) {
            e = this._bodyBlob;
            t = new FileReader();
            r = l(t);
            t.readAsText(e);
            return r;
          }

          if (this._bodyArrayBuffer) return Promise.resolve(f(this._bodyArrayBuffer));
          if (this._bodyFormData) throw new Error('could not read FormData body as text');
          return Promise.resolve(this._bodyText);
        };

        if (r.formData)
          this.formData = function () {
            return this.text().then(y);
          };

        this.json = function () {
          return this.text().then(JSON.parse);
        };

        return this;
      }

      u.prototype.append = function (e, t) {
        e = i(e);
        t = s(t);
        var r = this.map[e];
        this.map[e] = r ? r + ', ' + t : t;
      };

      u.prototype.delete = function (e) {
        delete this.map[i(e)];
      };

      u.prototype.get = function (e) {
        e = i(e);
        return this.has(e) ? this.map[e] : null;
      };

      u.prototype.has = function (e) {
        return this.map.hasOwnProperty(i(e));
      };

      u.prototype.set = function (e, t) {
        this.map[i(e)] = s(t);
      };

      u.prototype.forEach = function (e, t) {
        for (var r in this.map) this.map.hasOwnProperty(r) && e.call(t, this.map[r], r, this);
      };

      u.prototype.keys = function () {
        var e = [];
        this.forEach(function (t, r) {
          e.push(r);
        });
        return o(e);
      };

      u.prototype.values = function () {
        var e = [];
        this.forEach(function (t) {
          e.push(t);
        });
        return o(e);
      };

      u.prototype.entries = function () {
        var e = [];
        this.forEach(function (t, r) {
          e.push([r, t]);
        });
        return o(e);
      };

      if (r.iterable) u.prototype[Symbol.iterator] = u.prototype.entries;
      var b = ['DELETE', 'GET', 'HEAD', 'OPTIONS', 'POST', 'PUT'];

      function g(e, t) {
        var r,
          n,
          a = (t = t || {}).body;

        if (e instanceof g) {
          if (e.bodyUsed) throw new TypeError('Already read');
          this.url = e.url;
          this.credentials = e.credentials;
          if (!t.headers) this.headers = new u(e.headers);
          this.method = e.method;
          this.mode = e.mode;
          this.signal = e.signal;

          if (!(a || null == e._bodyInit)) {
            a = e._bodyInit;
            e.bodyUsed = true;
          }
        } else this.url = String(e);

        if (
          ((this.credentials = t.credentials || this.credentials || 'same-origin'),
          (!t.headers && this.headers) || (this.headers = new u(t.headers)),
          (this.method = ((r = t.method || this.method || 'GET'), (n = r.toUpperCase()), b.indexOf(n) > -1 ? n : r)),
          (this.mode = t.mode || this.mode || null),
          (this.signal = t.signal || this.signal),
          (this.referrer = null),
          ('GET' === this.method || 'HEAD' === this.method) && a)
        )
          throw new TypeError('Body not allowed for GET or HEAD requests');

        this._initBody(a);
      }

      function y(e) {
        var t = new FormData();
        e.trim()
          .split('&')
          .forEach(function (e) {
            if (e) {
              var r = e.split('='),
                n = r.shift().replace(/\+/g, ' '),
                a = r.join('=').replace(/\+/g, ' ');
              t.append(decodeURIComponent(n), decodeURIComponent(a));
            }
          });
        return t;
      }

      function m(e, t) {
        if (!t) t = {};
        this.type = 'default';
        this.status = undefined === t.status ? 200 : t.status;
        this.ok = this.status >= 200 && this.status < 300;
        this.statusText = 'statusText' in t ? t.statusText : 'OK';
        this.headers = new u(t.headers);
        this.url = t.url || '';

        this._initBody(e);
      }

      g.prototype.clone = function () {
        return new g(this, {
          body: this._bodyInit,
        });
      };

      p.call(g.prototype);
      p.call(m.prototype);

      m.prototype.clone = function () {
        return new m(this._bodyInit, {
          status: this.status,
          statusText: this.statusText,
          headers: new u(this.headers),
          url: this.url,
        });
      };

      m.error = function () {
        var e = new m(null, {
          status: 0,
          statusText: '',
        });
        e.type = 'error';
        return e;
      };

      var k = [301, 302, 303, 307, 308];

      m.redirect = function (e, t) {
        if (-1 === k.indexOf(t)) throw new RangeError('Invalid status code');
        return new m(null, {
          status: t,
          headers: {
            location: e,
          },
        });
      };

      t.DOMException = e.DOMException;

      try {
        new t.DOMException();
      } catch (e) {
        t.DOMException = function (e, t) {
          this.message = e;
          this.name = t;
          var r = Error(e);
          this.stack = r.stack;
        };

        t.DOMException.prototype = Object.create(Error.prototype);
        t.DOMException.prototype.constructor = t.DOMException;
      }

      function v(e, n) {
        return new Promise(function (a, i) {
          var s = new g(e, n);
          if (s.signal && s.signal.aborted) return i(new t.DOMException('Aborted', 'AbortError'));
          var o = new XMLHttpRequest();

          function c() {
            o.abort();
          }

          o.onload = function () {
            var e,
              t,
              r = {
                status: o.status,
                statusText: o.statusText,
                headers:
                  ((e = o.getAllResponseHeaders() || ''),
                  (t = new u()),
                  e
                    .replace(/\r?\n[\t ]+/g, ' ')
                    .split(/\r?\n/)
                    .forEach(function (e) {
                      var r = e.split(':'),
                        n = r.shift().trim();

                      if (n) {
                        var a = r.join(':').trim();
                        t.append(n, a);
                      }
                    }),
                  t),
              };
            r.url = 'responseURL' in o ? o.responseURL : r.headers.get('X-Request-URL');
            var n = 'response' in o ? o.response : o.responseText;
            a(new m(n, r));
          };

          o.onerror = function () {
            i(new TypeError('Network request failed'));
          };

          o.ontimeout = function () {
            i(new TypeError('Network request failed'));
          };

          o.onabort = function () {
            i(new t.DOMException('Aborted', 'AbortError'));
          };

          o.open(s.method, s.url, true);
          if ('include' === s.credentials) o.withCredentials = true;
          else if ('omit' === s.credentials) o.withCredentials = false;
          if ('responseType' in o && r.blob) o.responseType = 'blob';
          s.headers.forEach(function (e, t) {
            o.setRequestHeader(t, e);
          });

          if (s.signal) {
            s.signal.addEventListener('abort', c);

            o.onreadystatechange = function () {
              if (4 === o.readyState) s.signal.removeEventListener('abort', c);
            };
          }

          o.send(undefined === s._bodyInit ? null : s._bodyInit);
        });
      }

      v.polyfill = true;

      if (!e.fetch) {
        e.fetch = v;
        e.Headers = u;
        e.Request = g;
        e.Response = m;
      }

      t.Headers = u;
      t.Request = g;
      t.Response = m;
      t.fetch = v;
      Object.defineProperty(t, '__esModule', {
        value: true,
      });
    })({});
  })(n);
  n.fetch.ponyfill = true;
  delete n.fetch.polyfill;
  var a = n;
  (t = a.fetch).default = a.fetch;
  t.fetch = a.fetch;
  t.Headers = a.Headers;
  t.Request = a.Request;
  t.Response = a.Response;
  e.exports = t;
})(qr, qr.exports);
var jr,
  Fr = (jr = qr.exports) && jr.__esModule && Object.prototype.hasOwnProperty.call(jr, 'default') ? jr.default : jr;

function Hr(e) {
  for (var t = 0; e > 1; ) {
    e /= 2;
    t++;
  }

  return t;
}

var Vr = (function () {
  function e(t, r, n, a, i) {
    module7.default(this, e);
    this.slotsPerEpoch = undefined;
    this.leaderScheduleSlotOffset = undefined;
    this.warmup = undefined;
    this.firstNormalEpoch = undefined;
    this.firstNormalSlot = undefined;
    this.slotsPerEpoch = t;
    this.leaderScheduleSlotOffset = r;
    this.warmup = n;
    this.firstNormalEpoch = a;
    this.firstNormalSlot = i;
  }

  module8.default(e, [
    {
      key: 'getEpoch',
      value: function (e) {
        return this.getEpochAndSlotIndex(e)[0];
      },
    },
    {
      key: 'getEpochAndSlotIndex',
      value: function (e) {
        if (e < this.firstNormalSlot) {
          var t = Hr(0 === (r = e + 32 + 1) ? 1 : (r--, (r |= r >> 1), (r |= r >> 2), (r |= r >> 4), (r |= r >> 8), (r |= r >> 16), 1 + (r |= r >> 32))) - Hr(32) - 1;
          return [t, e - (this.getSlotsInEpoch(t) - 32)];
        }

        var r,
          n = e - this.firstNormalSlot,
          a = Math.floor(n / this.slotsPerEpoch);
        return [this.firstNormalEpoch + a, n % this.slotsPerEpoch];
      },
    },
    {
      key: 'getFirstSlotInEpoch',
      value: function (e) {
        return e <= this.firstNormalEpoch ? 32 * (2 ** e - 1) : (e - this.firstNormalEpoch) * this.slotsPerEpoch + this.firstNormalSlot;
      },
    },
    {
      key: 'getLastSlotInEpoch',
      value: function (e) {
        return this.getFirstSlotInEpoch(e) + this.getSlotsInEpoch(e) - 1;
      },
    },
    {
      key: 'getSlotsInEpoch',
      value: function (e) {
        return e < this.firstNormalEpoch ? 2 ** (e + Hr(32)) : this.slotsPerEpoch;
      },
    },
  ]);
  return e;
})();

exports.EpochSchedule = Vr;

var Yr = (function (e) {
  module10.default(r, e);
  var t = E(r);

  function r(e, n) {
    var a;
    module7.default(this, r);
    (a = t.call(this, e)).logs = undefined;
    a.logs = n;
    return a;
  }

  return module8.default(r);
})(u.default(Error));

exports.SendTransactionError = Yr;

function Gr(e, t) {
  var r,
    n = new Promise(function (e) {
      r = setTimeout(function () {
        return e(null);
      }, t);
    });
  return Promise.race([e, n]).then(function (e) {
    clearTimeout(r);
    return e;
  });
}

function Xr(e) {
  var t = new URL(e),
    r = 'https:' === t.protocol;
  t.protocol = r ? 'wss:' : 'ws:';
  t.host = '';
  if ('' !== t.port) t.port = String(Number(t.port) + 1);
  return t.toString();
}

var module1006 = require('./1006').coerce(require('./1006').instance(module1006), require('./1006').string(), function (e) {
    return new module1006(e);
  }),
  module1006 = require('./1006').tuple([require('./1006').string(), require('./1006').literal('base64')]),
  module1006 = require('./1006').coerce(require('./1006').instance(require('./1003').Buffer), module1006, function (e) {
    return require('./1003').Buffer.from(e[0], 'base64');
  });

function Qr(e) {
  return require('./1006').union([
    require('./1006').type({
      jsonrpc: require('./1006').literal('2.0'),
      id: require('./1006').string(),
      result: e,
    }),
    require('./1006').type({
      jsonrpc: require('./1006').literal('2.0'),
      id: require('./1006').string(),
      error: require('./1006').type({
        code: require('./1006').unknown(),
        message: require('./1006').string(),
        data: require('./1006').optional(require('./1006').any()),
      }),
    }),
  ]);
}

exports.BLOCKHASH_CACHE_TIMEOUT_MS = 3e4;
var module1006 = Qr(require('./1006').unknown());

function tn(e) {
  return require('./1006').coerce(Qr(e), module1006, function (r) {
    return 'error' in r
      ? r
      : module29.default({}, r, {
          result: require('./1006').create(r.result, e),
        });
  });
}

function rn(e) {
  return tn(
    require('./1006').type({
      context: require('./1006').type({
        slot: require('./1006').number(),
      }),
      value: e,
    })
  );
}

function nn(e) {
  return require('./1006').type({
    context: require('./1006').type({
      slot: require('./1006').number(),
    }),
    value: e,
  });
}

var module1006 = require('./1006').type({
    foundation: require('./1006').number(),
    foundationTerm: require('./1006').number(),
    initial: require('./1006').number(),
    taper: require('./1006').number(),
    terminal: require('./1006').number(),
  }),
  module1006 = tn(
    require('./1006').array(
      require('./1006').nullable(
        require('./1006').type({
          epoch: require('./1006').number(),
          effectiveSlot: require('./1006').number(),
          amount: require('./1006').number(),
          postBalance: require('./1006').number(),
        })
      )
    )
  ),
  module1006 = require('./1006').type({
    epoch: require('./1006').number(),
    slotIndex: require('./1006').number(),
    slotsInEpoch: require('./1006').number(),
    absoluteSlot: require('./1006').number(),
    blockHeight: require('./1006').optional(require('./1006').number()),
    transactionCount: require('./1006').optional(require('./1006').number()),
  }),
  module1006 = require('./1006').type({
    slotsPerEpoch: require('./1006').number(),
    leaderScheduleSlotOffset: require('./1006').number(),
    warmup: require('./1006').boolean(),
    firstNormalEpoch: require('./1006').number(),
    firstNormalSlot: require('./1006').number(),
  }),
  module1006 = require('./1006').record(require('./1006').string(), require('./1006').array(require('./1006').number())),
  module1006 = require('./1006').nullable(require('./1006').union([require('./1006').type({}), require('./1006').string()])),
  module1006 = require('./1006').type({
    err: module1006,
  }),
  module1006 = require('./1006').literal('receivedSignature'),
  module1006 = require('./1006').type({
    'solana-core': require('./1006').string(),
    'feature-set': require('./1006').optional(require('./1006').number()),
  }),
  module1006 = rn(
    require('./1006').type({
      err: require('./1006').nullable(require('./1006').union([require('./1006').type({}), require('./1006').string()])),
      logs: require('./1006').nullable(require('./1006').array(require('./1006').string())),
      accounts: require('./1006').optional(
        require('./1006').nullable(
          require('./1006').array(
            require('./1006').type({
              executable: require('./1006').boolean(),
              owner: require('./1006').string(),
              lamports: require('./1006').number(),
              data: require('./1006').array(require('./1006').string()),
              rentEpoch: require('./1006').optional(require('./1006').number()),
            })
          )
        )
      ),
      unitsConsumed: require('./1006').optional(require('./1006').number()),
    })
  );

function bn(e, t, r, n, a) {
  var i;
  if (n)
    i = function (e, t) {
      var r;
      return module76.default.async(
        function (a) {
          for (;;)
            switch ((a.prev = a.next)) {
              case 0:
                a.next = 2;
                return module76.default.awrap(
                  new Promise(function (r, a) {
                    try {
                      n(e, t, function (e, t) {
                        return r([e, t]);
                      });
                    } catch (e) {
                      a(e);
                    }
                  })
                );

              case 2:
                r = a.sent;
                a.next = 5;
                return module76.default.awrap(Fr.apply(undefined, l.default(r)));

              case 5:
                return a.abrupt('return', a.sent);

              case 6:
              case 'end':
                return a.stop();
            }
        },
        null,
        null,
        null,
        Promise
      );
    };
  return new module948.default(function (t, n) {
    var s, u, c, l, h;
    return module76.default.async(
      function (f) {
        for (;;)
          switch ((f.prev = f.next)) {
            case 0:
              s = {
                method: 'POST',
                body: t,
                agent: undefined,
                headers: module29.default(
                  {
                    'Content-Type': 'application/json',
                  },
                  r || {}
                ),
              };
              f.prev = 2;
              u = 5;
              l = 500;

            case 5:
              if (!i) {
                f.next = 11;
                break;
              }

              f.next = 8;
              return module76.default.awrap(i(e, s));

            case 8:
              c = f.sent;
              f.next = 14;
              break;

            case 11:
              f.next = 13;
              return module76.default.awrap(Fr(e, s));

            case 13:
              c = f.sent;

            case 14:
              if (429 === c.status) {
                f.next = 16;
                break;
              }

              return f.abrupt('break', 27);

            case 16:
              if (true !== a) {
                f.next = 18;
                break;
              }

              return f.abrupt('break', 27);

            case 18:
              if (0 !== (u -= 1)) {
                f.next = 21;
                break;
              }

              return f.abrupt('break', 27);

            case 21:
              console.log('Server responded with ' + c.status + ' ' + c.statusText + '.  Retrying after ' + l + 'ms delay...');
              f.next = 24;
              return module76.default.awrap(Br(l));

            case 24:
              l *= 2;

            case 25:
              f.next = 5;
              break;

            case 27:
              f.next = 29;
              return module76.default.awrap(c.text());

            case 29:
              h = f.sent;
              if (c.ok) n(null, h);
              else n(new Error(c.status + ' ' + c.statusText + ': ' + h));
              f.next = 36;
              break;

            case 33:
              f.prev = 33;
              f.t0 = f.catch(2);
              if (f.t0 instanceof Error) n(f.t0);

            case 36:
              f.prev = 36;
              return f.finish(36);

            case 38:
            case 'end':
              return f.stop();
          }
      },
      null,
      null,
      [[2, 33, 36, 38]],
      Promise
    );
  }, {});
}

function gn(e) {
  return function (t) {
    return new Promise(function (r, n) {
      if (0 === t.length) r([]);
      var a = t.map(function (t) {
        return e.request(t.methodName, t.args);
      });
      e.request(a, function (e, t) {
        if (e) n(e);
        else r(t);
      });
    });
  };
}

var yn = tn(module1006),
  mn = tn(module1006),
  kn = tn(module1006),
  vn = tn(module1006),
  module1006 = tn(require('./1006').number()),
  module1006 = rn(
    require('./1006').type({
      total: require('./1006').number(),
      circulating: require('./1006').number(),
      nonCirculating: require('./1006').number(),
      nonCirculatingAccounts: require('./1006').array(module1006),
    })
  ),
  module1006 = require('./1006').type({
    amount: require('./1006').string(),
    uiAmount: require('./1006').nullable(require('./1006').number()),
    decimals: require('./1006').number(),
    uiAmountString: require('./1006').optional(require('./1006').string()),
  }),
  module1006 = rn(
    require('./1006').array(
      require('./1006').type({
        address: module1006,
        amount: require('./1006').string(),
        uiAmount: require('./1006').nullable(require('./1006').number()),
        decimals: require('./1006').number(),
        uiAmountString: require('./1006').optional(require('./1006').string()),
      })
    )
  ),
  module1006 = rn(
    require('./1006').array(
      require('./1006').type({
        pubkey: module1006,
        account: require('./1006').type({
          executable: require('./1006').boolean(),
          owner: module1006,
          lamports: require('./1006').number(),
          data: module1006,
          rentEpoch: require('./1006').number(),
        }),
      })
    )
  ),
  module1006 = require('./1006').type({
    program: require('./1006').string(),
    parsed: require('./1006').unknown(),
    space: require('./1006').number(),
  }),
  module1006 = rn(
    require('./1006').array(
      require('./1006').type({
        pubkey: module1006,
        account: require('./1006').type({
          executable: require('./1006').boolean(),
          owner: module1006,
          lamports: require('./1006').number(),
          data: module1006,
          rentEpoch: require('./1006').number(),
        }),
      })
    )
  ),
  module1006 = rn(
    require('./1006').array(
      require('./1006').type({
        lamports: require('./1006').number(),
        address: module1006,
      })
    )
  ),
  module1006 = require('./1006').type({
    executable: require('./1006').boolean(),
    owner: module1006,
    lamports: require('./1006').number(),
    data: module1006,
    rentEpoch: require('./1006').number(),
  }),
  module1006 = require('./1006').type({
    pubkey: module1006,
    account: module1006,
  }),
  module1006 = require('./1006').coerce(
    require('./1006').union([require('./1006').instance(require('./1003').Buffer), module1006]),
    require('./1006').union([module1006, module1006]),
    function (e) {
      return Array.isArray(e) ? require('./1006').create(e, module1006) : e;
    }
  ),
  module1006 = require('./1006').type({
    executable: require('./1006').boolean(),
    owner: module1006,
    lamports: require('./1006').number(),
    data: module1006,
    rentEpoch: require('./1006').number(),
  }),
  module1006 = require('./1006').type({
    pubkey: module1006,
    account: module1006,
  }),
  module1006 = require('./1006').type({
    state: require('./1006').union([
      require('./1006').literal('active'),
      require('./1006').literal('inactive'),
      require('./1006').literal('activating'),
      require('./1006').literal('deactivating'),
    ]),
    active: require('./1006').number(),
    inactive: require('./1006').number(),
  }),
  module1006 = tn(
    require('./1006').array(
      require('./1006').type({
        signature: require('./1006').string(),
        slot: require('./1006').number(),
        err: module1006,
        memo: require('./1006').nullable(require('./1006').string()),
        blockTime: require('./1006').optional(require('./1006').nullable(require('./1006').number())),
      })
    )
  ),
  module1006 = tn(
    require('./1006').array(
      require('./1006').type({
        signature: require('./1006').string(),
        slot: require('./1006').number(),
        err: module1006,
        memo: require('./1006').nullable(require('./1006').string()),
        blockTime: require('./1006').optional(require('./1006').nullable(require('./1006').number())),
      })
    )
  ),
  module1006 = require('./1006').type({
    subscription: require('./1006').number(),
    result: nn(module1006),
  }),
  module1006 = require('./1006').type({
    pubkey: module1006,
    account: module1006,
  }),
  module1006 = require('./1006').type({
    subscription: require('./1006').number(),
    result: nn(module1006),
  }),
  module1006 = require('./1006').type({
    parent: require('./1006').number(),
    slot: require('./1006').number(),
    root: require('./1006').number(),
  }),
  module1006 = require('./1006').type({
    subscription: require('./1006').number(),
    result: module1006,
  }),
  module1006 = require('./1006').union([
    require('./1006').type({
      type: require('./1006').union([
        require('./1006').literal('firstShredReceived'),
        require('./1006').literal('completed'),
        require('./1006').literal('optimisticConfirmation'),
        require('./1006').literal('root'),
      ]),
      slot: require('./1006').number(),
      timestamp: require('./1006').number(),
    }),
    require('./1006').type({
      type: require('./1006').literal('createdBank'),
      parent: require('./1006').number(),
      slot: require('./1006').number(),
      timestamp: require('./1006').number(),
    }),
    require('./1006').type({
      type: require('./1006').literal('frozen'),
      slot: require('./1006').number(),
      timestamp: require('./1006').number(),
      stats: require('./1006').type({
        numTransactionEntries: require('./1006').number(),
        numSuccessfulTransactions: require('./1006').number(),
        numFailedTransactions: require('./1006').number(),
        maxTransactionsPerEntry: require('./1006').number(),
      }),
    }),
    require('./1006').type({
      type: require('./1006').literal('dead'),
      slot: require('./1006').number(),
      timestamp: require('./1006').number(),
      err: require('./1006').string(),
    }),
  ]),
  module1006 = require('./1006').type({
    subscription: require('./1006').number(),
    result: module1006,
  }),
  module1006 = require('./1006').type({
    subscription: require('./1006').number(),
    result: nn(require('./1006').union([module1006, module1006])),
  }),
  module1006 = require('./1006').type({
    subscription: require('./1006').number(),
    result: require('./1006').number(),
  }),
  module1006 = require('./1006').type({
    pubkey: require('./1006').string(),
    gossip: require('./1006').nullable(require('./1006').string()),
    tpu: require('./1006').nullable(require('./1006').string()),
    rpc: require('./1006').nullable(require('./1006').string()),
    version: require('./1006').nullable(require('./1006').string()),
  }),
  module1006 = require('./1006').type({
    votePubkey: require('./1006').string(),
    nodePubkey: require('./1006').string(),
    activatedStake: require('./1006').number(),
    epochVoteAccount: require('./1006').boolean(),
    epochCredits: require('./1006').array(require('./1006').tuple([require('./1006').number(), require('./1006').number(), require('./1006').number()])),
    commission: require('./1006').number(),
    lastVote: require('./1006').number(),
    rootSlot: require('./1006').nullable(require('./1006').number()),
  }),
  module1006 = tn(
    require('./1006').type({
      current: require('./1006').array(module1006),
      delinquent: require('./1006').array(module1006),
    })
  ),
  module1006 = require('./1006').union([require('./1006').literal('processed'), require('./1006').literal('confirmed'), require('./1006').literal('finalized')]),
  module1006 = require('./1006').type({
    slot: require('./1006').number(),
    confirmations: require('./1006').nullable(require('./1006').number()),
    err: module1006,
    confirmationStatus: require('./1006').optional(module1006),
  }),
  module1006 = rn(require('./1006').array(require('./1006').nullable(module1006))),
  module1006 = tn(require('./1006').number()),
  module1006 = require('./1006').type({
    signatures: require('./1006').array(require('./1006').string()),
    message: require('./1006').type({
      accountKeys: require('./1006').array(require('./1006').string()),
      header: require('./1006').type({
        numRequiredSignatures: require('./1006').number(),
        numReadonlySignedAccounts: require('./1006').number(),
        numReadonlyUnsignedAccounts: require('./1006').number(),
      }),
      instructions: require('./1006').array(
        require('./1006').type({
          accounts: require('./1006').array(require('./1006').number()),
          data: require('./1006').string(),
          programIdIndex: require('./1006').number(),
        })
      ),
      recentBlockhash: require('./1006').string(),
    }),
  }),
  module1006 = require('./1006').type({
    parsed: require('./1006').unknown(),
    program: require('./1006').string(),
    programId: module1006,
  }),
  module1006 = require('./1006').type({
    accounts: require('./1006').array(module1006),
    data: require('./1006').string(),
    programId: module1006,
  }),
  module1006 = require('./1006').union([module1006, module1006]),
  module1006 = require('./1006').union([
    require('./1006').type({
      parsed: require('./1006').unknown(),
      program: require('./1006').string(),
      programId: require('./1006').string(),
    }),
    require('./1006').type({
      accounts: require('./1006').array(require('./1006').string()),
      data: require('./1006').string(),
      programId: require('./1006').string(),
    }),
  ]),
  module1006 = require('./1006').coerce(module1006, module1006, function (e) {
    return 'accounts' in e ? require('./1006').create(e, module1006) : require('./1006').create(e, module1006);
  }),
  module1006 = require('./1006').type({
    signatures: require('./1006').array(require('./1006').string()),
    message: require('./1006').type({
      accountKeys: require('./1006').array(
        require('./1006').type({
          pubkey: module1006,
          signer: require('./1006').boolean(),
          writable: require('./1006').boolean(),
        })
      ),
      instructions: require('./1006').array(module1006),
      recentBlockhash: require('./1006').string(),
    }),
  }),
  module1006 = require('./1006').type({
    accountIndex: require('./1006').number(),
    mint: require('./1006').string(),
    owner: require('./1006').optional(require('./1006').string()),
    uiTokenAmount: module1006,
  }),
  module1006 = require('./1006').type({
    err: module1006,
    fee: require('./1006').number(),
    innerInstructions: require('./1006').optional(
      require('./1006').nullable(
        require('./1006').array(
          require('./1006').type({
            index: require('./1006').number(),
            instructions: require('./1006').array(
              require('./1006').type({
                accounts: require('./1006').array(require('./1006').number()),
                data: require('./1006').string(),
                programIdIndex: require('./1006').number(),
              })
            ),
          })
        )
      )
    ),
    preBalances: require('./1006').array(require('./1006').number()),
    postBalances: require('./1006').array(require('./1006').number()),
    logMessages: require('./1006').optional(require('./1006').nullable(require('./1006').array(require('./1006').string()))),
    preTokenBalances: require('./1006').optional(require('./1006').nullable(require('./1006').array(module1006))),
    postTokenBalances: require('./1006').optional(require('./1006').nullable(require('./1006').array(module1006))),
  }),
  module1006 = require('./1006').type({
    err: module1006,
    fee: require('./1006').number(),
    innerInstructions: require('./1006').optional(
      require('./1006').nullable(
        require('./1006').array(
          require('./1006').type({
            index: require('./1006').number(),
            instructions: require('./1006').array(module1006),
          })
        )
      )
    ),
    preBalances: require('./1006').array(require('./1006').number()),
    postBalances: require('./1006').array(require('./1006').number()),
    logMessages: require('./1006').optional(require('./1006').nullable(require('./1006').array(require('./1006').string()))),
    preTokenBalances: require('./1006').optional(require('./1006').nullable(require('./1006').array(module1006))),
    postTokenBalances: require('./1006').optional(require('./1006').nullable(require('./1006').array(module1006))),
  }),
  module1006 = tn(
    require('./1006').nullable(
      require('./1006').type({
        blockhash: require('./1006').string(),
        previousBlockhash: require('./1006').string(),
        parentSlot: require('./1006').number(),
        transactions: require('./1006').array(
          require('./1006').type({
            transaction: module1006,
            meta: require('./1006').nullable(module1006),
          })
        ),
        rewards: require('./1006').optional(
          require('./1006').array(
            require('./1006').type({
              pubkey: require('./1006').string(),
              lamports: require('./1006').number(),
              postBalance: require('./1006').nullable(require('./1006').number()),
              rewardType: require('./1006').nullable(require('./1006').string()),
            })
          )
        ),
        blockTime: require('./1006').nullable(require('./1006').number()),
      })
    )
  ),
  module1006 = tn(
    require('./1006').nullable(
      require('./1006').type({
        blockhash: require('./1006').string(),
        previousBlockhash: require('./1006').string(),
        parentSlot: require('./1006').number(),
        signatures: require('./1006').array(require('./1006').string()),
        blockTime: require('./1006').nullable(require('./1006').number()),
      })
    )
  ),
  module1006 = tn(
    require('./1006').nullable(
      require('./1006').type({
        slot: require('./1006').number(),
        meta: module1006,
        blockTime: require('./1006').optional(require('./1006').nullable(require('./1006').number())),
        transaction: module1006,
      })
    )
  ),
  module1006 = tn(
    require('./1006').nullable(
      require('./1006').type({
        slot: require('./1006').number(),
        transaction: module1006,
        meta: require('./1006').nullable(module1006),
        blockTime: require('./1006').optional(require('./1006').nullable(require('./1006').number())),
      })
    )
  ),
  module1006 = rn(
    require('./1006').type({
      blockhash: require('./1006').string(),
      feeCalculator: require('./1006').type({
        lamportsPerSignature: require('./1006').number(),
      }),
    })
  ),
  module1006 = require('./1006').type({
    slot: require('./1006').number(),
    numTransactions: require('./1006').number(),
    numSlots: require('./1006').number(),
    samplePeriodSecs: require('./1006').number(),
  }),
  module1006 = tn(require('./1006').array(module1006)),
  module1006 = rn(
    require('./1006').nullable(
      require('./1006').type({
        feeCalculator: require('./1006').type({
          lamportsPerSignature: require('./1006').number(),
        }),
      })
    )
  ),
  module1006 = tn(require('./1006').string()),
  module1006 = tn(require('./1006').string()),
  module1006 = require('./1006').type({
    err: module1006,
    logs: require('./1006').array(require('./1006').string()),
    signature: require('./1006').string(),
  }),
  module1006 = require('./1006').type({
    result: nn(module1006),
    subscription: require('./1006').number(),
  }),
  module1006 = (function () {
    function e(r, n) {
      module7.default(this, e);
      this._commitment = undefined;
      this._confirmTransactionInitialTimeout = undefined;
      this._rpcEndpoint = undefined;
      this._rpcWsEndpoint = undefined;
      this._rpcClient = undefined;
      this._rpcRequest = undefined;
      this._rpcBatchRequest = undefined;
      this._rpcWebSocket = undefined;
      this._rpcWebSocketConnected = false;
      this._rpcWebSocketHeartbeat = null;
      this._rpcWebSocketIdleTimeout = null;
      this._disableBlockhashCaching = false;
      this._pollingBlockhash = false;
      this._blockhashInfo = {
        recentBlockhash: null,
        lastFetch: 0,
        transactionSignatures: [],
        simulatedSignatures: [],
      };
      this._accountChangeSubscriptionCounter = 0;
      this._accountChangeSubscriptions = {};
      this._programAccountChangeSubscriptionCounter = 0;
      this._programAccountChangeSubscriptions = {};
      this._rootSubscriptionCounter = 0;
      this._rootSubscriptions = {};
      this._signatureSubscriptionCounter = 0;
      this._signatureSubscriptions = {};
      this._slotSubscriptionCounter = 0;
      this._slotSubscriptions = {};
      this._logsSubscriptionCounter = 0;
      this._logsSubscriptions = {};
      this._slotUpdateSubscriptionCounter = 0;
      this._slotUpdateSubscriptions = {};
      var a,
        i,
        o,
        u,
        c,
        l = new URL(r);
      l.protocol;
      if (n && 'string' == typeof n) this._commitment = n;
      else if (n) {
        this._commitment = n.commitment;
        this._confirmTransactionInitialTimeout = n.confirmTransactionInitialTimeout;
        a = n.wsEndpoint;
        i = n.httpHeaders;
        o = n.fetchMiddleware;
        u = n.disableRetryOnRateLimit;
      }
      this._rpcEndpoint = r;
      this._rpcWsEndpoint = a || Xr(r);
      this._rpcClient = bn(l.toString(), 0, i, o, u);
      this._rpcRequest =
        ((c = this._rpcClient),
        function (e, t) {
          return new Promise(function (r, n) {
            c.request(e, t, function (e, t) {
              if (e) n(e);
              else r(t);
            });
          });
        });
      this._rpcBatchRequest = gn(this._rpcClient);
      this._rpcWebSocket = new (require('./1007').Client)(this._rpcWsEndpoint, {
        autoconnect: false,
        max_reconnects: 1 / 0,
      });

      this._rpcWebSocket.on('open', this._wsOnOpen.bind(this));

      this._rpcWebSocket.on('error', this._wsOnError.bind(this));

      this._rpcWebSocket.on('close', this._wsOnClose.bind(this));

      this._rpcWebSocket.on('accountNotification', this._wsOnAccountNotification.bind(this));

      this._rpcWebSocket.on('programNotification', this._wsOnProgramAccountNotification.bind(this));

      this._rpcWebSocket.on('slotNotification', this._wsOnSlotNotification.bind(this));

      this._rpcWebSocket.on('slotsUpdatesNotification', this._wsOnSlotUpdatesNotification.bind(this));

      this._rpcWebSocket.on('signatureNotification', this._wsOnSignatureNotification.bind(this));

      this._rpcWebSocket.on('rootNotification', this._wsOnRootNotification.bind(this));

      this._rpcWebSocket.on('logsNotification', this._wsOnLogsNotification.bind(this));
    }

    module8.default(e, [
      {
        key: 'commitment',
        get: function () {
          return this._commitment;
        },
      },
      {
        key: 'getBalanceAndContext',
        value: function (e, r) {
          var n, a, i;
          return module76.default.async(
            function (u) {
              for (;;)
                switch ((u.prev = u.next)) {
                  case 0:
                    n = this._buildArgs([e.toBase58()], r);
                    u.next = 3;
                    return module76.default.awrap(this._rpcRequest('getBalance', n));

                  case 3:
                    if (((a = u.sent), !('error' in (i = require('./1006').create(a, rn(require('./1006').number())))))) {
                      u.next = 7;
                      break;
                    }

                    throw new Error('failed to get balance for ' + e.toBase58() + ': ' + i.error.message);

                  case 7:
                    return u.abrupt('return', i.result);

                  case 8:
                  case 'end':
                    return u.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getBalance',
        value: function (e, t) {
          return module76.default.async(
            function (r) {
              for (;;)
                switch ((r.prev = r.next)) {
                  case 0:
                    r.next = 2;
                    return module76.default.awrap(
                      this.getBalanceAndContext(e, t)
                        .then(function (e) {
                          return e.value;
                        })
                        .catch(function (t) {
                          throw new Error('failed to get balance of account ' + e.toBase58() + ': ' + t);
                        })
                    );

                  case 2:
                    return r.abrupt('return', r.sent);

                  case 3:
                  case 'end':
                    return r.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getBlockTime',
        value: function (e) {
          var r, n;
          return module76.default.async(
            function (a) {
              for (;;)
                switch ((a.prev = a.next)) {
                  case 0:
                    a.next = 2;
                    return module76.default.awrap(this._rpcRequest('getBlockTime', [e]));

                  case 2:
                    if (((r = a.sent), !('error' in (n = require('./1006').create(r, tn(require('./1006').nullable(require('./1006').number()))))))) {
                      a.next = 6;
                      break;
                    }

                    throw new Error('failed to get block time for slot ' + e + ': ' + n.error.message);

                  case 6:
                    return a.abrupt('return', n.result);

                  case 7:
                  case 'end':
                    return a.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getMinimumLedgerSlot',
        value: function () {
          var e, r;
          return module76.default.async(
            function (n) {
              for (;;)
                switch ((n.prev = n.next)) {
                  case 0:
                    n.next = 2;
                    return module76.default.awrap(this._rpcRequest('minimumLedgerSlot', []));

                  case 2:
                    if (((e = n.sent), !('error' in (r = require('./1006').create(e, tn(require('./1006').number())))))) {
                      n.next = 6;
                      break;
                    }

                    throw new Error('failed to get minimum ledger slot: ' + r.error.message);

                  case 6:
                    return n.abrupt('return', r.result);

                  case 7:
                  case 'end':
                    return n.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getFirstAvailableBlock',
        value: function () {
          var e, r;
          return module76.default.async(
            function (n) {
              for (;;)
                switch ((n.prev = n.next)) {
                  case 0:
                    n.next = 2;
                    return module76.default.awrap(this._rpcRequest('getFirstAvailableBlock', []));

                  case 2:
                    if (((e = n.sent), !('error' in (r = require('./1006').create(e, module1006))))) {
                      n.next = 6;
                      break;
                    }

                    throw new Error('failed to get first available block: ' + r.error.message);

                  case 6:
                    return n.abrupt('return', r.result);

                  case 7:
                  case 'end':
                    return n.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getSupply',
        value: function (e) {
          var r, n, a;
          return module76.default.async(
            function (i) {
              for (;;)
                switch ((i.prev = i.next)) {
                  case 0:
                    r = {};
                    r =
                      'string' == typeof e
                        ? {
                            commitment: e,
                          }
                        : e
                        ? module29.default({}, e, {
                            commitment: (e && e.commitment) || this.commitment,
                          })
                        : {
                            commitment: this.commitment,
                          };
                    i.next = 4;
                    return module76.default.awrap(this._rpcRequest('getSupply', [r]));

                  case 4:
                    if (((n = i.sent), !('error' in (a = require('./1006').create(n, module1006))))) {
                      i.next = 8;
                      break;
                    }

                    throw new Error('failed to get supply: ' + a.error.message);

                  case 8:
                    return i.abrupt('return', a.result);

                  case 9:
                  case 'end':
                    return i.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getTokenSupply',
        value: function (e, r) {
          var n, a, i;
          return module76.default.async(
            function (u) {
              for (;;)
                switch ((u.prev = u.next)) {
                  case 0:
                    n = this._buildArgs([e.toBase58()], r);
                    u.next = 3;
                    return module76.default.awrap(this._rpcRequest('getTokenSupply', n));

                  case 3:
                    if (((a = u.sent), !('error' in (i = require('./1006').create(a, rn(module1006)))))) {
                      u.next = 7;
                      break;
                    }

                    throw new Error('failed to get token supply: ' + i.error.message);

                  case 7:
                    return u.abrupt('return', i.result);

                  case 8:
                  case 'end':
                    return u.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getTokenAccountBalance',
        value: function (e, r) {
          var n, a, i;
          return module76.default.async(
            function (u) {
              for (;;)
                switch ((u.prev = u.next)) {
                  case 0:
                    n = this._buildArgs([e.toBase58()], r);
                    u.next = 3;
                    return module76.default.awrap(this._rpcRequest('getTokenAccountBalance', n));

                  case 3:
                    if (((a = u.sent), !('error' in (i = require('./1006').create(a, rn(module1006)))))) {
                      u.next = 7;
                      break;
                    }

                    throw new Error('failed to get token account balance: ' + i.error.message);

                  case 7:
                    return u.abrupt('return', i.result);

                  case 8:
                  case 'end':
                    return u.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getTokenAccountsByOwner',
        value: function (e, r, n) {
          var a, i, u, c;
          return module76.default.async(
            function (l) {
              for (;;)
                switch ((l.prev = l.next)) {
                  case 0:
                    a = [e.toBase58()];
                    if ('mint' in r)
                      a.push({
                        mint: r.mint.toBase58(),
                      });
                    else
                      a.push({
                        programId: r.programId.toBase58(),
                      });
                    i = this._buildArgs(a, n, 'base64');
                    l.next = 5;
                    return module76.default.awrap(this._rpcRequest('getTokenAccountsByOwner', i));

                  case 5:
                    if (((u = l.sent), !('error' in (c = require('./1006').create(u, module1006))))) {
                      l.next = 9;
                      break;
                    }

                    throw new Error('failed to get token accounts owned by account ' + e.toBase58() + ': ' + c.error.message);

                  case 9:
                    return l.abrupt('return', c.result);

                  case 10:
                  case 'end':
                    return l.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getParsedTokenAccountsByOwner',
        value: function (e, r, n) {
          var a, i, u, c;
          return module76.default.async(
            function (l) {
              for (;;)
                switch ((l.prev = l.next)) {
                  case 0:
                    a = [e.toBase58()];
                    if ('mint' in r)
                      a.push({
                        mint: r.mint.toBase58(),
                      });
                    else
                      a.push({
                        programId: r.programId.toBase58(),
                      });
                    i = this._buildArgs(a, n, 'jsonParsed');
                    l.next = 5;
                    return module76.default.awrap(this._rpcRequest('getTokenAccountsByOwner', i));

                  case 5:
                    if (((u = l.sent), !('error' in (c = require('./1006').create(u, module1006))))) {
                      l.next = 9;
                      break;
                    }

                    throw new Error('failed to get token accounts owned by account ' + e.toBase58() + ': ' + c.error.message);

                  case 9:
                    return l.abrupt('return', c.result);

                  case 10:
                  case 'end':
                    return l.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getLargestAccounts',
        value: function (e) {
          var r, n, a, i;
          return module76.default.async(
            function (u) {
              for (;;)
                switch ((u.prev = u.next)) {
                  case 0:
                    r = module29.default({}, e, {
                      commitment: (e && e.commitment) || this.commitment,
                    });
                    n = r.filter || r.commitment ? [r] : [];
                    u.next = 4;
                    return module76.default.awrap(this._rpcRequest('getLargestAccounts', n));

                  case 4:
                    if (((a = u.sent), !('error' in (i = require('./1006').create(a, module1006))))) {
                      u.next = 8;
                      break;
                    }

                    throw new Error('failed to get largest accounts: ' + i.error.message);

                  case 8:
                    return u.abrupt('return', i.result);

                  case 9:
                  case 'end':
                    return u.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getTokenLargestAccounts',
        value: function (e, r) {
          var n, a, i;
          return module76.default.async(
            function (u) {
              for (;;)
                switch ((u.prev = u.next)) {
                  case 0:
                    n = this._buildArgs([e.toBase58()], r);
                    u.next = 3;
                    return module76.default.awrap(this._rpcRequest('getTokenLargestAccounts', n));

                  case 3:
                    if (((a = u.sent), !('error' in (i = require('./1006').create(a, module1006))))) {
                      u.next = 7;
                      break;
                    }

                    throw new Error('failed to get token largest accounts: ' + i.error.message);

                  case 7:
                    return u.abrupt('return', i.result);

                  case 8:
                  case 'end':
                    return u.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getAccountInfoAndContext',
        value: function (e, r) {
          var n, a, i;
          return module76.default.async(
            function (u) {
              for (;;)
                switch ((u.prev = u.next)) {
                  case 0:
                    n = this._buildArgs([e.toBase58()], r, 'base64');
                    u.next = 3;
                    return module76.default.awrap(this._rpcRequest('getAccountInfo', n));

                  case 3:
                    if (((a = u.sent), !('error' in (i = require('./1006').create(a, rn(require('./1006').nullable(module1006))))))) {
                      u.next = 7;
                      break;
                    }

                    throw new Error('failed to get info about account ' + e.toBase58() + ': ' + i.error.message);

                  case 7:
                    return u.abrupt('return', i.result);

                  case 8:
                  case 'end':
                    return u.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getParsedAccountInfo',
        value: function (e, r) {
          var n, a, i;
          return module76.default.async(
            function (u) {
              for (;;)
                switch ((u.prev = u.next)) {
                  case 0:
                    n = this._buildArgs([e.toBase58()], r, 'jsonParsed');
                    u.next = 3;
                    return module76.default.awrap(this._rpcRequest('getAccountInfo', n));

                  case 3:
                    if (((a = u.sent), !('error' in (i = require('./1006').create(a, rn(require('./1006').nullable(module1006))))))) {
                      u.next = 7;
                      break;
                    }

                    throw new Error('failed to get info about account ' + e.toBase58() + ': ' + i.error.message);

                  case 7:
                    return u.abrupt('return', i.result);

                  case 8:
                  case 'end':
                    return u.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getAccountInfo',
        value: function (e, t) {
          var r;
          return module76.default.async(
            function (n) {
              for (;;)
                switch ((n.prev = n.next)) {
                  case 0:
                    n.prev = 0;
                    n.next = 3;
                    return module76.default.awrap(this.getAccountInfoAndContext(e, t));

                  case 3:
                    r = n.sent;
                    return n.abrupt('return', r.value);

                  case 7:
                    throw ((n.prev = 7), (n.t0 = n.catch(0)), new Error('failed to get info about account ' + e.toBase58() + ': ' + n.t0));

                  case 10:
                  case 'end':
                    return n.stop();
                }
            },
            null,
            this,
            [[0, 7]],
            Promise
          );
        },
      },
      {
        key: 'getMultipleAccountsInfo',
        value: function (e, r) {
          var n, a, i, u, c, l;
          return module76.default.async(
            function (h) {
              for (;;)
                switch ((h.prev = h.next)) {
                  case 0:
                    n = e.map(function (e) {
                      return e.toBase58();
                    });
                    i = 'base64';
                    if (r) 'string' == typeof r ? ((a = r), (i = 'base64')) : ((a = r.commitment), (i = r.encoding || 'base64'));
                    u = this._buildArgs([n], a, i);
                    h.next = 6;
                    return module76.default.awrap(this._rpcRequest('getMultipleAccounts', u));

                  case 6:
                    if (((c = h.sent), !('error' in (l = require('./1006').create(c, rn(require('./1006').array(require('./1006').nullable(module1006)))))))) {
                      h.next = 10;
                      break;
                    }

                    throw new Error('failed to get info for accounts ' + n + ': ' + l.error.message);

                  case 10:
                    return h.abrupt('return', l.result.value);

                  case 11:
                  case 'end':
                    return h.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getStakeActivation',
        value: function (e, r, n) {
          var a, i, u;
          return module76.default.async(
            function (c) {
              for (;;)
                switch ((c.prev = c.next)) {
                  case 0:
                    a = this._buildArgs(
                      [e.toBase58()],
                      r,
                      undefined,
                      undefined !== n
                        ? {
                            epoch: n,
                          }
                        : undefined
                    );
                    c.next = 3;
                    return module76.default.awrap(this._rpcRequest('getStakeActivation', a));

                  case 3:
                    if (((i = c.sent), !('error' in (u = require('./1006').create(i, tn(module1006)))))) {
                      c.next = 7;
                      break;
                    }

                    throw new Error('failed to get Stake Activation ' + e.toBase58() + ': ' + u.error.message);

                  case 7:
                    return c.abrupt('return', u.result);

                  case 8:
                  case 'end':
                    return c.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getProgramAccounts',
        value: function (e, r) {
          var n, a, i, u, c, l;
          return module76.default.async(
            function (h) {
              for (;;)
                switch ((h.prev = h.next)) {
                  case 0:
                    n = {};
                    if (r)
                      'string' == typeof r ? (a = r) : ((a = r.commitment), (i = r.encoding), r.dataSlice && (n.dataSlice = r.dataSlice), r.filters && (n.filters = r.filters));
                    u = this._buildArgs([e.toBase58()], a, i || 'base64', n);
                    h.next = 5;
                    return module76.default.awrap(this._rpcRequest('getProgramAccounts', u));

                  case 5:
                    if (((c = h.sent), !('error' in (l = require('./1006').create(c, tn(require('./1006').array(module1006))))))) {
                      h.next = 9;
                      break;
                    }

                    throw new Error('failed to get accounts owned by program ' + e.toBase58() + ': ' + l.error.message);

                  case 9:
                    return h.abrupt('return', l.result);

                  case 10:
                  case 'end':
                    return h.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getParsedProgramAccounts',
        value: function (e, r) {
          var n, a, i, u, c;
          return module76.default.async(
            function (l) {
              for (;;)
                switch ((l.prev = l.next)) {
                  case 0:
                    n = {};
                    if (r) 'string' == typeof r ? (a = r) : ((a = r.commitment), r.filters && (n.filters = r.filters));
                    i = this._buildArgs([e.toBase58()], a, 'jsonParsed', n);
                    l.next = 5;
                    return module76.default.awrap(this._rpcRequest('getProgramAccounts', i));

                  case 5:
                    if (((u = l.sent), !('error' in (c = require('./1006').create(u, tn(require('./1006').array(module1006))))))) {
                      l.next = 9;
                      break;
                    }

                    throw new Error('failed to get accounts owned by program ' + e.toBase58() + ': ' + c.error.message);

                  case 9:
                    return l.abrupt('return', c.result);

                  case 10:
                  case 'end':
                    return l.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'confirmTransaction',
        value: function (e, t) {
          var r,
            n,
            a,
            i,
            s,
            u,
            module23,
            l,
            h = this;
          return module76.default.async(
            function (f) {
              for (;;)
                switch ((f.prev = f.next)) {
                  case 0:
                    f.prev = 0;
                    r = module941.default.decode(e);
                    f.next = 7;
                    break;

                  case 4:
                    throw ((f.prev = 4), (f.t0 = f.catch(0)), new Error('signature must be base58 encoded: ' + e));

                  case 7:
                    pr(64 === r.length, 'signature has invalid length');
                    n = Date.now();
                    a = t || this.commitment;
                    s = null;
                    u = new Promise(function (t, r) {
                      try {
                        i = h.onSignature(
                          e,
                          function (e, r) {
                            i = undefined;
                            s = {
                              context: r,
                              value: e,
                            };
                            t(null);
                          },
                          a
                        );
                      } catch (e) {
                        r(e);
                      }
                    });
                    module23 = this._confirmTransactionInitialTimeout || 6e4;
                    f.t1 = a;
                    f.next = 'processed' === f.t1 ? 16 : 'recent' === f.t1 ? 16 : 'single' === f.t1 ? 16 : 'confirmed' === f.t1 ? 16 : 'singleGossip' === f.t1 ? 16 : 18;
                    break;

                  case 16:
                    module23 = this._confirmTransactionInitialTimeout || 3e4;
                    return f.abrupt('break', 18);

                  case 18:
                    f.prev = 18;
                    f.next = 21;
                    return module76.default.awrap(Gr(u, module23));

                  case 21:
                    f.prev = 21;
                    if (i) this.removeSignatureListener(i);
                    return f.finish(21);

                  case 24:
                    if (null !== s) {
                      f.next = 27;
                      break;
                    }

                    throw (
                      ((l = (Date.now() - n) / 1e3),
                      new Error(
                        'Transaction was not confirmed in ' +
                          l.toFixed(2) +
                          ' seconds. It is unknown if it succeeded or failed. Check signature ' +
                          e +
                          ' using the Solana Explorer or CLI tools.'
                      ))
                    );

                  case 27:
                    return f.abrupt('return', s);

                  case 28:
                  case 'end':
                    return f.stop();
                }
            },
            null,
            this,
            [
              [0, 4],
              [18, , 21, 24],
            ],
            Promise
          );
        },
      },
      {
        key: 'getClusterNodes',
        value: function () {
          var e, r;
          return module76.default.async(
            function (n) {
              for (;;)
                switch ((n.prev = n.next)) {
                  case 0:
                    n.next = 2;
                    return module76.default.awrap(this._rpcRequest('getClusterNodes', []));

                  case 2:
                    if (((e = n.sent), !('error' in (r = require('./1006').create(e, tn(require('./1006').array(module1006))))))) {
                      n.next = 6;
                      break;
                    }

                    throw new Error('failed to get cluster nodes: ' + r.error.message);

                  case 6:
                    return n.abrupt('return', r.result);

                  case 7:
                  case 'end':
                    return n.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getVoteAccounts',
        value: function (e) {
          var r, n, a;
          return module76.default.async(
            function (i) {
              for (;;)
                switch ((i.prev = i.next)) {
                  case 0:
                    r = this._buildArgs([], e);
                    i.next = 3;
                    return module76.default.awrap(this._rpcRequest('getVoteAccounts', r));

                  case 3:
                    if (((n = i.sent), !('error' in (a = require('./1006').create(n, module1006))))) {
                      i.next = 7;
                      break;
                    }

                    throw new Error('failed to get vote accounts: ' + a.error.message);

                  case 7:
                    return i.abrupt('return', a.result);

                  case 8:
                  case 'end':
                    return i.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getSlot',
        value: function (e) {
          var r, n, a;
          return module76.default.async(
            function (i) {
              for (;;)
                switch ((i.prev = i.next)) {
                  case 0:
                    r = this._buildArgs([], e);
                    i.next = 3;
                    return module76.default.awrap(this._rpcRequest('getSlot', r));

                  case 3:
                    if (((n = i.sent), !('error' in (a = require('./1006').create(n, tn(require('./1006').number())))))) {
                      i.next = 7;
                      break;
                    }

                    throw new Error('failed to get slot: ' + a.error.message);

                  case 7:
                    return i.abrupt('return', a.result);

                  case 8:
                  case 'end':
                    return i.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getSlotLeader',
        value: function (e) {
          var r, n, a;
          return module76.default.async(
            function (i) {
              for (;;)
                switch ((i.prev = i.next)) {
                  case 0:
                    r = this._buildArgs([], e);
                    i.next = 3;
                    return module76.default.awrap(this._rpcRequest('getSlotLeader', r));

                  case 3:
                    if (((n = i.sent), !('error' in (a = require('./1006').create(n, tn(require('./1006').string())))))) {
                      i.next = 7;
                      break;
                    }

                    throw new Error('failed to get slot leader: ' + a.error.message);

                  case 7:
                    return i.abrupt('return', a.result);

                  case 8:
                  case 'end':
                    return i.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getSlotLeaders',
        value: function (e, r) {
          var n, a, i;
          return module76.default.async(
            function (u) {
              for (;;)
                switch ((u.prev = u.next)) {
                  case 0:
                    n = [e, r];
                    u.next = 3;
                    return module76.default.awrap(this._rpcRequest('getSlotLeaders', n));

                  case 3:
                    if (((a = u.sent), !('error' in (i = require('./1006').create(a, tn(require('./1006').array(module1006))))))) {
                      u.next = 7;
                      break;
                    }

                    throw new Error('failed to get slot leaders: ' + i.error.message);

                  case 7:
                    return u.abrupt('return', i.result);

                  case 8:
                  case 'end':
                    return u.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getSignatureStatus',
        value: function (e, t) {
          var r, n, a, i;
          return module76.default.async(
            function (s) {
              for (;;)
                switch ((s.prev = s.next)) {
                  case 0:
                    s.next = 2;
                    return module76.default.awrap(this.getSignatureStatuses([e], t));

                  case 2:
                    r = s.sent;
                    n = r.context;
                    pr(1 === (a = r.value).length);
                    i = a[0];
                    return s.abrupt('return', {
                      context: n,
                      value: i,
                    });

                  case 8:
                  case 'end':
                    return s.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getSignatureStatuses',
        value: function (e, r) {
          var n, a, i;
          return module76.default.async(
            function (u) {
              for (;;)
                switch ((u.prev = u.next)) {
                  case 0:
                    n = [e];
                    if (r) n.push(r);
                    u.next = 4;
                    return module76.default.awrap(this._rpcRequest('getSignatureStatuses', n));

                  case 4:
                    if (((a = u.sent), !('error' in (i = require('./1006').create(a, module1006))))) {
                      u.next = 8;
                      break;
                    }

                    throw new Error('failed to get signature status: ' + i.error.message);

                  case 8:
                    return u.abrupt('return', i.result);

                  case 9:
                  case 'end':
                    return u.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getTransactionCount',
        value: function (e) {
          var r, n, a;
          return module76.default.async(
            function (i) {
              for (;;)
                switch ((i.prev = i.next)) {
                  case 0:
                    r = this._buildArgs([], e);
                    i.next = 3;
                    return module76.default.awrap(this._rpcRequest('getTransactionCount', r));

                  case 3:
                    if (((n = i.sent), !('error' in (a = require('./1006').create(n, tn(require('./1006').number())))))) {
                      i.next = 7;
                      break;
                    }

                    throw new Error('failed to get transaction count: ' + a.error.message);

                  case 7:
                    return i.abrupt('return', a.result);

                  case 8:
                  case 'end':
                    return i.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getTotalSupply',
        value: function (e) {
          var t;
          return module76.default.async(
            function (r) {
              for (;;)
                switch ((r.prev = r.next)) {
                  case 0:
                    r.next = 2;
                    return module76.default.awrap(
                      this.getSupply({
                        commitment: e,
                        excludeNonCirculatingAccountsList: true,
                      })
                    );

                  case 2:
                    t = r.sent;
                    return r.abrupt('return', t.value.total);

                  case 4:
                  case 'end':
                    return r.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getInflationGovernor',
        value: function (e) {
          var r, n, a;
          return module76.default.async(
            function (i) {
              for (;;)
                switch ((i.prev = i.next)) {
                  case 0:
                    r = this._buildArgs([], e);
                    i.next = 3;
                    return module76.default.awrap(this._rpcRequest('getInflationGovernor', r));

                  case 3:
                    if (((n = i.sent), !('error' in (a = require('./1006').create(n, yn))))) {
                      i.next = 7;
                      break;
                    }

                    throw new Error('failed to get inflation: ' + a.error.message);

                  case 7:
                    return i.abrupt('return', a.result);

                  case 8:
                  case 'end':
                    return i.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getInflationReward',
        value: function (e, r, n) {
          var a, i, u;
          return module76.default.async(
            function (c) {
              for (;;)
                switch ((c.prev = c.next)) {
                  case 0:
                    a = this._buildArgs(
                      [
                        e.map(function (e) {
                          return e.toBase58();
                        }),
                      ],
                      n,
                      undefined,
                      {
                        epoch: r,
                      }
                    );
                    c.next = 3;
                    return module76.default.awrap(this._rpcRequest('getInflationReward', a));

                  case 3:
                    if (((i = c.sent), !('error' in (u = require('./1006').create(i, module1006))))) {
                      c.next = 7;
                      break;
                    }

                    throw new Error('failed to get inflation reward: ' + u.error.message);

                  case 7:
                    return c.abrupt('return', u.result);

                  case 8:
                  case 'end':
                    return c.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getEpochInfo',
        value: function (e) {
          var r, n, a;
          return module76.default.async(
            function (i) {
              for (;;)
                switch ((i.prev = i.next)) {
                  case 0:
                    r = this._buildArgs([], e);
                    i.next = 3;
                    return module76.default.awrap(this._rpcRequest('getEpochInfo', r));

                  case 3:
                    if (((n = i.sent), !('error' in (a = require('./1006').create(n, mn))))) {
                      i.next = 7;
                      break;
                    }

                    throw new Error('failed to get epoch info: ' + a.error.message);

                  case 7:
                    return i.abrupt('return', a.result);

                  case 8:
                  case 'end':
                    return i.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getEpochSchedule',
        value: function () {
          var e, r, n;
          return module76.default.async(
            function (a) {
              for (;;)
                switch ((a.prev = a.next)) {
                  case 0:
                    a.next = 2;
                    return module76.default.awrap(this._rpcRequest('getEpochSchedule', []));

                  case 2:
                    if (((e = a.sent), !('error' in (r = require('./1006').create(e, kn))))) {
                      a.next = 6;
                      break;
                    }

                    throw new Error('failed to get epoch schedule: ' + r.error.message);

                  case 6:
                    n = r.result;
                    return a.abrupt('return', new Vr(n.slotsPerEpoch, n.leaderScheduleSlotOffset, n.warmup, n.firstNormalEpoch, n.firstNormalSlot));

                  case 8:
                  case 'end':
                    return a.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getLeaderSchedule',
        value: function () {
          var e, r;
          return module76.default.async(
            function (n) {
              for (;;)
                switch ((n.prev = n.next)) {
                  case 0:
                    n.next = 2;
                    return module76.default.awrap(this._rpcRequest('getLeaderSchedule', []));

                  case 2:
                    if (((e = n.sent), !('error' in (r = require('./1006').create(e, vn))))) {
                      n.next = 6;
                      break;
                    }

                    throw new Error('failed to get leader schedule: ' + r.error.message);

                  case 6:
                    return n.abrupt('return', r.result);

                  case 7:
                  case 'end':
                    return n.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getMinimumBalanceForRentExemption',
        value: function (e, r) {
          var n, a, i;
          return module76.default.async(
            function (u) {
              for (;;)
                switch ((u.prev = u.next)) {
                  case 0:
                    n = this._buildArgs([e], r);
                    u.next = 3;
                    return module76.default.awrap(this._rpcRequest('getMinimumBalanceForRentExemption', n));

                  case 3:
                    if (((a = u.sent), !('error' in (i = require('./1006').create(a, module1006))))) {
                      u.next = 8;
                      break;
                    }

                    console.warn('Unable to fetch minimum balance for rent exemption');
                    return u.abrupt('return', 0);

                  case 8:
                    return u.abrupt('return', i.result);

                  case 9:
                  case 'end':
                    return u.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getRecentBlockhashAndContext',
        value: function (e) {
          var r, n, a;
          return module76.default.async(
            function (i) {
              for (;;)
                switch ((i.prev = i.next)) {
                  case 0:
                    r = this._buildArgs([], e);
                    i.next = 3;
                    return module76.default.awrap(this._rpcRequest('getRecentBlockhash', r));

                  case 3:
                    if (((n = i.sent), !('error' in (a = require('./1006').create(n, module1006))))) {
                      i.next = 7;
                      break;
                    }

                    throw new Error('failed to get recent blockhash: ' + a.error.message);

                  case 7:
                    return i.abrupt('return', a.result);

                  case 8:
                  case 'end':
                    return i.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getRecentPerformanceSamples',
        value: function (e) {
          var r, n, a;
          return module76.default.async(
            function (i) {
              for (;;)
                switch ((i.prev = i.next)) {
                  case 0:
                    r = this._buildArgs(e ? [e] : []);
                    i.next = 3;
                    return module76.default.awrap(this._rpcRequest('getRecentPerformanceSamples', r));

                  case 3:
                    if (((n = i.sent), !('error' in (a = require('./1006').create(n, module1006))))) {
                      i.next = 7;
                      break;
                    }

                    throw new Error('failed to get recent performance samples: ' + a.error.message);

                  case 7:
                    return i.abrupt('return', a.result);

                  case 8:
                  case 'end':
                    return i.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getFeeCalculatorForBlockhash',
        value: function (e, r) {
          var n, a, i, u, module23, l;
          return module76.default.async(
            function (h) {
              for (;;)
                switch ((h.prev = h.next)) {
                  case 0:
                    n = this._buildArgs([e], r);
                    h.next = 3;
                    return module76.default.awrap(this._rpcRequest('getFeeCalculatorForBlockhash', n));

                  case 3:
                    if (((a = h.sent), !('error' in (i = require('./1006').create(a, module1006))))) {
                      h.next = 7;
                      break;
                    }

                    throw new Error('failed to get fee calculator: ' + i.error.message);

                  case 7:
                    u = i.result;
                    module23 = u.context;
                    l = u.value;
                    return h.abrupt('return', {
                      context: module23,
                      value: null !== l ? l.feeCalculator : null,
                    });

                  case 9:
                  case 'end':
                    return h.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getFeeForMessage',
        value: function (e, r) {
          var n, a, i, u;
          return module76.default.async(
            function (c) {
              for (;;)
                switch ((c.prev = c.next)) {
                  case 0:
                    n = e.serialize().toString('base64');
                    a = this._buildArgs([n], r);
                    c.next = 4;
                    return module76.default.awrap(this._rpcRequest('getFeeForMessage', a));

                  case 4:
                    if (((i = c.sent), !('error' in (u = require('./1006').create(i, rn(require('./1006').nullable(require('./1006').number()))))))) {
                      c.next = 8;
                      break;
                    }

                    throw new Error('failed to get slot: ' + u.error.message);

                  case 8:
                    if (null !== u.result) {
                      c.next = 10;
                      break;
                    }

                    throw new Error('invalid blockhash');

                  case 10:
                    return c.abrupt('return', u.result);

                  case 11:
                  case 'end':
                    return c.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getRecentBlockhash',
        value: function (e) {
          var t;
          return module76.default.async(
            function (r) {
              for (;;)
                switch ((r.prev = r.next)) {
                  case 0:
                    r.prev = 0;
                    r.next = 3;
                    return module76.default.awrap(this.getRecentBlockhashAndContext(e));

                  case 3:
                    t = r.sent;
                    return r.abrupt('return', t.value);

                  case 7:
                    throw ((r.prev = 7), (r.t0 = r.catch(0)), new Error('failed to get recent blockhash: ' + r.t0));

                  case 10:
                  case 'end':
                    return r.stop();
                }
            },
            null,
            this,
            [[0, 7]],
            Promise
          );
        },
      },
      {
        key: 'getVersion',
        value: function () {
          var e, r;
          return module76.default.async(
            function (n) {
              for (;;)
                switch ((n.prev = n.next)) {
                  case 0:
                    n.next = 2;
                    return module76.default.awrap(this._rpcRequest('getVersion', []));

                  case 2:
                    if (((e = n.sent), !('error' in (r = require('./1006').create(e, tn(module1006)))))) {
                      n.next = 6;
                      break;
                    }

                    throw new Error('failed to get version: ' + r.error.message);

                  case 6:
                    return n.abrupt('return', r.result);

                  case 7:
                  case 'end':
                    return n.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getGenesisHash',
        value: function () {
          var e, r;
          return module76.default.async(
            function (n) {
              for (;;)
                switch ((n.prev = n.next)) {
                  case 0:
                    n.next = 2;
                    return module76.default.awrap(this._rpcRequest('getGenesisHash', []));

                  case 2:
                    if (((e = n.sent), !('error' in (r = require('./1006').create(e, tn(require('./1006').string())))))) {
                      n.next = 6;
                      break;
                    }

                    throw new Error('failed to get genesis hash: ' + r.error.message);

                  case 6:
                    return n.abrupt('return', r.result);

                  case 7:
                  case 'end':
                    return n.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getBlock',
        value: function (e, r) {
          var n, a, i, u;
          return module76.default.async(
            function (c) {
              for (;;)
                switch ((c.prev = c.next)) {
                  case 0:
                    n = this._buildArgsAtLeastConfirmed([e], r && r.commitment);
                    c.next = 3;
                    return module76.default.awrap(this._rpcRequest('getConfirmedBlock', n));

                  case 3:
                    if (((a = c.sent), !('error' in (i = require('./1006').create(a, module1006))))) {
                      c.next = 7;
                      break;
                    }

                    throw new Error('failed to get confirmed block: ' + i.error.message);

                  case 7:
                    if ((u = i.result)) {
                      c.next = 10;
                      break;
                    }

                    return c.abrupt('return', u);

                  case 10:
                    return c.abrupt(
                      'return',
                      module29.default({}, u, {
                        transactions: u.transactions.map(function (e) {
                          var t = e.transaction,
                            r = e.meta,
                            n = new module1006(t.message);
                          return {
                            meta: r,
                            transaction: module29.default({}, t, {
                              message: n,
                            }),
                          };
                        }),
                      })
                    );

                  case 11:
                  case 'end':
                    return c.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getTransaction',
        value: function (e, r) {
          var n, a, i, u;
          return module76.default.async(
            function (c) {
              for (;;)
                switch ((c.prev = c.next)) {
                  case 0:
                    n = this._buildArgsAtLeastConfirmed([e], r && r.commitment);
                    c.next = 3;
                    return module76.default.awrap(this._rpcRequest('getConfirmedTransaction', n));

                  case 3:
                    if (((a = c.sent), !('error' in (i = require('./1006').create(a, module1006))))) {
                      c.next = 7;
                      break;
                    }

                    throw new Error('failed to get confirmed transaction: ' + i.error.message);

                  case 7:
                    if ((u = i.result)) {
                      c.next = 10;
                      break;
                    }

                    return c.abrupt('return', u);

                  case 10:
                    return c.abrupt(
                      'return',
                      module29.default({}, u, {
                        transaction: module29.default({}, u.transaction, {
                          message: new module1006(u.transaction.message),
                        }),
                      })
                    );

                  case 11:
                  case 'end':
                    return c.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getConfirmedBlock',
        value: function (e, t) {
          var r;
          return module76.default.async(
            function (n) {
              for (;;)
                switch ((n.prev = n.next)) {
                  case 0:
                    n.next = 2;
                    return module76.default.awrap(
                      this.getBlock(e, {
                        commitment: t,
                      })
                    );

                  case 2:
                    if ((r = n.sent)) {
                      n.next = 5;
                      break;
                    }

                    throw new Error('Confirmed block ' + e + ' not found');

                  case 5:
                    return n.abrupt(
                      'return',
                      module29.default({}, r, {
                        transactions: r.transactions.map(function (e) {
                          var t = e.transaction;
                          return {
                            meta: e.meta,
                            transaction: module1006.populate(t.message, t.signatures),
                          };
                        }),
                      })
                    );

                  case 6:
                  case 'end':
                    return n.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getBlocks',
        value: function (e, r, n) {
          var a, i, u;
          return module76.default.async(
            function (c) {
              for (;;)
                switch ((c.prev = c.next)) {
                  case 0:
                    a = this._buildArgsAtLeastConfirmed(undefined !== r ? [e, r] : [e], n);
                    c.next = 3;
                    return module76.default.awrap(this._rpcRequest('getConfirmedBlocks', a));

                  case 3:
                    if (((i = c.sent), !('error' in (u = require('./1006').create(i, tn(require('./1006').array(require('./1006').number()))))))) {
                      c.next = 7;
                      break;
                    }

                    throw new Error('failed to get blocks: ' + u.error.message);

                  case 7:
                    return c.abrupt('return', u.result);

                  case 8:
                  case 'end':
                    return c.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getConfirmedBlockSignatures',
        value: function (e, r) {
          var n, a, i, u;
          return module76.default.async(
            function (c) {
              for (;;)
                switch ((c.prev = c.next)) {
                  case 0:
                    n = this._buildArgsAtLeastConfirmed([e], r, undefined, {
                      transactionDetails: 'signatures',
                      rewards: false,
                    });
                    c.next = 3;
                    return module76.default.awrap(this._rpcRequest('getConfirmedBlock', n));

                  case 3:
                    if (((a = c.sent), !('error' in (i = require('./1006').create(a, module1006))))) {
                      c.next = 7;
                      break;
                    }

                    throw new Error('failed to get confirmed block: ' + i.error.message);

                  case 7:
                    if ((u = i.result)) {
                      c.next = 10;
                      break;
                    }

                    throw new Error('Confirmed block ' + e + ' not found');

                  case 10:
                    return c.abrupt('return', u);

                  case 11:
                  case 'end':
                    return c.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getConfirmedTransaction',
        value: function (e, t) {
          var r, n, a, i;
          return module76.default.async(
            function (s) {
              for (;;)
                switch ((s.prev = s.next)) {
                  case 0:
                    s.next = 2;
                    return module76.default.awrap(
                      this.getTransaction(e, {
                        commitment: t,
                      })
                    );

                  case 2:
                    if ((r = s.sent)) {
                      s.next = 5;
                      break;
                    }

                    return s.abrupt('return', r);

                  case 5:
                    n = r.transaction;
                    a = n.message;
                    i = n.signatures;
                    return s.abrupt(
                      'return',
                      module29.default({}, r, {
                        transaction: module1006.populate(a, i),
                      })
                    );

                  case 7:
                  case 'end':
                    return s.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getParsedConfirmedTransaction',
        value: function (e, r) {
          var n, a, i;
          return module76.default.async(
            function (u) {
              for (;;)
                switch ((u.prev = u.next)) {
                  case 0:
                    n = this._buildArgsAtLeastConfirmed([e], r, 'jsonParsed');
                    u.next = 3;
                    return module76.default.awrap(this._rpcRequest('getConfirmedTransaction', n));

                  case 3:
                    if (((a = u.sent), !('error' in (i = require('./1006').create(a, module1006))))) {
                      u.next = 7;
                      break;
                    }

                    throw new Error('failed to get confirmed transaction: ' + i.error.message);

                  case 7:
                    return u.abrupt('return', i.result);

                  case 8:
                  case 'end':
                    return u.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getParsedConfirmedTransactions',
        value: function (e, r) {
          var n,
            a,
            i,
            u = this;
          return module76.default.async(
            function (c) {
              for (;;)
                switch ((c.prev = c.next)) {
                  case 0:
                    n = e.map(function (e) {
                      return {
                        methodName: 'getConfirmedTransaction',
                        args: u._buildArgsAtLeastConfirmed([e], r, 'jsonParsed'),
                      };
                    });
                    c.next = 3;
                    return module76.default.awrap(this._rpcBatchRequest(n));

                  case 3:
                    a = c.sent;
                    i = a.map(function (e) {
                      var module1006 = require('./1006').create(e, module1006);

                      if ('error' in module1006) throw new Error('failed to get confirmed transactions: ' + module1006.error.message);
                      return module1006.result;
                    });
                    return c.abrupt('return', i);

                  case 6:
                  case 'end':
                    return c.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getConfirmedSignaturesForAddress',
        value: function (e, t, r) {
          var n, a, i, s, u, module23;
          return module76.default.async(
            function (l) {
              for (;;)
                switch ((l.prev = l.next)) {
                  case 0:
                    n = {};
                    l.next = 3;
                    return module76.default.awrap(this.getFirstAvailableBlock());

                  case 3:
                    a = l.sent;

                  case 4:
                    if ('until' in n) {
                      l.next = 24;
                      break;
                    }

                    if (!(--t <= 0 || t < a)) {
                      l.next = 8;
                      break;
                    }

                    return l.abrupt('break', 24);

                  case 8:
                    l.prev = 8;
                    l.next = 11;
                    return module76.default.awrap(this.getConfirmedBlockSignatures(t, 'finalized'));

                  case 11:
                    if ((i = l.sent).signatures.length > 0) n.until = i.signatures[i.signatures.length - 1].toString();
                    l.next = 22;
                    break;

                  case 15:
                    if (((l.prev = 15), (l.t0 = l.catch(8)), !(l.t0 instanceof Error && l.t0.message.includes('skipped')))) {
                      l.next = 21;
                      break;
                    }

                    return l.abrupt('continue', 4);

                  case 21:
                    throw l.t0;

                  case 22:
                    l.next = 4;
                    break;

                  case 24:
                    l.next = 26;
                    return module76.default.awrap(this.getSlot('finalized'));

                  case 26:
                    s = l.sent;

                  case 27:
                    if ('before' in n) {
                      l.next = 47;
                      break;
                    }

                    if (!(++r > s)) {
                      l.next = 31;
                      break;
                    }

                    return l.abrupt('break', 47);

                  case 31:
                    l.prev = 31;
                    l.next = 34;
                    return module76.default.awrap(this.getConfirmedBlockSignatures(r));

                  case 34:
                    if ((u = l.sent).signatures.length > 0) n.before = u.signatures[u.signatures.length - 1].toString();
                    l.next = 45;
                    break;

                  case 38:
                    if (((l.prev = 38), (l.t1 = l.catch(31)), !(l.t1 instanceof Error && l.t1.message.includes('skipped')))) {
                      l.next = 44;
                      break;
                    }

                    return l.abrupt('continue', 27);

                  case 44:
                    throw l.t1;

                  case 45:
                    l.next = 27;
                    break;

                  case 47:
                    l.next = 49;
                    return module76.default.awrap(this.getConfirmedSignaturesForAddress2(e, n));

                  case 49:
                    module23 = l.sent;
                    return l.abrupt(
                      'return',
                      module23.map(function (e) {
                        return e.signature;
                      })
                    );

                  case 51:
                  case 'end':
                    return l.stop();
                }
            },
            null,
            this,
            [
              [8, 15],
              [31, 38],
            ],
            Promise
          );
        },
      },
      {
        key: 'getConfirmedSignaturesForAddress2',
        value: function (e, r, n) {
          var a, i, u;
          return module76.default.async(
            function (c) {
              for (;;)
                switch ((c.prev = c.next)) {
                  case 0:
                    a = this._buildArgsAtLeastConfirmed([e.toBase58()], n, undefined, r);
                    c.next = 3;
                    return module76.default.awrap(this._rpcRequest('getConfirmedSignaturesForAddress2', a));

                  case 3:
                    if (((i = c.sent), !('error' in (u = require('./1006').create(i, module1006))))) {
                      c.next = 7;
                      break;
                    }

                    throw new Error('failed to get confirmed signatures for address: ' + u.error.message);

                  case 7:
                    return c.abrupt('return', u.result);

                  case 8:
                  case 'end':
                    return c.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getSignaturesForAddress',
        value: function (e, r, n) {
          var a, i, u;
          return module76.default.async(
            function (c) {
              for (;;)
                switch ((c.prev = c.next)) {
                  case 0:
                    a = this._buildArgsAtLeastConfirmed([e.toBase58()], n, undefined, r);
                    c.next = 3;
                    return module76.default.awrap(this._rpcRequest('getSignaturesForAddress', a));

                  case 3:
                    if (((i = c.sent), !('error' in (u = require('./1006').create(i, module1006))))) {
                      c.next = 7;
                      break;
                    }

                    throw new Error('failed to get signatures for address: ' + u.error.message);

                  case 7:
                    return c.abrupt('return', u.result);

                  case 8:
                  case 'end':
                    return c.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getNonceAndContext',
        value: function (e, t) {
          var r, n, a, i;
          return module76.default.async(
            function (s) {
              for (;;)
                switch ((s.prev = s.next)) {
                  case 0:
                    s.next = 2;
                    return module76.default.awrap(this.getAccountInfoAndContext(e, t));

                  case 2:
                    r = s.sent;
                    n = r.context;
                    a = r.value;
                    i = null;
                    if (null !== a) i = Wr.fromAccountData(a.data);
                    return s.abrupt('return', {
                      context: n,
                      value: i,
                    });

                  case 8:
                  case 'end':
                    return s.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'getNonce',
        value: function (e, t) {
          return module76.default.async(
            function (r) {
              for (;;)
                switch ((r.prev = r.next)) {
                  case 0:
                    r.next = 2;
                    return module76.default.awrap(
                      this.getNonceAndContext(e, t)
                        .then(function (e) {
                          return e.value;
                        })
                        .catch(function (t) {
                          throw new Error('failed to get nonce for account ' + e.toBase58() + ': ' + t);
                        })
                    );

                  case 2:
                    return r.abrupt('return', r.sent);

                  case 3:
                  case 'end':
                    return r.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'requestAirdrop',
        value: function (e, r) {
          var n, a;
          return module76.default.async(
            function (i) {
              for (;;)
                switch ((i.prev = i.next)) {
                  case 0:
                    i.next = 2;
                    return module76.default.awrap(this._rpcRequest('requestAirdrop', [e.toBase58(), r]));

                  case 2:
                    if (((n = i.sent), !('error' in (a = require('./1006').create(n, module1006))))) {
                      i.next = 6;
                      break;
                    }

                    throw new Error('airdrop to ' + e.toBase58() + ' failed: ' + a.error.message);

                  case 6:
                    return i.abrupt('return', a.result);

                  case 7:
                  case 'end':
                    return i.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: '_recentBlockhash',
        value: function (e) {
          var t, r;
          return module76.default.async(
            function (n) {
              for (;;)
                switch ((n.prev = n.next)) {
                  case 0:
                    if (e) {
                      n.next = 10;
                      break;
                    }

                  case 1:
                    if (!this._pollingBlockhash) {
                      n.next = 6;
                      break;
                    }

                    n.next = 4;
                    return module76.default.awrap(Br(100));

                  case 4:
                    n.next = 1;
                    break;

                  case 6:
                    if (((t = Date.now() - this._blockhashInfo.lastFetch), (r = t >= 3e4), null === this._blockhashInfo.recentBlockhash || r)) {
                      n.next = 10;
                      break;
                    }

                    return n.abrupt('return', this._blockhashInfo.recentBlockhash);

                  case 10:
                    n.next = 12;
                    return module76.default.awrap(this._pollNewBlockhash());

                  case 12:
                    return n.abrupt('return', n.sent);

                  case 13:
                  case 'end':
                    return n.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: '_pollNewBlockhash',
        value: function () {
          var e, t, r, n;
          return module76.default.async(
            function (a) {
              for (;;)
                switch ((a.prev = a.next)) {
                  case 0:
                    this._pollingBlockhash = true;
                    a.prev = 1;
                    e = Date.now();
                    t = 0;

                  case 4:
                    if (!(t < 50)) {
                      a.next = 17;
                      break;
                    }

                    a.next = 7;
                    return module76.default.awrap(this.getRecentBlockhash('finalized'));

                  case 7:
                    if (((r = a.sent), (n = r.blockhash), this._blockhashInfo.recentBlockhash == n)) {
                      a.next = 12;
                      break;
                    }

                    this._blockhashInfo = {
                      recentBlockhash: n,
                      lastFetch: Date.now(),
                      transactionSignatures: [],
                      simulatedSignatures: [],
                    };
                    return a.abrupt('return', n);

                  case 12:
                    a.next = 14;
                    return module76.default.awrap(Br(200));

                  case 14:
                    t++;
                    a.next = 4;
                    break;

                  case 17:
                    throw new Error('Unable to obtain a new blockhash after ' + (Date.now() - e) + 'ms');

                  case 18:
                    a.prev = 18;
                    this._pollingBlockhash = false;
                    return a.finish(18);

                  case 21:
                  case 'end':
                    return a.stop();
                }
            },
            null,
            this,
            [[1, , 18, 21]],
            Promise
          );
        },
      },
      {
        key: 'simulateTransaction',
        value: function (e, r, n) {
          var a, i, u, c, h, module12, module15, module29, module7, module8, y, module940, k, v, w, S, _;

          return module76.default.async(
            function (x) {
              for (;;)
                switch ((x.prev = x.next)) {
                  case 0:
                    if (!(a = e instanceof module1006 ? e : module1006.populate(e)).nonceInfo || !r) {
                      x.next = 5;
                      break;
                    }

                    (i = a).sign.apply(i, l.default(r));
                    x.next = 23;
                    break;

                  case 5:
                    u = this._disableBlockhashCaching;

                  case 6:
                    x.next = 8;
                    return module76.default.awrap(this._recentBlockhash(u));

                  case 8:
                    if (((a.recentBlockhash = x.sent), r)) {
                      x.next = 11;
                      break;
                    }

                    return x.abrupt('break', 23);

                  case 11:
                    if (((c = a).sign.apply(c, l.default(r)), a.signature)) {
                      x.next = 14;
                      break;
                    }

                    throw new Error('!signature');

                  case 14:
                    if (((h = a.signature.toString('base64')), this._blockhashInfo.simulatedSignatures.includes(h) || this._blockhashInfo.transactionSignatures.includes(h))) {
                      x.next = 20;
                      break;
                    }

                    this._blockhashInfo.simulatedSignatures.push(h);

                    return x.abrupt('break', 23);

                  case 20:
                    u = true;

                  case 21:
                    x.next = 6;
                    break;

                  case 23:
                    module12 = a._compile();
                    module15 = module12.serialize();
                    module29 = a._serialize(module15);
                    module7 = module29.toString('base64');
                    module8 = {
                      encoding: 'base64',
                      commitment: this.commitment,
                    };

                    if (n) {
                      y = (Array.isArray(n) ? n : module12.nonProgramIds()).map(function (e) {
                        return e.toBase58();
                      });
                      module8.accounts = {
                        encoding: 'base64',
                        addresses: y,
                      };
                    }

                    if (r) module8.sigVerify = true;
                    module940 = [module7, module8];
                    x.next = 33;
                    return module76.default.awrap(this._rpcRequest('simulateTransaction', module940));

                  case 33:
                    if (((k = x.sent), !('error' in (v = require('./1006').create(k, module1006))))) {
                      x.next = 38;
                      break;
                    }

                    throw (
                      ('data' in v.error && (w = v.error.data.logs) && Array.isArray(w) && ((_ = (S = '\n    ') + w.join(S)), console.error(v.error.message, _)),
                      new Yr('failed to simulate transaction: ' + v.error.message, w))
                    );

                  case 38:
                    return x.abrupt('return', v.result);

                  case 39:
                  case 'end':
                    return x.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'sendTransaction',
        value: function (e, t, r) {
          var n, a, i;
          return module76.default.async(
            function (s) {
              for (;;)
                switch ((s.prev = s.next)) {
                  case 0:
                    if (!e.nonceInfo) {
                      s.next = 4;
                      break;
                    }

                    e.sign.apply(e, l.default(t));
                    s.next = 20;
                    break;

                  case 4:
                    n = this._disableBlockhashCaching;

                  case 5:
                    s.next = 7;
                    return module76.default.awrap(this._recentBlockhash(n));

                  case 7:
                    if (((e.recentBlockhash = s.sent), e.sign.apply(e, l.default(t)), e.signature)) {
                      s.next = 11;
                      break;
                    }

                    throw new Error('!signature');

                  case 11:
                    if (((a = e.signature.toString('base64')), this._blockhashInfo.transactionSignatures.includes(a))) {
                      s.next = 17;
                      break;
                    }

                    this._blockhashInfo.transactionSignatures.push(a);

                    return s.abrupt('break', 20);

                  case 17:
                    n = true;

                  case 18:
                    s.next = 5;
                    break;

                  case 20:
                    i = e.serialize();
                    s.next = 23;
                    return module76.default.awrap(this.sendRawTransaction(i, r));

                  case 23:
                    return s.abrupt('return', s.sent);

                  case 24:
                  case 'end':
                    return s.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'sendRawTransaction',
        value: function (e, t) {
          var r, n;
          return module76.default.async(
            function (a) {
              for (;;)
                switch ((a.prev = a.next)) {
                  case 0:
                    r = module1004(e).toString('base64');
                    a.next = 3;
                    return module76.default.awrap(this.sendEncodedTransaction(r, t));

                  case 3:
                    n = a.sent;
                    return a.abrupt('return', n);

                  case 5:
                  case 'end':
                    return a.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'sendEncodedTransaction',
        value: function (e, r) {
          var n, a, i, u, c, l, h, f, d;
          return module76.default.async(
            function (p) {
              for (;;)
                switch ((p.prev = p.next)) {
                  case 0:
                    n = {
                      encoding: 'base64',
                    };
                    a = r && r.skipPreflight;
                    i = (r && r.preflightCommitment) || this.commitment;
                    if (a) n.skipPreflight = a;
                    if (i) n.preflightCommitment = i;
                    u = [e, n];
                    p.next = 8;
                    return module76.default.awrap(this._rpcRequest('sendTransaction', u));

                  case 8:
                    if (((c = p.sent), !('error' in (l = require('./1006').create(c, module1006))))) {
                      p.next = 13;
                      break;
                    }

                    throw (
                      ('data' in l.error && (h = l.error.data.logs) && Array.isArray(h) && ((d = (f = '\n    ') + h.join(f)), console.error(l.error.message, d)),
                      new Yr('failed to send transaction: ' + l.error.message, h))
                    );

                  case 13:
                    return p.abrupt('return', l.result);

                  case 14:
                  case 'end':
                    return p.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: '_wsOnOpen',
        value: function () {
          var e = this;
          this._rpcWebSocketConnected = true;
          this._rpcWebSocketHeartbeat = setInterval(function () {
            e._rpcWebSocket.notify('ping').catch(function () {});
          }, 5e3);

          this._updateSubscriptions();
        },
      },
      {
        key: '_wsOnError',
        value: function (e) {
          console.error('ws error:', e.message);
        },
      },
      {
        key: '_wsOnClose',
        value: function (e) {
          if (this._rpcWebSocketHeartbeat) {
            clearInterval(this._rpcWebSocketHeartbeat);
            this._rpcWebSocketHeartbeat = null;
          }

          if (1e3 !== e) this._resetSubscriptions();
          else this._updateSubscriptions();
        },
      },
      {
        key: '_subscribe',
        value: function (e, t, r) {
          var n;
          return module76.default.async(
            function (a) {
              for (;;)
                switch ((a.prev = a.next)) {
                  case 0:
                    if (null != e.subscriptionId) {
                      a.next = 13;
                      break;
                    }

                    e.subscriptionId = 'subscribing';
                    a.prev = 2;
                    a.next = 5;
                    return module76.default.awrap(this._rpcWebSocket.call(t, r));

                  case 5:
                    if ('number' == typeof (n = a.sent) && 'subscribing' === e.subscriptionId) e.subscriptionId = n;
                    a.next = 13;
                    break;

                  case 9:
                    a.prev = 9;
                    a.t0 = a.catch(2);
                    if ('subscribing' === e.subscriptionId) e.subscriptionId = null;
                    if (a.t0 instanceof Error) console.error(t + ' error for argument', r, a.t0.message);

                  case 13:
                  case 'end':
                    return a.stop();
                }
            },
            null,
            this,
            [[2, 9]],
            Promise
          );
        },
      },
      {
        key: '_unsubscribe',
        value: function (e, t) {
          var r, n;
          return module76.default.async(
            function (a) {
              for (;;)
                switch ((a.prev = a.next)) {
                  case 0:
                    if (null == (r = e.subscriptionId) || 'string' == typeof r) {
                      a.next = 11;
                      break;
                    }

                    n = r;
                    a.prev = 3;
                    a.next = 6;
                    return module76.default.awrap(this._rpcWebSocket.call(t, [n]));

                  case 6:
                    a.next = 11;
                    break;

                  case 8:
                    a.prev = 8;
                    a.t0 = a.catch(3);
                    if (a.t0 instanceof Error) console.error(t + ' error:', a.t0.message);

                  case 11:
                  case 'end':
                    return a.stop();
                }
            },
            null,
            this,
            [[3, 8]],
            Promise
          );
        },
      },
      {
        key: '_resetSubscriptions',
        value: function () {
          Object.values(this._accountChangeSubscriptions).forEach(function (e) {
            return (e.subscriptionId = null);
          });
          Object.values(this._programAccountChangeSubscriptions).forEach(function (e) {
            return (e.subscriptionId = null);
          });
          Object.values(this._rootSubscriptions).forEach(function (e) {
            return (e.subscriptionId = null);
          });
          Object.values(this._signatureSubscriptions).forEach(function (e) {
            return (e.subscriptionId = null);
          });
          Object.values(this._slotSubscriptions).forEach(function (e) {
            return (e.subscriptionId = null);
          });
          Object.values(this._slotUpdateSubscriptions).forEach(function (e) {
            return (e.subscriptionId = null);
          });
        },
      },
      {
        key: '_updateSubscriptions',
        value: function () {
          var e = this,
            t = Object.keys(this._accountChangeSubscriptions).map(Number),
            r = Object.keys(this._programAccountChangeSubscriptions).map(Number),
            n = Object.keys(this._slotSubscriptions).map(Number),
            a = Object.keys(this._slotUpdateSubscriptions).map(Number),
            i = Object.keys(this._signatureSubscriptions).map(Number),
            s = Object.keys(this._rootSubscriptions).map(Number),
            o = Object.keys(this._logsSubscriptions).map(Number);
          if (0 !== t.length || 0 !== r.length || 0 !== n.length || 0 !== a.length || 0 !== i.length || 0 !== s.length || 0 !== o.length) {
            if (
              (null !== this._rpcWebSocketIdleTimeout &&
                (clearTimeout(this._rpcWebSocketIdleTimeout), (this._rpcWebSocketIdleTimeout = null), (this._rpcWebSocketConnected = true)),
              this._rpcWebSocketConnected)
            ) {
              for (var u, c = A(t); !(u = c()).done; ) {
                var l = u.value,
                  h = this._accountChangeSubscriptions[l];

                this._subscribe(h, 'accountSubscribe', this._buildArgs([h.publicKey], h.commitment, 'base64'));
              }

              for (var f, d = A(r); !(f = d()).done; ) {
                var p = f.value,
                  b = this._programAccountChangeSubscriptions[p];

                this._subscribe(
                  b,
                  'programSubscribe',
                  this._buildArgs([b.programId], b.commitment, 'base64', {
                    filters: b.filters,
                  })
                );
              }

              for (var g, y = A(n); !(g = y()).done; ) {
                var m = g.value,
                  k = this._slotSubscriptions[m];

                this._subscribe(k, 'slotSubscribe', []);
              }

              for (var v, w = A(a); !(v = w()).done; ) {
                var S = v.value,
                  _ = this._slotUpdateSubscriptions[S];

                this._subscribe(_, 'slotsUpdatesSubscribe', []);
              }

              for (var x, I = A(i); !(x = I()).done; ) {
                var P = x.value,
                  E = this._signatureSubscriptions[P],
                  B = [E.signature];
                if (E.options) B.push(E.options);

                this._subscribe(E, 'signatureSubscribe', B);
              }

              for (var T, R = A(s); !(T = R()).done; ) {
                var C = T.value,
                  O = this._rootSubscriptions[C];

                this._subscribe(O, 'rootSubscribe', []);
              }

              for (var N, W = A(o); !(N = W()).done; ) {
                var z = N.value,
                  U = this._logsSubscriptions[z],
                  L = undefined;
                L =
                  'object' == typeof U.filter
                    ? {
                        mentions: [U.filter.toString()],
                      }
                    : U.filter;

                this._subscribe(U, 'logsSubscribe', this._buildArgs([L], U.commitment));
              }
            } else this._rpcWebSocket.connect();
          } else
            this._rpcWebSocketConnected &&
              ((this._rpcWebSocketConnected = false),
              (this._rpcWebSocketIdleTimeout = setTimeout(function () {
                e._rpcWebSocketIdleTimeout = null;

                e._rpcWebSocket.close();
              }, 500)));
        },
      },
      {
        key: '_wsOnAccountNotification',
        value: function (e) {
          for (var module1006 = require('./1006').create(e, module1006), n = 0, a = Object.values(this._accountChangeSubscriptions); n < a.length; n++) {
            var i = a[n];
            if (i.subscriptionId === module1006.subscription) return void i.callback(module1006.result.value, module1006.result.context);
          }
        },
      },
      {
        key: 'onAccountChange',
        value: function (e, t, r) {
          var n = ++this._accountChangeSubscriptionCounter;
          this._accountChangeSubscriptions[n] = {
            publicKey: e.toBase58(),
            callback: t,
            commitment: r,
            subscriptionId: null,
          };

          this._updateSubscriptions();

          return n;
        },
      },
      {
        key: 'removeAccountChangeListener',
        value: function (e) {
          var t;
          return module76.default.async(
            function (r) {
              for (;;)
                switch ((r.prev = r.next)) {
                  case 0:
                    if (!this._accountChangeSubscriptions[e]) {
                      r.next = 8;
                      break;
                    }

                    t = this._accountChangeSubscriptions[e];
                    delete this._accountChangeSubscriptions[e];
                    r.next = 5;
                    return module76.default.awrap(this._unsubscribe(t, 'accountUnsubscribe'));

                  case 5:
                    this._updateSubscriptions();

                    r.next = 9;
                    break;

                  case 8:
                    throw new Error('Unknown account change id: ' + e);

                  case 9:
                  case 'end':
                    return r.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: '_wsOnProgramAccountNotification',
        value: function (e) {
          for (var module1006 = require('./1006').create(e, module1006), n = 0, a = Object.values(this._programAccountChangeSubscriptions); n < a.length; n++) {
            var i = a[n];

            if (i.subscriptionId === module1006.subscription) {
              var o = module1006.result,
                u = o.value,
                c = o.context;
              return void i.callback(
                {
                  accountId: u.pubkey,
                  accountInfo: u.account,
                },
                c
              );
            }
          }
        },
      },
      {
        key: 'onProgramAccountChange',
        value: function (e, t, r, n) {
          var a = ++this._programAccountChangeSubscriptionCounter;
          this._programAccountChangeSubscriptions[a] = {
            programId: e.toBase58(),
            callback: t,
            commitment: r,
            subscriptionId: null,
            filters: n,
          };

          this._updateSubscriptions();

          return a;
        },
      },
      {
        key: 'removeProgramAccountChangeListener',
        value: function (e) {
          var t;
          return module76.default.async(
            function (r) {
              for (;;)
                switch ((r.prev = r.next)) {
                  case 0:
                    if (!this._programAccountChangeSubscriptions[e]) {
                      r.next = 8;
                      break;
                    }

                    t = this._programAccountChangeSubscriptions[e];
                    delete this._programAccountChangeSubscriptions[e];
                    r.next = 5;
                    return module76.default.awrap(this._unsubscribe(t, 'programUnsubscribe'));

                  case 5:
                    this._updateSubscriptions();

                    r.next = 9;
                    break;

                  case 8:
                    throw new Error('Unknown program account change id: ' + e);

                  case 9:
                  case 'end':
                    return r.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'onLogs',
        value: function (e, t, r) {
          var n = ++this._logsSubscriptionCounter;
          this._logsSubscriptions[n] = {
            filter: e,
            callback: t,
            commitment: r,
            subscriptionId: null,
          };

          this._updateSubscriptions();

          return n;
        },
      },
      {
        key: 'removeOnLogsListener',
        value: function (e) {
          var t;
          return module76.default.async(
            function (r) {
              for (;;)
                switch ((r.prev = r.next)) {
                  case 0:
                    if (this._logsSubscriptions[e]) {
                      r.next = 2;
                      break;
                    }

                    throw new Error('Unknown logs id: ' + e);

                  case 2:
                    t = this._logsSubscriptions[e];
                    delete this._logsSubscriptions[e];
                    r.next = 6;
                    return module76.default.awrap(this._unsubscribe(t, 'logsUnsubscribe'));

                  case 6:
                    this._updateSubscriptions();

                  case 7:
                  case 'end':
                    return r.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: '_wsOnLogsNotification',
        value: function (e) {
          for (var r, module1006 = require('./1006').create(e, module1006), a = A(Object.keys(this._logsSubscriptions).map(Number)); !(r = a()).done; ) {
            var i = r.value,
              o = this._logsSubscriptions[i];
            if (o.subscriptionId === module1006.subscription) return void o.callback(module1006.result.value, module1006.result.context);
          }
        },
      },
      {
        key: '_wsOnSlotNotification',
        value: function (e) {
          for (var module1006 = require('./1006').create(e, module1006), n = 0, a = Object.values(this._slotSubscriptions); n < a.length; n++) {
            var i = a[n];
            if (i.subscriptionId === module1006.subscription) return void i.callback(module1006.result);
          }
        },
      },
      {
        key: 'onSlotChange',
        value: function (e) {
          var t = ++this._slotSubscriptionCounter;
          this._slotSubscriptions[t] = {
            callback: e,
            subscriptionId: null,
          };

          this._updateSubscriptions();

          return t;
        },
      },
      {
        key: 'removeSlotChangeListener',
        value: function (e) {
          var t;
          return module76.default.async(
            function (r) {
              for (;;)
                switch ((r.prev = r.next)) {
                  case 0:
                    if (!this._slotSubscriptions[e]) {
                      r.next = 8;
                      break;
                    }

                    t = this._slotSubscriptions[e];
                    delete this._slotSubscriptions[e];
                    r.next = 5;
                    return module76.default.awrap(this._unsubscribe(t, 'slotUnsubscribe'));

                  case 5:
                    this._updateSubscriptions();

                    r.next = 9;
                    break;

                  case 8:
                    throw new Error('Unknown slot change id: ' + e);

                  case 9:
                  case 'end':
                    return r.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: '_wsOnSlotUpdatesNotification',
        value: function (e) {
          for (var module1006 = require('./1006').create(e, module1006), n = 0, a = Object.values(this._slotUpdateSubscriptions); n < a.length; n++) {
            var i = a[n];
            if (i.subscriptionId === module1006.subscription) return void i.callback(module1006.result);
          }
        },
      },
      {
        key: 'onSlotUpdate',
        value: function (e) {
          var t = ++this._slotUpdateSubscriptionCounter;
          this._slotUpdateSubscriptions[t] = {
            callback: e,
            subscriptionId: null,
          };

          this._updateSubscriptions();

          return t;
        },
      },
      {
        key: 'removeSlotUpdateListener',
        value: function (e) {
          var t;
          return module76.default.async(
            function (r) {
              for (;;)
                switch ((r.prev = r.next)) {
                  case 0:
                    if (!this._slotUpdateSubscriptions[e]) {
                      r.next = 8;
                      break;
                    }

                    t = this._slotUpdateSubscriptions[e];
                    delete this._slotUpdateSubscriptions[e];
                    r.next = 5;
                    return module76.default.awrap(this._unsubscribe(t, 'slotsUpdatesUnsubscribe'));

                  case 5:
                    this._updateSubscriptions();

                    r.next = 9;
                    break;

                  case 8:
                    throw new Error('Unknown slot update id: ' + e);

                  case 9:
                  case 'end':
                    return r.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: '_buildArgs',
        value: function (e, t, r, n) {
          var a = t || this._commitment;

          if (a || r || n) {
            var i = {};
            if (r) i.encoding = r;
            if (a) i.commitment = a;
            if (n) i = module29.default(i, n);
            e.push(i);
          }

          return e;
        },
      },
      {
        key: '_buildArgsAtLeastConfirmed',
        value: function (e, t, r, n) {
          var a = t || this._commitment;
          if (a && !['confirmed', 'finalized'].includes(a))
            throw new Error('Using Connection with default commitment: `' + this._commitment + '`, but method requires at least `confirmed`');
          return this._buildArgs(e, t, r, n);
        },
      },
      {
        key: '_wsOnSignatureNotification',
        value: function (e) {
          for (var module1006 = require('./1006').create(e, module1006), n = 0, a = Object.entries(this._signatureSubscriptions); n < a.length; n++) {
            var i = a[n],
              o = module23.default(i, 2),
              u = o[0],
              l = o[1];
            if (l.subscriptionId === module1006.subscription)
              return void ('receivedSignature' === module1006.result.value
                ? l.callback(
                    {
                      type: 'received',
                    },
                    module1006.result.context
                  )
                : (delete this._signatureSubscriptions[Number(u)],
                  this._updateSubscriptions(),
                  l.callback(
                    {
                      type: 'status',
                      result: module1006.result.value,
                    },
                    module1006.result.context
                  )));
          }
        },
      },
      {
        key: 'onSignature',
        value: function (e, t, r) {
          var n = ++this._signatureSubscriptionCounter;
          this._signatureSubscriptions[n] = {
            signature: e,
            callback: function (e, r) {
              if ('status' === e.type) t(e.result, r);
            },
            options: {
              commitment: r,
            },
            subscriptionId: null,
          };

          this._updateSubscriptions();

          return n;
        },
      },
      {
        key: 'onSignatureWithOptions',
        value: function (e, t, r) {
          var n = ++this._signatureSubscriptionCounter;
          this._signatureSubscriptions[n] = {
            signature: e,
            callback: t,
            options: r,
            subscriptionId: null,
          };

          this._updateSubscriptions();

          return n;
        },
      },
      {
        key: 'removeSignatureListener',
        value: function (e) {
          var t;
          return module76.default.async(
            function (r) {
              for (;;)
                switch ((r.prev = r.next)) {
                  case 0:
                    if (!this._signatureSubscriptions[e]) {
                      r.next = 8;
                      break;
                    }

                    t = this._signatureSubscriptions[e];
                    delete this._signatureSubscriptions[e];
                    r.next = 5;
                    return module76.default.awrap(this._unsubscribe(t, 'signatureUnsubscribe'));

                  case 5:
                    this._updateSubscriptions();

                    r.next = 9;
                    break;

                  case 8:
                    throw new Error('Unknown signature result id: ' + e);

                  case 9:
                  case 'end':
                    return r.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: '_wsOnRootNotification',
        value: function (e) {
          for (var module1006 = require('./1006').create(e, module1006), n = 0, a = Object.values(this._rootSubscriptions); n < a.length; n++) {
            var i = a[n];
            if (i.subscriptionId === module1006.subscription) return void i.callback(module1006.result);
          }
        },
      },
      {
        key: 'onRootChange',
        value: function (e) {
          var t = ++this._rootSubscriptionCounter;
          this._rootSubscriptions[t] = {
            callback: e,
            subscriptionId: null,
          };

          this._updateSubscriptions();

          return t;
        },
      },
      {
        key: 'removeRootChangeListener',
        value: function (e) {
          var t;
          return module76.default.async(
            function (r) {
              for (;;)
                switch ((r.prev = r.next)) {
                  case 0:
                    if (!this._rootSubscriptions[e]) {
                      r.next = 8;
                      break;
                    }

                    t = this._rootSubscriptions[e];
                    delete this._rootSubscriptions[e];
                    r.next = 5;
                    return module76.default.awrap(this._unsubscribe(t, 'rootUnsubscribe'));

                  case 5:
                    this._updateSubscriptions();

                    r.next = 9;
                    break;

                  case 8:
                    throw new Error('Unknown root change id: ' + e);

                  case 9:
                  case 'end':
                    return r.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
    ]);
    return e;
  })();

exports.Connection = module1006;

var Sa = (function () {
  function e(t) {
    module7.default(this, e);
    this._keypair = undefined;
    this._keypair = t || module939.default.sign.keyPair();
  }

  module8.default(
    e,
    [
      {
        key: 'publicKey',
        get: function () {
          return new module1006(this._keypair.publicKey);
        },
      },
      {
        key: 'secretKey',
        get: function () {
          return this._keypair.secretKey;
        },
      },
    ],
    [
      {
        key: 'generate',
        value: function () {
          return new e(module939.default.sign.keyPair());
        },
      },
      {
        key: 'fromSecretKey',
        value: function (t, r) {
          var n = module939.default.sign.keyPair.fromSecretKey(t);

          if (!r || !r.skipValidation) {
            var a = new TextEncoder().encode('@solana/web3.js-validation-v1'),
              i = module939.default.sign.detached(a, n.secretKey);
            if (!module939.default.sign.detached.verify(a, i, n.publicKey)) throw new Error('provided secretKey is invalid');
          }

          return new e(n);
        },
      },
      {
        key: 'fromSeed',
        value: function (t) {
          return new e(module939.default.sign.keyPair.fromSeed(t));
        },
      },
    ]
  );
  return e;
})();

exports.Keypair = Sa;

var _a = module946.struct([
    module946.u8('numSignatures'),
    module946.u8('padding'),
    module946.u16('signatureOffset'),
    module946.u16('signatureInstructionIndex'),
    module946.u16('publicKeyOffset'),
    module946.u16('publicKeyInstructionIndex'),
    module946.u16('messageDataOffset'),
    module946.u16('messageDataSize'),
    module946.u16('messageInstructionIndex'),
  ]),
  xa = (function () {
    function e() {
      module7.default(this, e);
    }

    module8.default(e, null, [
      {
        key: 'createInstructionWithPublicKey',
        value: function (r) {
          var n = r.publicKey,
            a = r.message,
            i = r.signature,
            o = r.instructionIndex;
          pr(32 === n.length, 'Public Key must be 32 bytes but received ' + n.length + ' bytes');
          pr(64 === i.length, 'Signature must be 64 bytes but received ' + i.length + ' bytes');

          var u = _a.span,
            c = u + n.length,
            l = c + i.length,
            module1003 = require('./1003').Buffer.alloc(l + a.length);

          _a.encode(
            {
              numSignatures: 1,
              padding: 0,
              signatureOffset: c,
              signatureInstructionIndex: o,
              publicKeyOffset: u,
              publicKeyInstructionIndex: o,
              messageDataOffset: l,
              messageDataSize: a.length,
              messageInstructionIndex: o,
            },
            module1003
          );

          module1003.fill(n, u);
          module1003.fill(i, c);
          module1003.fill(a, l);
          return new module1006({
            keys: [],
            programId: e.programId,
            data: module1003,
          });
        },
      },
      {
        key: 'createInstructionWithPrivateKey',
        value: function (e) {
          var t = e.privateKey,
            r = e.message,
            n = e.instructionIndex;
          pr(64 === t.length, 'Private key must be 64 bytes but received ' + t.length + ' bytes');

          try {
            var a = Sa.fromSecretKey(t),
              i = a.publicKey.toBytes(),
              s = module939.default.sign.detached(r, a.secretKey);
            return this.createInstructionWithPublicKey({
              publicKey: i,
              message: r,
              signature: s,
              instructionIndex: n,
            });
          } catch (e) {
            throw new Error('Error creating instruction; ' + e);
          }
        },
      },
    ]);
    return e;
  })();

exports.Ed25519Program = xa;
xa.programId = new module1006('Ed25519SigVerify111111111111111111111111111');
var Aa = new module1006('StakeConfig11111111111111111111111111111111');
exports.STAKE_CONFIG_ID = Aa;
var Ia = module8.default(function e(t, r) {
  module7.default(this, e);
  this.staker = undefined;
  this.withdrawer = undefined;
  this.staker = t;
  this.withdrawer = r;
});
exports.Authorized = Ia;
var Pa = module8.default(function e(t, r, n) {
  module7.default(this, e);
  this.unixTimestamp = undefined;
  this.epoch = undefined;
  this.custodian = undefined;
  this.unixTimestamp = t;
  this.epoch = r;
  this.custodian = n;
});
exports.Lockup = Pa;
Pa.default = new Pa(0, 0, module1006.default);

var Ea = (function () {
  function e() {
    module7.default(this, e);
  }

  module8.default(e, null, [
    {
      key: 'decodeInstructionType',
      value: function (e) {
        this.checkProgramId(e.programId);

        for (var t, r = module946.u32('instruction').decode(e.data), n = 0, a = Object.entries(Ba); n < a.length; n++) {
          var i = a[n],
            s = module23.default(i, 2),
            o = s[0];

          if (s[1].index == r) {
            t = o;
            break;
          }
        }

        if (!t) throw new Error('Instruction type incorrect; not a StakeInstruction');
        return t;
      },
    },
    {
      key: 'decodeInitialize',
      value: function (e) {
        this.checkProgramId(e.programId);
        this.checkKeyLength(e.keys, 2);
        var t = Rr(Ba.Initialize, e.data),
          r = t.authorized,
          n = t.lockup;
        return {
          stakePubkey: e.keys[0].pubkey,
          authorized: new Ia(new module1006(r.staker), new module1006(r.withdrawer)),
          lockup: new Pa(n.unixTimestamp, n.epoch, new module1006(n.custodian)),
        };
      },
    },
    {
      key: 'decodeDelegate',
      value: function (e) {
        this.checkProgramId(e.programId);
        this.checkKeyLength(e.keys, 6);
        Rr(Ba.Delegate, e.data);
        return {
          stakePubkey: e.keys[0].pubkey,
          votePubkey: e.keys[1].pubkey,
          authorizedPubkey: e.keys[5].pubkey,
        };
      },
    },
    {
      key: 'decodeAuthorize',
      value: function (e) {
        this.checkProgramId(e.programId);
        this.checkKeyLength(e.keys, 3);
        var t = Rr(Ba.Authorize, e.data),
          r = t.newAuthorized,
          n = t.stakeAuthorizationType,
          a = {
            stakePubkey: e.keys[0].pubkey,
            authorizedPubkey: e.keys[2].pubkey,
            newAuthorizedPubkey: new module1006(r),
            stakeAuthorizationType: {
              index: n,
            },
          };
        if (e.keys.length > 3) a.custodianPubkey = e.keys[3].pubkey;
        return a;
      },
    },
    {
      key: 'decodeAuthorizeWithSeed',
      value: function (e) {
        this.checkProgramId(e.programId);
        this.checkKeyLength(e.keys, 2);
        var t = Rr(Ba.AuthorizeWithSeed, e.data),
          r = t.newAuthorized,
          n = t.stakeAuthorizationType,
          a = t.authoritySeed,
          i = t.authorityOwner,
          s = {
            stakePubkey: e.keys[0].pubkey,
            authorityBase: e.keys[1].pubkey,
            authoritySeed: a,
            authorityOwner: new module1006(i),
            newAuthorizedPubkey: new module1006(r),
            stakeAuthorizationType: {
              index: n,
            },
          };
        if (e.keys.length > 3) s.custodianPubkey = e.keys[3].pubkey;
        return s;
      },
    },
    {
      key: 'decodeSplit',
      value: function (e) {
        this.checkProgramId(e.programId);
        this.checkKeyLength(e.keys, 3);
        var t = Rr(Ba.Split, e.data).lamports;
        return {
          stakePubkey: e.keys[0].pubkey,
          splitStakePubkey: e.keys[1].pubkey,
          authorizedPubkey: e.keys[2].pubkey,
          lamports: t,
        };
      },
    },
    {
      key: 'decodeMerge',
      value: function (e) {
        this.checkProgramId(e.programId);
        this.checkKeyLength(e.keys, 3);
        Rr(Ba.Merge, e.data);
        return {
          stakePubkey: e.keys[0].pubkey,
          sourceStakePubKey: e.keys[1].pubkey,
          authorizedPubkey: e.keys[4].pubkey,
        };
      },
    },
    {
      key: 'decodeWithdraw',
      value: function (e) {
        this.checkProgramId(e.programId);
        this.checkKeyLength(e.keys, 5);
        var t = Rr(Ba.Withdraw, e.data).lamports,
          r = {
            stakePubkey: e.keys[0].pubkey,
            toPubkey: e.keys[1].pubkey,
            authorizedPubkey: e.keys[4].pubkey,
            lamports: t,
          };
        if (e.keys.length > 5) r.custodianPubkey = e.keys[5].pubkey;
        return r;
      },
    },
    {
      key: 'decodeDeactivate',
      value: function (e) {
        this.checkProgramId(e.programId);
        this.checkKeyLength(e.keys, 3);
        Rr(Ba.Deactivate, e.data);
        return {
          stakePubkey: e.keys[0].pubkey,
          authorizedPubkey: e.keys[2].pubkey,
        };
      },
    },
    {
      key: 'checkProgramId',
      value: function (e) {
        if (!e.equals(Ra.programId)) throw new Error('invalid instruction; programId is not StakeProgram');
      },
    },
    {
      key: 'checkKeyLength',
      value: function (e, t) {
        if (e.length < t) throw new Error('invalid instruction; found ' + e.length + ' keys, expected at least ' + t);
      },
    },
  ]);
  return e;
})();

exports.StakeInstruction = Ea;
var Ba = Object.freeze({
  Initialize: {
    index: 0,
    layout: module946.struct([
      module946.u32('instruction'),
      (function () {
        var e = arguments.length > 0 && undefined !== arguments[0] ? arguments[0] : 'authorized';
        return module946.struct([ur('staker'), ur('withdrawer')], e);
      })(),
      (function () {
        var e = arguments.length > 0 && undefined !== arguments[0] ? arguments[0] : 'lockup';
        return module946.struct([module946.ns64('unixTimestamp'), module946.ns64('epoch'), ur('custodian')], e);
      })(),
    ]),
  },
  Authorize: {
    index: 1,
    layout: module946.struct([module946.u32('instruction'), ur('newAuthorized'), module946.u32('stakeAuthorizationType')]),
  },
  Delegate: {
    index: 2,
    layout: module946.struct([module946.u32('instruction')]),
  },
  Split: {
    index: 3,
    layout: module946.struct([module946.u32('instruction'), module946.ns64('lamports')]),
  },
  Withdraw: {
    index: 4,
    layout: module946.struct([module946.u32('instruction'), module946.ns64('lamports')]),
  },
  Deactivate: {
    index: 5,
    layout: module946.struct([module946.u32('instruction')]),
  },
  Merge: {
    index: 7,
    layout: module946.struct([module946.u32('instruction')]),
  },
  AuthorizeWithSeed: {
    index: 8,
    layout: module946.struct([module946.u32('instruction'), ur('newAuthorized'), module946.u32('stakeAuthorizationType'), module1006('authoritySeed'), ur('authorityOwner')]),
  },
});
exports.STAKE_INSTRUCTION_LAYOUTS = Ba;
var Ta = Object.freeze({
  Staker: {
    index: 0,
  },
  Withdrawer: {
    index: 1,
  },
});
exports.StakeAuthorizationLayout = Ta;

var Ra = (function () {
  function e() {
    module7.default(this, e);
  }

  module8.default(e, null, [
    {
      key: 'initialize',
      value: function (e) {
        var t = e.stakePubkey,
          r = e.authorized,
          n = e.lockup || Pa.default,
          a = Tr(Ba.Initialize, {
            authorized: {
              staker: module1004(r.staker.toBuffer()),
              withdrawer: module1004(r.withdrawer.toBuffer()),
            },
            lockup: {
              unixTimestamp: n.unixTimestamp,
              epoch: n.epoch,
              custodian: module1004(n.custodian.toBuffer()),
            },
          }),
          i = {
            keys: [
              {
                pubkey: t,
                isSigner: false,
                isWritable: true,
              },
              {
                pubkey: _r,
                isSigner: false,
                isWritable: false,
              },
            ],
            programId: this.programId,
            data: a,
          };
        return new module1006(i);
      },
    },
    {
      key: 'createAccountWithSeed',
      value: function (e) {
        var t = new module1006();
        t.add(
          Lr.createAccountWithSeed({
            fromPubkey: e.fromPubkey,
            newAccountPubkey: e.stakePubkey,
            basePubkey: e.basePubkey,
            seed: e.seed,
            lamports: e.lamports,
            space: this.space,
            programId: this.programId,
          })
        );
        var r = e.stakePubkey,
          n = e.authorized,
          a = e.lockup;
        return t.add(
          this.initialize({
            stakePubkey: r,
            authorized: n,
            lockup: a,
          })
        );
      },
    },
    {
      key: 'createAccount',
      value: function (e) {
        var t = new module1006();
        t.add(
          Lr.createAccount({
            fromPubkey: e.fromPubkey,
            newAccountPubkey: e.stakePubkey,
            lamports: e.lamports,
            space: this.space,
            programId: this.programId,
          })
        );
        var r = e.stakePubkey,
          n = e.authorized,
          a = e.lockup;
        return t.add(
          this.initialize({
            stakePubkey: r,
            authorized: n,
            lockup: a,
          })
        );
      },
    },
    {
      key: 'delegate',
      value: function (e) {
        var t = e.stakePubkey,
          r = e.authorizedPubkey,
          n = e.votePubkey,
          a = Tr(Ba.Delegate);
        return new module1006().add({
          keys: [
            {
              pubkey: t,
              isSigner: false,
              isWritable: true,
            },
            {
              pubkey: n,
              isSigner: false,
              isWritable: false,
            },
            {
              pubkey: kr,
              isSigner: false,
              isWritable: false,
            },
            {
              pubkey: Pr,
              isSigner: false,
              isWritable: false,
            },
            {
              pubkey: Aa,
              isSigner: false,
              isWritable: false,
            },
            {
              pubkey: r,
              isSigner: true,
              isWritable: false,
            },
          ],
          programId: this.programId,
          data: a,
        });
      },
    },
    {
      key: 'authorize',
      value: function (e) {
        var t = e.stakePubkey,
          r = e.authorizedPubkey,
          n = e.newAuthorizedPubkey,
          a = e.stakeAuthorizationType,
          i = e.custodianPubkey,
          s = Tr(Ba.Authorize, {
            newAuthorized: module1004(n.toBuffer()),
            stakeAuthorizationType: a.index,
          }),
          o = [
            {
              pubkey: t,
              isSigner: false,
              isWritable: true,
            },
            {
              pubkey: kr,
              isSigner: false,
              isWritable: true,
            },
            {
              pubkey: r,
              isSigner: true,
              isWritable: false,
            },
          ];
        if (i)
          o.push({
            pubkey: i,
            isSigner: false,
            isWritable: false,
          });
        return new module1006().add({
          keys: o,
          programId: this.programId,
          data: s,
        });
      },
    },
    {
      key: 'authorizeWithSeed',
      value: function (e) {
        var t = e.stakePubkey,
          r = e.authorityBase,
          n = e.authoritySeed,
          a = e.authorityOwner,
          i = e.newAuthorizedPubkey,
          s = e.stakeAuthorizationType,
          o = e.custodianPubkey,
          u = Tr(Ba.AuthorizeWithSeed, {
            newAuthorized: module1004(i.toBuffer()),
            stakeAuthorizationType: s.index,
            authoritySeed: n,
            authorityOwner: module1004(a.toBuffer()),
          }),
          c = [
            {
              pubkey: t,
              isSigner: false,
              isWritable: true,
            },
            {
              pubkey: r,
              isSigner: true,
              isWritable: false,
            },
            {
              pubkey: kr,
              isSigner: false,
              isWritable: false,
            },
          ];
        if (o)
          c.push({
            pubkey: o,
            isSigner: false,
            isWritable: false,
          });
        return new module1006().add({
          keys: c,
          programId: this.programId,
          data: u,
        });
      },
    },
    {
      key: 'split',
      value: function (e) {
        var t = e.stakePubkey,
          r = e.authorizedPubkey,
          n = e.splitStakePubkey,
          a = e.lamports,
          i = new module1006();
        i.add(
          Lr.createAccount({
            fromPubkey: r,
            newAccountPubkey: n,
            lamports: 0,
            space: this.space,
            programId: this.programId,
          })
        );
        var s = Tr(Ba.Split, {
          lamports: a,
        });
        return i.add({
          keys: [
            {
              pubkey: t,
              isSigner: false,
              isWritable: true,
            },
            {
              pubkey: n,
              isSigner: false,
              isWritable: true,
            },
            {
              pubkey: r,
              isSigner: true,
              isWritable: false,
            },
          ],
          programId: this.programId,
          data: s,
        });
      },
    },
    {
      key: 'merge',
      value: function (e) {
        var t = e.stakePubkey,
          r = e.sourceStakePubKey,
          n = e.authorizedPubkey,
          a = Tr(Ba.Merge);
        return new module1006().add({
          keys: [
            {
              pubkey: t,
              isSigner: false,
              isWritable: true,
            },
            {
              pubkey: r,
              isSigner: false,
              isWritable: true,
            },
            {
              pubkey: kr,
              isSigner: false,
              isWritable: false,
            },
            {
              pubkey: Pr,
              isSigner: false,
              isWritable: false,
            },
            {
              pubkey: n,
              isSigner: true,
              isWritable: false,
            },
          ],
          programId: this.programId,
          data: a,
        });
      },
    },
    {
      key: 'withdraw',
      value: function (e) {
        var t = e.stakePubkey,
          r = e.authorizedPubkey,
          n = e.toPubkey,
          a = e.lamports,
          i = e.custodianPubkey,
          s = Tr(Ba.Withdraw, {
            lamports: a,
          }),
          o = [
            {
              pubkey: t,
              isSigner: false,
              isWritable: true,
            },
            {
              pubkey: n,
              isSigner: false,
              isWritable: true,
            },
            {
              pubkey: kr,
              isSigner: false,
              isWritable: false,
            },
            {
              pubkey: Pr,
              isSigner: false,
              isWritable: false,
            },
            {
              pubkey: r,
              isSigner: true,
              isWritable: false,
            },
          ];
        if (i)
          o.push({
            pubkey: i,
            isSigner: false,
            isWritable: false,
          });
        return new module1006().add({
          keys: o,
          programId: this.programId,
          data: s,
        });
      },
    },
    {
      key: 'deactivate',
      value: function (e) {
        var t = e.stakePubkey,
          r = e.authorizedPubkey,
          n = Tr(Ba.Deactivate);
        return new module1006().add({
          keys: [
            {
              pubkey: t,
              isSigner: false,
              isWritable: true,
            },
            {
              pubkey: kr,
              isSigner: false,
              isWritable: false,
            },
            {
              pubkey: r,
              isSigner: true,
              isWritable: false,
            },
          ],
          programId: this.programId,
          data: n,
        });
      },
    },
  ]);
  return e;
})();

exports.StakeProgram = Ra;
Ra.programId = new module1006('Stake11111111111111111111111111111111111111');
Ra.space = 200;

var Ca = module965.default.publicKeyCreate,
  Oa = module965.default.ecdsaSign,
  Na = module946.struct([
    module946.u8('numSignatures'),
    module946.u16('signatureOffset'),
    module946.u8('signatureInstructionIndex'),
    module946.u16('ethAddressOffset'),
    module946.u8('ethAddressInstructionIndex'),
    module946.u16('messageDataOffset'),
    module946.u16('messageDataSize'),
    module946.u8('messageInstructionIndex'),
    module946.blob(20, 'ethAddress'),
    module946.blob(64, 'signature'),
    module946.u8('recoveryId'),
  ]),
  module1003 = (function () {
    function e() {
      module7.default(this, e);
    }

    module8.default(e, null, [
      {
        key: 'publicKeyToEthAddress',
        value: function (e) {
          pr(64 === e.length, 'Public key must be 64 bytes but received ' + e.length + ' bytes');

          try {
            return require('./1003')
              .Buffer.from(module1002.default.keccak_256.update(module1004(e)).digest())
              .slice(-20);
          } catch (e) {
            throw new Error('Error constructing Ethereum address: ' + e);
          }
        },
      },
      {
        key: 'createInstructionWithPublicKey',
        value: function (t) {
          var r = t.publicKey,
            n = t.message,
            a = t.signature,
            i = t.recoveryId,
            s = t.instructionIndex;
          return e.createInstructionWithEthAddress({
            ethAddress: e.publicKeyToEthAddress(r),
            message: n,
            signature: a,
            recoveryId: i,
            instructionIndex: s,
          });
        },
      },
      {
        key: 'createInstructionWithEthAddress',
        value: function (r) {
          var n,
            a = r.ethAddress,
            i = r.message,
            o = r.signature,
            u = r.recoveryId,
            c = r.instructionIndex,
            l = undefined === c ? 0 : c;
          pr(
            20 === (n = 'string' == typeof a ? (a.startsWith('0x') ? require('./1003').Buffer.from(a.substr(2), 'hex') : require('./1003').Buffer.from(a, 'hex')) : a).length,
            'Address must be 20 bytes but received ' + n.length + ' bytes'
          );

          var h = 12 + n.length,
            f = h + o.length + 1,
            module1003 = require('./1003').Buffer.alloc(Na.span + i.length);

          Na.encode(
            {
              numSignatures: 1,
              signatureOffset: h,
              signatureInstructionIndex: l,
              ethAddressOffset: 12,
              ethAddressInstructionIndex: l,
              messageDataOffset: f,
              messageDataSize: i.length,
              messageInstructionIndex: l,
              signature: module1004(o),
              ethAddress: module1004(n),
              recoveryId: u,
            },
            module1003
          );
          module1003.fill(module1004(i), Na.span);
          return new module1006({
            keys: [],
            programId: e.programId,
            data: module1003,
          });
        },
      },
      {
        key: 'createInstructionWithPrivateKey',
        value: function (e) {
          var r = e.privateKey,
            n = e.message,
            a = e.instructionIndex;
          pr(32 === r.length, 'Private key must be 32 bytes but received ' + r.length + ' bytes');

          try {
            var i = module1004(r),
              o = Ca(i, false).slice(1),
              module1003 = require('./1003').Buffer.from(module1002.default.keccak_256.update(module1004(n)).digest()),
              c = Oa(module1003, i),
              l = c.signature,
              h = c.recid;

            return this.createInstructionWithPublicKey({
              publicKey: o,
              message: n,
              signature: l,
              recoveryId: h,
              instructionIndex: a,
            });
          } catch (e) {
            throw new Error('Error creating instruction; ' + e);
          }
        },
      },
    ]);
    return e;
  })();

exports.Secp256k1Program = module1003;
module1003.programId = new module1006('KeccakSecp256k11111111111111111111111111111');
var za = new module1006('Va1idator1nfo111111111111111111111111111111');
exports.VALIDATOR_INFO_KEY = za;

var module1006 = require('./1006').type({
    name: require('./1006').string(),
    website: require('./1006').optional(require('./1006').string()),
    details: require('./1006').optional(require('./1006').string()),
    keybaseUsername: require('./1006').optional(require('./1006').string()),
  }),
  module1006 = (function () {
    function e(t, r) {
      module7.default(this, e);
      this.key = undefined;
      this.info = undefined;
      this.key = t;
      this.info = r;
    }

    module8.default(e, null, [
      {
        key: 'fromConfigData',
        value: function (r) {
          var n = l.default(r);
          if (2 !== hr(n)) return null;

          for (var a = [], i = 0; i < 2; i++) {
            var o = new module1006(n.slice(0, 32)),
              u = 1 === (n = n.slice(32)).slice(0, 1)[0];
            n = n.slice(1);
            a.push({
              publicKey: o,
              isSigner: u,
            });
          }

          if (a[0].publicKey.equals(za) && a[1].isSigner) {
            var module1003 = module1006().decode(require('./1003').Buffer.from(n)),
              h = JSON.parse(module1003);

            require('./1006').assert(h, module1006);

            return new e(a[1].publicKey, h);
          }

          return null;
        },
      },
    ]);
    return e;
  })();

exports.ValidatorInfo = module1006;
var Ka = new module1006('Vote111111111111111111111111111111111111111');
exports.VOTE_PROGRAM_ID = Ka;

var Da = module946.struct([
    ur('nodePubkey'),
    ur('authorizedWithdrawer'),
    module946.u8('commission'),
    module946.nu64(),
    module946.seq(module946.struct([module946.nu64('slot'), module946.u32('confirmationCount')]), module946.offset(module946.u32(), -8), 'votes'),
    module946.u8('rootSlotValid'),
    module946.nu64('rootSlot'),
    module946.nu64(),
    module946.seq(module946.struct([module946.nu64('epoch'), ur('authorizedVoter')]), module946.offset(module946.u32(), -8), 'authorizedVoters'),
    module946.struct(
      [
        module946.seq(module946.struct([ur('authorizedPubkey'), module946.nu64('epochOfLastAuthorizedSwitch'), module946.nu64('targetEpoch')]), 32, 'buf'),
        module946.nu64('idx'),
        module946.u8('isEmpty'),
      ],
      'priorVoters'
    ),
    module946.nu64(),
    module946.seq(module946.struct([module946.nu64('epoch'), module946.nu64('credits'), module946.nu64('prevCredits')]), module946.offset(module946.u32(), -8), 'epochCredits'),
    module946.struct([module946.nu64('slot'), module946.nu64('timestamp')], 'lastTimestamp'),
  ]),
  Ma = (function () {
    function e(t) {
      module7.default(this, e);
      this.nodePubkey = undefined;
      this.authorizedWithdrawer = undefined;
      this.commission = undefined;
      this.rootSlot = undefined;
      this.votes = undefined;
      this.authorizedVoters = undefined;
      this.priorVoters = undefined;
      this.epochCredits = undefined;
      this.lastTimestamp = undefined;
      this.nodePubkey = t.nodePubkey;
      this.authorizedWithdrawer = t.authorizedWithdrawer;
      this.commission = t.commission;
      this.rootSlot = t.rootSlot;
      this.votes = t.votes;
      this.authorizedVoters = t.authorizedVoters;
      this.priorVoters = t.priorVoters;
      this.epochCredits = t.epochCredits;
      this.lastTimestamp = t.lastTimestamp;
    }

    module8.default(e, null, [
      {
        key: 'fromAccountData',
        value: function (t) {
          var r = Da.decode(module1004(t), 4),
            n = r.rootSlot;
          if (!r.rootSlotValid) n = null;
          return new e({
            nodePubkey: new module1006(r.nodePubkey),
            authorizedWithdrawer: new module1006(r.authorizedWithdrawer),
            commission: r.commission,
            votes: r.votes,
            rootSlot: n,
            authorizedVoters: r.authorizedVoters.map(qa),
            priorVoters: Fa(r.priorVoters),
            epochCredits: r.epochCredits,
            lastTimestamp: r.lastTimestamp,
          });
        },
      },
    ]);
    return e;
  })();

function qa(e) {
  var t = e.epoch,
    r = e.authorizedVoter;
  return {
    epoch: t,
    authorizedVoter: new module1006(r),
  };
}

function ja(e) {
  var t = e.authorizedPubkey,
    r = e.epochOfLastAuthorizedSwitch,
    n = e.targetEpoch;
  return {
    authorizedPubkey: new module1006(t),
    epochOfLastAuthorizedSwitch: r,
    targetEpoch: n,
  };
}

function Fa(e) {
  var t = e.buf,
    r = e.idx;
  return e.isEmpty ? [] : [].concat(l.default(t.slice(r + 1).map(ja)), l.default(t.slice(0, r)));
}

exports.VoteAccount = Ma;
var Ha = {
  http: {
    devnet: 'http://api.devnet.solana.com',
    testnet: 'http://api.testnet.solana.com',
    'mainnet-beta': 'http://api.mainnet-beta.solana.com',
  },
  https: {
    devnet: 'https://api.devnet.solana.com',
    testnet: 'https://api.testnet.solana.com',
    'mainnet-beta': 'https://api.mainnet-beta.solana.com',
  },
};
exports.LAMPORTS_PER_SOL = 1e9;
