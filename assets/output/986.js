var t = [1518500249, 1859775393, 2400959708, 3395469782];

function h() {
  if (!(this instanceof h)) return new h();

  require('./984').BlockHash.call(this);

  this.h = [1732584193, 4023233417, 2562383102, 271733878, 3285377520];
  this.W = new Array(80);
}

require('./983').inherits(h, require('./984').BlockHash);

module.exports = h;
h.blockSize = 512;
h.outSize = 160;
h.hmacStrength = 80;
h.padLength = 64;

h.prototype._update = function (h, i) {
  for (var s = this.W, o = 0; o < 16; o++) s[o] = h[i + o];

  for (; o < s.length; o++) s[o] = require('./983').rotl32(s[o - 3] ^ s[o - 8] ^ s[o - 14] ^ s[o - 16], 1);

  var e = this.h[0],
    n = this.h[1],
    u = this.h[2],
    a = this.h[3],
    c = this.h[4];

  for (o = 0; o < s.length; o++) {
    var l = ~~(o / 20),
      module987 = require('./983').sum32_5(require('./983').rotl32(e, 5), require('./987').ft_1(l, n, u, a), c, s[o], t[l]);

    c = a;
    a = u;
    u = require('./983').rotl32(n, 30);
    n = e;
    e = module987;
  }

  this.h[0] = require('./983').sum32(this.h[0], e);
  this.h[1] = require('./983').sum32(this.h[1], n);
  this.h[2] = require('./983').sum32(this.h[2], u);
  this.h[3] = require('./983').sum32(this.h[3], a);
  this.h[4] = require('./983').sum32(this.h[4], c);
};

h.prototype._digest = function (t) {
  return 'hex' === t ? require('./983').toHex32(this.h, 'big') : require('./983').split32(this.h, 'big');
};
