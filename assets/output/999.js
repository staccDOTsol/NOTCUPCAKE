function t(n) {
  if ((require('./970').assert('ed25519' === n, 'only tested with ed25519 so far'), !(this instanceof t))) return new t(n);
  n = require('./981')[n].curve;
  this.curve = n;
  this.g = n.g;
  this.g.precompute(n.n.bitLength() + 1);
  this.pointClass = n.point().constructor;
  this.encodingLength = Math.ceil(n.n.bitLength() / 8);
  this.hash = require('./982').sha512;
}

module.exports = t;

t.prototype.sign = function (t, n) {
  t = require('./970').parseBytes(t);
  var i = this.keyFromSecret(n),
    o = this.hashInt(i.messagePrefix(), t),
    r = this.g.mul(o),
    s = this.encodePoint(r),
    h = this.hashInt(s, i.pubBytes(), t).mul(i.priv()),
    u = o.add(h).umod(this.curve.n);
  return this.makeSignature({
    R: r,
    S: u,
    Rencoded: s,
  });
};

t.prototype.verify = function (t, n, i) {
  t = require('./970').parseBytes(t);
  n = this.makeSignature(n);
  var o = this.keyFromPublic(i),
    r = this.hashInt(n.Rencoded(), o.pubBytes(), t),
    s = this.g.mul(n.S());
  return n.R().add(o.pub().mul(r)).eq(s);
};

t.prototype.hashInt = function () {
  for (var t = this.hash(), n = 0; n < arguments.length; n++) t.update(arguments[n]);

  return require('./970').intFromLE(t.digest()).umod(this.curve.n);
};

t.prototype.keyFromPublic = function (t) {
  return require('./1000').fromPublic(this, t);
};

t.prototype.keyFromSecret = function (t) {
  return require('./1000').fromSecret(this, t);
};

t.prototype.makeSignature = function (t) {
  return t instanceof require('./1001') ? t : new (require('./1001'))(this, t);
};

t.prototype.encodePoint = function (t) {
  var n = t.getY().toArray('le', this.encodingLength);
  n[this.encodingLength - 1] |= t.getX().isOdd() ? 128 : 0;
  return n;
};

t.prototype.decodePoint = function (t) {
  var module970 = (t = require('./970').parseBytes(t)).length - 1,
    i = t.slice(0, module970).concat(-129 & t[module970]),
    o = 0 != (128 & t[module970]),
    module970 = require('./970').intFromLE(i);

  return this.curve.pointFromY(module970, o);
};

t.prototype.encodeInt = function (t) {
  return t.toArray('le', this.encodingLength);
};

t.prototype.decodeInt = function (t) {
  return require('./970').intFromLE(t);
};

t.prototype.isPoint = function (t) {
  return t instanceof this.pointClass;
};
