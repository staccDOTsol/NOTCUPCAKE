var i, c;
i = this;

c = function (i) {
  i.mode.CFB = (function () {
    var c = i.lib.BlockCipherMode.extend();

    function o(i, c, o, t) {
      var n,
        s = this._iv;

      if (s) {
        n = s.slice(0);
        this._iv = undefined;
      } else n = this._prevBlock;

      t.encryptBlock(n, 0);

      for (var l = 0; l < o; l++) i[c + l] ^= n[l];
    }

    c.Encryptor = c.extend({
      processBlock: function (i, c) {
        var t = this._cipher,
          n = t.blockSize;
        o.call(this, i, c, n, t);
        this._prevBlock = i.slice(c, c + n);
      },
    });
    c.Decryptor = c.extend({
      processBlock: function (i, c) {
        var t = this._cipher,
          n = t.blockSize,
          s = i.slice(c, c + n);
        o.call(this, i, c, n, t);
        this._prevBlock = s;
      },
    });
    return c;
  })();

  return i.mode.CFB;
};

if ('object' == typeof exports) module.exports = exports = c(require('crypto-js'), require('./897'));
else if ('function' == typeof define && define.amd) define(['./core', './cipher-core'], c);
else c(i.CryptoJS);
