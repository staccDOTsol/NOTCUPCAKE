function e(e, t, a, n) {
  switch (e) {
    case 0:
      return (t & a) ^ (~t & n);

    case 1:
      return t ^ a ^ n;

    case 2:
      return (t & a) ^ (t & n) ^ (a & n);

    case 3:
      return t ^ a ^ n;
  }
}

function t(e, t) {
  return (e << t) | (e >>> (32 - t));
}

var a = function (a) {
  var n = [1518500249, 1859775393, 2400959708, 3395469782],
    o = [1732584193, 4023233417, 2562383102, 271733878, 3285377520];

  if ('string' == typeof a) {
    var f = unescape(encodeURIComponent(a));
    a = [];

    for (var u = 0; u < f.length; ++u) a.push(f.charCodeAt(u));
  } else Array.isArray(a) || (a = Array.prototype.slice.call(a));

  a.push(128);

  for (var c = a.length / 4 + 2, i = Math.ceil(c / 16), l = new Array(i), s = 0; s < i; ++s) {
    for (var v = new Uint32Array(16), h = 0; h < 16; ++h) v[h] = (a[64 * s + 4 * h] << 24) | (a[64 * s + 4 * h + 1] << 16) | (a[64 * s + 4 * h + 2] << 8) | a[64 * s + 4 * h + 3];

    l[s] = v;
  }

  l[i - 1][14] = (8 * (a.length - 1)) / 2 ** 32;
  l[i - 1][14] = Math.floor(l[i - 1][14]);
  l[i - 1][15] = (8 * (a.length - 1)) & 4294967295;

  for (var p = 0; p < i; ++p) {
    for (var y = new Uint32Array(80), d = 0; d < 16; ++d) y[d] = l[p][d];

    for (var A = 16; A < 80; ++A) y[A] = t(y[A - 3] ^ y[A - 8] ^ y[A - 14] ^ y[A - 16], 1);

    for (var w = o[0], M = o[1], _ = o[2], U = o[3], C = o[4], b = 0; b < 80; ++b) {
      var j = Math.floor(b / 20),
        I = (t(w, 5) + e(j, M, _, U) + C + n[j] + y[b]) >>> 0;
      C = U;
      U = _;
      _ = t(M, 30) >>> 0;
      M = w;
      w = I;
    }

    o[0] = (o[0] + w) >>> 0;
    o[1] = (o[1] + M) >>> 0;
    o[2] = (o[2] + _) >>> 0;
    o[3] = (o[3] + U) >>> 0;
    o[4] = (o[4] + C) >>> 0;
  }

  return [
    (o[0] >> 24) & 255,
    (o[0] >> 16) & 255,
    (o[0] >> 8) & 255,
    255 & o[0],
    (o[1] >> 24) & 255,
    (o[1] >> 16) & 255,
    (o[1] >> 8) & 255,
    255 & o[1],
    (o[2] >> 24) & 255,
    (o[2] >> 16) & 255,
    (o[2] >> 8) & 255,
    255 & o[2],
    (o[3] >> 24) & 255,
    (o[3] >> 16) & 255,
    (o[3] >> 8) & 255,
    255 & o[3],
    (o[4] >> 24) & 255,
    (o[4] >> 16) & 255,
    (o[4] >> 8) & 255,
    255 & o[4],
  ];
};

exports.default = a;
