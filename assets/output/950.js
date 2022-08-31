var n,
  o,
  module951 = require('./951'),
  module952 = require('./952');

var t = 0,
  c = 0;

var v = function (s, v, i) {
  var f = (v && i) || 0,
    _ = v || new Array(16),
    w = (s = s || {}).node || n,
    k = undefined !== s.clockseq ? s.clockseq : o;

  if (null == w || null == k) {
    var q = s.random || (s.rng || module951.default)();
    if (null == w) w = n = [1 | q[0], q[1], q[2], q[3], q[4], q[5]];
    if (null == k) k = o = 16383 & ((q[6] << 8) | q[7]);
  }

  var M = undefined !== s.msecs ? s.msecs : Date.now(),
    h = undefined !== s.nsecs ? s.nsecs : c + 1,
    y = M - t + (h - c) / 1e4;
  if ((y < 0 && undefined === s.clockseq && (k = (k + 1) & 16383), (y < 0 || M > t) && undefined === s.nsecs && (h = 0), h >= 1e4))
    throw new Error("uuid.v1(): Can't create more than 10M uuids/sec");
  t = M;
  c = h;
  o = k;
  var b = (1e4 * (268435455 & (M += 122192928e5)) + h) % 4294967296;
  _[f++] = (b >>> 24) & 255;
  _[f++] = (b >>> 16) & 255;
  _[f++] = (b >>> 8) & 255;
  _[f++] = 255 & b;
  var j = ((M / 4294967296) * 1e4) & 268435455;
  _[f++] = (j >>> 8) & 255;
  _[f++] = 255 & j;
  _[f++] = ((j >>> 24) & 15) | 16;
  _[f++] = (j >>> 16) & 255;
  _[f++] = (k >>> 8) | 128;
  _[f++] = 255 & k;

  for (var p = 0; p < 6; ++p) _[f + p] = w[p];

  return v || module952.default(_);
};

exports.default = v;
