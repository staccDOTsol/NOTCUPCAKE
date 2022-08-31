var i, n;
i = this;

n = function (i) {
  i.pad.ZeroPadding = {
    pad: function (i, n) {
      var t = 4 * n;
      i.clamp();
      i.sigBytes += t - (i.sigBytes % t || t);
    },
    unpad: function (i) {
      var n = i.words,
        t = i.sigBytes - 1;

      for (t = i.sigBytes - 1; t >= 0; t--)
        if ((n[t >>> 2] >>> (24 - (t % 4) * 8)) & 255) {
          i.sigBytes = t + 1;
          break;
        }
    },
  };
  return i.pad.ZeroPadding;
};

if ('object' == typeof exports) module.exports = exports = n(require('crypto-js'), require('./897'));
else if ('function' == typeof define && define.amd) define(['./core', './cipher-core'], n);
else n(i.CryptoJS);
