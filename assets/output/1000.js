function t(t, s) {
  this.eddsa = t;
  this._secret = require('./970').parseBytes(s.secret);
  if (t.isPoint(s.pub)) this._pub = s.pub;
  else this._pubBytes = require('./970').parseBytes(s.pub);
}

t.fromPublic = function (s, n) {
  return n instanceof t
    ? n
    : new t(s, {
        pub: n,
      });
};

t.fromSecret = function (s, n) {
  return n instanceof t
    ? n
    : new t(s, {
        secret: n,
      });
};

t.prototype.secret = function () {
  return this._secret;
};

require('./970').cachedProperty(t, 'pubBytes', function () {
  return this.eddsa.encodePoint(this.pub());
});

require('./970').cachedProperty(t, 'pub', function () {
  return this._pubBytes ? this.eddsa.decodePoint(this._pubBytes) : this.eddsa.g.mul(this.priv());
});

require('./970').cachedProperty(t, 'privBytes', function () {
  var t = this.eddsa,
    s = this.hash(),
    n = t.encodingLength - 1,
    c = s.slice(0, t.encodingLength);
  c[0] &= 248;
  c[n] &= 127;
  c[n] |= 64;
  return c;
});

require('./970').cachedProperty(t, 'priv', function () {
  return this.eddsa.decodeInt(this.privBytes());
});

require('./970').cachedProperty(t, 'hash', function () {
  return this.eddsa.hash().update(this.secret()).digest();
});

require('./970').cachedProperty(t, 'messagePrefix', function () {
  return this.hash().slice(this.eddsa.encodingLength);
});

t.prototype.sign = function (t) {
  require('./970').assert(this._secret, 'KeyPair can only verify');

  return this.eddsa.sign(t, this);
};

t.prototype.verify = function (t, s) {
  return this.eddsa.verify(t, s, this);
};

t.prototype.getSecret = function (t) {
  require('./970').assert(this._secret, 'KeyPair is public only');

  return require('./970').encode(this.secret(), t);
};

t.prototype.getPublic = function (t) {
  return require('./970').encode(this.pubBytes(), t);
};

module.exports = t;
