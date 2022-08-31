var h = [
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

function t() {
  if (!(this instanceof t)) return new t();

  require('./984').BlockHash.call(this);

  this.h = [1779033703, 3144134277, 1013904242, 2773480762, 1359893119, 2600822924, 528734635, 1541459225];
  this.k = h;
  this.W = new Array(64);
}

require('./983').inherits(t, require('./984').BlockHash);

module.exports = t;
t.blockSize = 512;
t.outSize = 256;
t.hmacStrength = 192;
t.padLength = 64;

t.prototype._update = function (h, t) {
  for (var s = this.W, i = 0; i < 16; i++) s[i] = h[t + i];

  for (; i < s.length; i++) s[i] = require('./983').sum32_4(require('./987').g1_256(s[i - 2]), s[i - 7], require('./987').g0_256(s[i - 15]), s[i - 16]);

  var e = this.h[0],
    u = this.h[1],
    n = this.h[2],
    o = this.h[3],
    a = this.h[4],
    c = this.h[5],
    g = this.h[6],
    l = this.h[7];

  for (require('./971')(this.k.length === s.length), i = 0; i < s.length; i++) {
    var module987 = require('./983').sum32_5(l, require('./987').s1_256(a), require('./987').ch32(a, c, g), this.k[i], s[i]),
      module987 = require('./983').sum32(require('./987').s0_256(e), require('./987').maj32(e, u, n));

    l = g;
    g = c;
    c = a;
    a = require('./983').sum32(o, module987);
    o = n;
    n = u;
    u = e;
    e = require('./983').sum32(module987, module987);
  }

  this.h[0] = require('./983').sum32(this.h[0], e);
  this.h[1] = require('./983').sum32(this.h[1], u);
  this.h[2] = require('./983').sum32(this.h[2], n);
  this.h[3] = require('./983').sum32(this.h[3], o);
  this.h[4] = require('./983').sum32(this.h[4], a);
  this.h[5] = require('./983').sum32(this.h[5], c);
  this.h[6] = require('./983').sum32(this.h[6], g);
  this.h[7] = require('./983').sum32(this.h[7], l);
};

t.prototype._digest = function (h) {
  return 'hex' === h ? require('./983').toHex32(this.h, 'big') : require('./983').split32(this.h, 'big');
};
