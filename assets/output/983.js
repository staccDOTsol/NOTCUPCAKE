function n(n, r) {
  return 55296 == (64512 & n.charCodeAt(r)) && !(r < 0 || r + 1 >= n.length) && 56320 == (64512 & n.charCodeAt(r + 1));
}

function r(n) {
  return ((n >>> 24) | ((n >>> 8) & 65280) | ((n << 8) & 16711680) | ((255 & n) << 24)) >>> 0;
}

function t(n) {
  return 1 === n.length ? '0' + n : n;
}

function e(n) {
  return 7 === n.length
    ? '0' + n
    : 6 === n.length
    ? '00' + n
    : 5 === n.length
    ? '000' + n
    : 4 === n.length
    ? '0000' + n
    : 3 === n.length
    ? '00000' + n
    : 2 === n.length
    ? '000000' + n
    : 1 === n.length
    ? '0000000' + n
    : n;
}

exports.inherits = require('./978');

exports.toArray = function (r, t) {
  if (Array.isArray(r)) return r.slice();
  if (!r) return [];
  var e = [];
  if ('string' == typeof r) {
    if (t) {
      if ('hex' === t) for ((r = r.replace(/[^a-z0-9]+/gi, '')).length % 2 != 0 && (r = '0' + r), o = 0; o < r.length; o += 2) e.push(parseInt(r[o] + r[o + 1], 16));
    } else
      for (var u = 0, o = 0; o < r.length; o++) {
        var i = r.charCodeAt(o);
        if (i < 128) e[u++] = i;
        else if (i < 2048) {
          e[u++] = (i >> 6) | 192;
          e[u++] = (63 & i) | 128;
        } else if (n(r, o)) {
          i = 65536 + ((1023 & i) << 10) + (1023 & r.charCodeAt(++o));
          e[u++] = (i >> 18) | 240;
          e[u++] = ((i >> 12) & 63) | 128;
          e[u++] = ((i >> 6) & 63) | 128;
          e[u++] = (63 & i) | 128;
        } else {
          e[u++] = (i >> 12) | 224;
          e[u++] = ((i >> 6) & 63) | 128;
          e[u++] = (63 & i) | 128;
        }
      }
  } else for (o = 0; o < r.length; o++) e[o] = 0 | r[o];
  return e;
};

exports.toHex = function (n) {
  for (var r = '', e = 0; e < n.length; e++) r += t(n[e].toString(16));

  return r;
};

exports.htonl = r;

exports.toHex32 = function (n, t) {
  for (var u = '', o = 0; o < n.length; o++) {
    var i = n[o];
    if ('little' === t) i = r(i);
    u += e(i.toString(16));
  }

  return u;
};

exports.zero2 = t;
exports.zero8 = e;

exports.join32 = function (n, r, t, e) {
  var u = t - r;

  require('./971')(u % 4 == 0);

  for (var o = new Array(u / 4), i = 0, f = r; i < o.length; i++, f += 4) {
    var c;
    c = 'big' === e ? (n[f] << 24) | (n[f + 1] << 16) | (n[f + 2] << 8) | n[f + 3] : (n[f + 3] << 24) | (n[f + 2] << 16) | (n[f + 1] << 8) | n[f];
    o[i] = c >>> 0;
  }

  return o;
};

exports.split32 = function (n, r) {
  for (var t = new Array(4 * n.length), e = 0, u = 0; e < n.length; e++, u += 4) {
    var o = n[e];

    if ('big' === r) {
      t[u] = o >>> 24;
      t[u + 1] = (o >>> 16) & 255;
      t[u + 2] = (o >>> 8) & 255;
      t[u + 3] = 255 & o;
    } else {
      t[u + 3] = o >>> 24;
      t[u + 2] = (o >>> 16) & 255;
      t[u + 1] = (o >>> 8) & 255;
      t[u] = 255 & o;
    }
  }

  return t;
};

exports.rotr32 = function (n, r) {
  return (n >>> r) | (n << (32 - r));
};

exports.rotl32 = function (n, r) {
  return (n << r) | (n >>> (32 - r));
};

exports.sum32 = function (n, r) {
  return (n + r) >>> 0;
};

exports.sum32_3 = function (n, r, t) {
  return (n + r + t) >>> 0;
};

exports.sum32_4 = function (n, r, t, e) {
  return (n + r + t + e) >>> 0;
};

exports.sum32_5 = function (n, r, t, e, u) {
  return (n + r + t + e + u) >>> 0;
};

exports.sum64 = function (n, r, t, e) {
  var u = n[r],
    o = (e + n[r + 1]) >>> 0,
    i = (o < e ? 1 : 0) + t + u;
  n[r] = i >>> 0;
  n[r + 1] = o;
};

exports.sum64_hi = function (n, r, t, e) {
  return (((r + e) >>> 0 < r ? 1 : 0) + n + t) >>> 0;
};

exports.sum64_lo = function (n, r, t, e) {
  return (r + e) >>> 0;
};

exports.sum64_4_hi = function (n, r, t, e, u, o, i, f) {
  var c = 0,
    h = r;
  c += (h = (h + e) >>> 0) < r ? 1 : 0;
  c += (h = (h + o) >>> 0) < o ? 1 : 0;
  return (n + t + u + i + (c += (h = (h + f) >>> 0) < f ? 1 : 0)) >>> 0;
};

exports.sum64_4_lo = function (n, r, t, e, u, o, i, f) {
  return (r + e + o + f) >>> 0;
};

exports.sum64_5_hi = function (n, r, t, e, u, o, i, f, c, h) {
  var l = 0,
    a = r;
  l += (a = (a + e) >>> 0) < r ? 1 : 0;
  l += (a = (a + o) >>> 0) < o ? 1 : 0;
  l += (a = (a + f) >>> 0) < f ? 1 : 0;
  return (n + t + u + i + c + (l += (a = (a + h) >>> 0) < h ? 1 : 0)) >>> 0;
};

exports.sum64_5_lo = function (n, r, t, e, u, o, i, f, c, h) {
  return (r + e + o + f + h) >>> 0;
};

exports.rotr64_hi = function (n, r, t) {
  return ((r << (32 - t)) | (n >>> t)) >>> 0;
};

exports.rotr64_lo = function (n, r, t) {
  return ((n << (32 - t)) | (r >>> t)) >>> 0;
};

exports.shr64_hi = function (n, r, t) {
  return n >>> t;
};

exports.shr64_lo = function (n, r, t) {
  return ((n << (32 - t)) | (r >>> t)) >>> 0;
};
