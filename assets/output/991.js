var t = [
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

function r() {
  if (!(this instanceof r)) return new r();

  require('./984').BlockHash.call(this);

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
  this.k = t;
  this.W = new Array(160);
}

function h(t, r, h, i, o) {
  var s = (t & h) ^ (~t & o);
  if (s < 0) s += 4294967296;
  return s;
}

function i(t, r, h, i, o, s) {
  var n = (r & i) ^ (~r & s);
  if (n < 0) n += 4294967296;
  return n;
}

function o(t, r, h, i, o) {
  var s = (t & h) ^ (t & o) ^ (h & o);
  if (s < 0) s += 4294967296;
  return s;
}

function s(t, r, h, i, o, s) {
  var n = (r & i) ^ (r & s) ^ (i & s);
  if (n < 0) n += 4294967296;
  return n;
}

function n(t, r) {
  var module983 = require('./983').rotr64_hi(t, r, 28) ^ require('./983').rotr64_hi(r, t, 2) ^ require('./983').rotr64_hi(r, t, 7);

  if (module983 < 0) module983 += 4294967296;
  return module983;
}

function u(t, r) {
  var module983 = require('./983').rotr64_lo(t, r, 28) ^ require('./983').rotr64_lo(r, t, 2) ^ require('./983').rotr64_lo(r, t, 7);

  if (module983 < 0) module983 += 4294967296;
  return module983;
}

function _(t, r) {
  var module983 = require('./983').rotr64_hi(t, r, 14) ^ require('./983').rotr64_hi(t, r, 18) ^ require('./983').rotr64_hi(r, t, 9);

  if (module983 < 0) module983 += 4294967296;
  return module983;
}

function l(t, r) {
  var module983 = require('./983').rotr64_lo(t, r, 14) ^ require('./983').rotr64_lo(t, r, 18) ^ require('./983').rotr64_lo(r, t, 9);

  if (module983 < 0) module983 += 4294967296;
  return module983;
}

function c(t, r) {
  var module983 = require('./983').rotr64_hi(t, r, 1) ^ require('./983').rotr64_hi(t, r, 8) ^ require('./983').shr64_hi(t, r, 7);

  if (module983 < 0) module983 += 4294967296;
  return module983;
}

function f(t, r) {
  var module983 = require('./983').rotr64_lo(t, r, 1) ^ require('./983').rotr64_lo(t, r, 8) ^ require('./983').shr64_lo(t, r, 7);

  if (module983 < 0) module983 += 4294967296;
  return module983;
}

function v(t, r) {
  var module983 = require('./983').rotr64_hi(t, r, 19) ^ require('./983').rotr64_hi(r, t, 29) ^ require('./983').shr64_hi(t, r, 6);

  if (module983 < 0) module983 += 4294967296;
  return module983;
}

function p(t, r) {
  var module983 = require('./983').rotr64_lo(t, r, 19) ^ require('./983').rotr64_lo(r, t, 29) ^ require('./983').shr64_lo(t, r, 6);

  if (module983 < 0) module983 += 4294967296;
  return module983;
}

require('./983').inherits(r, require('./984').BlockHash);

module.exports = r;
r.blockSize = 1024;
r.outSize = 512;
r.hmacStrength = 192;
r.padLength = 128;

r.prototype._prepareBlock = function (t, r) {
  for (var h = this.W, i = 0; i < 32; i++) h[i] = t[r + i];

  for (; i < h.length; i += 2) {
    var o = v(h[i - 4], h[i - 3]),
      s = p(h[i - 4], h[i - 3]),
      n = h[i - 14],
      u = h[i - 13],
      _ = c(h[i - 30], h[i - 29]),
      l = f(h[i - 30], h[i - 29]),
      k = h[i - 32],
      y = h[i - 31];

    h[i] = require('./983').sum64_4_hi(o, s, n, u, _, l, k, y);
    h[i + 1] = require('./983').sum64_4_lo(o, s, n, u, _, l, k, y);
  }
};

r.prototype._update = function (t, r) {
  this._prepareBlock(t, r);

  var c = this.W,
    f = this.h[0],
    v = this.h[1],
    p = this.h[2],
    k = this.h[3],
    y = this.h[4],
    B = this.h[5],
    b = this.h[6],
    x = this.h[7],
    H = this.h[8],
    S = this.h[9],
    W = this.h[10],
    w = this.h[11],
    z = this.h[12],
    A = this.h[13],
    L = this.h[14],
    j = this.h[15];

  require('./971')(this.k.length === c.length);

  for (var q = 0; q < c.length; q += 2) {
    var C = L,
      D = j,
      E = _(H, S),
      F = l(H, S),
      G = h(H, S, W, w, z),
      I = i(H, S, W, w, z, A),
      J = this.k[q],
      K = this.k[q + 1],
      M = c[q],
      N = c[q + 1],
      module983 = require('./983').sum64_5_hi(C, D, E, F, G, I, J, K, M, N),
      module983 = require('./983').sum64_5_lo(C, D, E, F, G, I, J, K, M, N);

    C = n(f, v);
    D = u(f, v);
    E = o(f, v, p, k, y);
    F = s(f, v, p, k, y, B);

    var module983 = require('./983').sum64_hi(C, D, E, F),
      module983 = require('./983').sum64_lo(C, D, E, F);

    L = z;
    j = A;
    z = W;
    A = w;
    W = H;
    w = S;
    H = require('./983').sum64_hi(b, x, module983, module983);
    S = require('./983').sum64_lo(x, x, module983, module983);
    b = y;
    x = B;
    y = p;
    B = k;
    p = f;
    k = v;
    f = require('./983').sum64_hi(module983, module983, module983, module983);
    v = require('./983').sum64_lo(module983, module983, module983, module983);
  }

  require('./983').sum64(this.h, 0, f, v);

  require('./983').sum64(this.h, 2, p, k);

  require('./983').sum64(this.h, 4, y, B);

  require('./983').sum64(this.h, 6, b, x);

  require('./983').sum64(this.h, 8, H, S);

  require('./983').sum64(this.h, 10, W, w);

  require('./983').sum64(this.h, 12, z, A);

  require('./983').sum64(this.h, 14, L, j);
};

r.prototype._digest = function (t) {
  return 'hex' === t ? require('./983').toHex32(this.h, 'big') : require('./983').split32(this.h, 'big');
};
