var t, n;
t = this;

n = function (t) {
  var n, i, o, c, f, s, u;
  i = (n = t).lib;
  o = i.Base;
  c = i.WordArray;
  f = n.algo;
  s = f.MD5;
  u = f.EvpKDF = o.extend({
    cfg: o.extend({
      keySize: 4,
      hasher: s,
      iterations: 1,
    }),
    init: function (t) {
      this.cfg = this.cfg.extend(t);
    },
    compute: function (t, n) {
      for (var i, o = this.cfg, f = o.hasher.create(), s = c.create(), u = s.words, h = o.keySize, p = o.iterations; u.length < h; ) {
        if (i) f.update(i);
        i = f.update(t).finalize(n);
        f.reset();

        for (var v = 1; v < p; v++) {
          i = f.finalize(i);
          f.reset();
        }

        s.concat(i);
      }

      s.sigBytes = 4 * h;
      return s;
    },
  });

  n.EvpKDF = function (t, n, i) {
    return u.create(i).compute(t, n);
  };

  return t.EvpKDF;
};

if ('object' == typeof exports) module.exports = exports = n(require('crypto-js'), require('./899'), require('./900'));
else if ('function' == typeof define && define.amd) define(['./core', './sha1', './hmac'], n);
else n(t.CryptoJS);
