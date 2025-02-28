var i, t;
i = this;

t = function (i) {
  (function () {
    var t = i,
      o = t.lib.StreamCipher,
      c = [],
      f = [],
      s = [],
      n = (t.algo.RabbitLegacy = o.extend({
        _doReset: function () {
          var i = this._key.words,
            t = this.cfg.iv,
            o = (this._X = [i[0], (i[3] << 16) | (i[2] >>> 16), i[1], (i[0] << 16) | (i[3] >>> 16), i[2], (i[1] << 16) | (i[0] >>> 16), i[3], (i[2] << 16) | (i[1] >>> 16)]),
            c = (this._C = [
              (i[2] << 16) | (i[2] >>> 16),
              (4294901760 & i[0]) | (65535 & i[1]),
              (i[3] << 16) | (i[3] >>> 16),
              (4294901760 & i[1]) | (65535 & i[2]),
              (i[0] << 16) | (i[0] >>> 16),
              (4294901760 & i[2]) | (65535 & i[3]),
              (i[1] << 16) | (i[1] >>> 16),
              (4294901760 & i[3]) | (65535 & i[0]),
            ]);
          this._b = 0;

          for (var f = 0; f < 4; f++) h.call(this);

          for (f = 0; f < 8; f++) c[f] ^= o[(f + 4) & 7];

          if (t) {
            var s = t.words,
              n = s[0],
              _ = s[1],
              b = (16711935 & ((n << 8) | (n >>> 24))) | (4278255360 & ((n << 24) | (n >>> 8))),
              v = (16711935 & ((_ << 8) | (_ >>> 24))) | (4278255360 & ((_ << 24) | (_ >>> 8))),
              l = (b >>> 16) | (4294901760 & v),
              p = (v << 16) | (65535 & b);
            c[0] ^= b;
            c[1] ^= l;
            c[2] ^= v;
            c[3] ^= p;
            c[4] ^= b;
            c[5] ^= l;
            c[6] ^= v;
            c[7] ^= p;

            for (f = 0; f < 4; f++) h.call(this);
          }
        },
        _doProcessBlock: function (i, t) {
          var o = this._X;
          h.call(this);
          c[0] = o[0] ^ (o[5] >>> 16) ^ (o[3] << 16);
          c[1] = o[2] ^ (o[7] >>> 16) ^ (o[5] << 16);
          c[2] = o[4] ^ (o[1] >>> 16) ^ (o[7] << 16);
          c[3] = o[6] ^ (o[3] >>> 16) ^ (o[1] << 16);

          for (var f = 0; f < 4; f++) {
            c[f] = (16711935 & ((c[f] << 8) | (c[f] >>> 24))) | (4278255360 & ((c[f] << 24) | (c[f] >>> 8)));
            i[t + f] ^= c[f];
          }
        },
        blockSize: 4,
        ivSize: 2,
      }));

    function h() {
      for (var i = this._X, t = this._C, o = 0; o < 8; o++) f[o] = t[o];

      t[0] = (t[0] + 1295307597 + this._b) | 0;
      t[1] = (t[1] + 3545052371 + (t[0] >>> 0 < f[0] >>> 0 ? 1 : 0)) | 0;
      t[2] = (t[2] + 886263092 + (t[1] >>> 0 < f[1] >>> 0 ? 1 : 0)) | 0;
      t[3] = (t[3] + 1295307597 + (t[2] >>> 0 < f[2] >>> 0 ? 1 : 0)) | 0;
      t[4] = (t[4] + 3545052371 + (t[3] >>> 0 < f[3] >>> 0 ? 1 : 0)) | 0;
      t[5] = (t[5] + 886263092 + (t[4] >>> 0 < f[4] >>> 0 ? 1 : 0)) | 0;
      t[6] = (t[6] + 1295307597 + (t[5] >>> 0 < f[5] >>> 0 ? 1 : 0)) | 0;
      t[7] = (t[7] + 3545052371 + (t[6] >>> 0 < f[6] >>> 0 ? 1 : 0)) | 0;
      this._b = t[7] >>> 0 < f[7] >>> 0 ? 1 : 0;

      for (o = 0; o < 8; o++) {
        var c = i[o] + t[o],
          n = 65535 & c,
          h = c >>> 16,
          _ = ((((n * n) >>> 17) + n * h) >>> 15) + h * h,
          b = (((4294901760 & c) * c) | 0) + (((65535 & c) * c) | 0);

        s[o] = _ ^ b;
      }

      i[0] = (s[0] + ((s[7] << 16) | (s[7] >>> 16)) + ((s[6] << 16) | (s[6] >>> 16))) | 0;
      i[1] = (s[1] + ((s[0] << 8) | (s[0] >>> 24)) + s[7]) | 0;
      i[2] = (s[2] + ((s[1] << 16) | (s[1] >>> 16)) + ((s[0] << 16) | (s[0] >>> 16))) | 0;
      i[3] = (s[3] + ((s[2] << 8) | (s[2] >>> 24)) + s[1]) | 0;
      i[4] = (s[4] + ((s[3] << 16) | (s[3] >>> 16)) + ((s[2] << 16) | (s[2] >>> 16))) | 0;
      i[5] = (s[5] + ((s[4] << 8) | (s[4] >>> 24)) + s[3]) | 0;
      i[6] = (s[6] + ((s[5] << 16) | (s[5] >>> 16)) + ((s[4] << 16) | (s[4] >>> 16))) | 0;
      i[7] = (s[7] + ((s[6] << 8) | (s[6] >>> 24)) + s[5]) | 0;
    }

    t.RabbitLegacy = o._createHelper(n);
  })();

  return i.RabbitLegacy;
};

if ('object' == typeof exports) module.exports = exports = t(require('crypto-js'), require('./902'), require('./903'), require('./898'), require('./897'));
else if ('function' == typeof define && define.amd) define(['./core', './enc-base64', './md5', './evpkdf', './cipher-core'], t);
else t(i.CryptoJS);
