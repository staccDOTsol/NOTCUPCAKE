function t(i, n, s) {
  if (!(this instanceof t)) return new t(i, n, s);
  this.Hash = i;
  this.blockSize = i.blockSize / 8;
  this.outSize = i.outSize / 8;
  this.inner = null;
  this.outer = null;

  this._init(require('./983').toArray(n, s));
}

module.exports = t;

t.prototype._init = function (t) {
  if (t.length > this.blockSize) t = new this.Hash().update(t).digest();

  require('./971')(t.length <= this.blockSize);

  for (var i = t.length; i < this.blockSize; i++) t.push(0);

  for (i = 0; i < t.length; i++) t[i] ^= 54;

  for (this.inner = new this.Hash().update(t), i = 0; i < t.length; i++) t[i] ^= 106;

  this.outer = new this.Hash().update(t);
};

t.prototype.update = function (t, i) {
  this.inner.update(t, i);
  return this;
};

t.prototype.digest = function (t) {
  this.outer.update(this.inner.digest());
  return this.outer.digest(t);
};
