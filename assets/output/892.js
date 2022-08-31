var t, s, n, o, _, h, c;

module.exports =
  ((t = require('crypto-js')),
  require('./895'),
  require('./896'),
  require('crypto-js/aes'),
  (s = t.lib.Base),
  (n = t.lib.WordArray),
  (o = t.algo.AES),
  (_ = t.ext),
  (h = t.pad.OneZeroPadding),
  (c = t.algo.CMAC = s.extend({
    init: function (s) {
      this._aes = o.createEncryptor(s, {
        iv: new n.init(),
        padding: t.pad.NoPadding,
      });

      var h = this._aes.finalize(_.const_Zero),
        c = h.clone();

      if ((_.dbl(c), this._isTwo)) {
        var f = h.clone();

        _.inv(f);
      } else {
        var f = c.clone();

        _.dbl(f);
      }

      this._K1 = c;
      this._K2 = f;
      this._const_Bsize = 16;
      this.reset();
    },
    reset: function () {
      this._x = _.const_Zero.clone();
      this._counter = 0;
      this._buffer = new n.init();
    },
    update: function (s) {
      if (!s) return this;
      var n = this._buffer,
        o = this._const_Bsize;

      for ('string' == typeof s && (s = t.enc.Utf8.parse(s)), n.concat(s); n.sigBytes > o; ) {
        var h = _.shiftBytes(n, o);

        _.xor(this._x, h);

        this._x.clamp();

        this._aes.reset();

        this._x = this._aes.finalize(this._x);
        this._counter++;
      }

      return this;
    },
    finalize: function (t) {
      this.update(t);
      var s = this._buffer,
        n = this._const_Bsize,
        o = s.clone();
      if (s.sigBytes === n) _.xor(o, this._K1);
      else {
        h.pad(o, n / 4);

        _.xor(o, this._K2);
      }

      _.xor(o, this._x);

      this.reset();

      this._aes.reset();

      return this._aes.finalize(o);
    },
    _isTwo: false,
  })),
  (t.CMAC = function (t, s) {
    return c.create(t).finalize(s);
  }),
  (t.algo.OMAC1 = c),
  void (t.algo.OMAC2 = c.extend({
    _isTwo: true,
  })));
