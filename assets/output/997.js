function t(i) {
  if (!(this instanceof t)) return new t(i);
  this.hash = i.hash;
  this.predResist = !!i.predResist;
  this.outLen = this.hash.outSize;
  this.minEntropy = i.minEntropy || this.hash.hmacStrength;
  this._reseed = null;
  this.reseedInterval = null;
  this.K = null;
  this.V = null;

  var module972 = require('./972').toArray(i.entropy, i.entropyEnc || 'hex'),
    module972 = require('./972').toArray(i.nonce, i.nonceEnc || 'hex'),
    module972 = require('./972').toArray(i.pers, i.persEnc || 'hex');

  require('./971')(module972.length >= this.minEntropy / 8, 'Not enough entropy. Minimum is: ' + this.minEntropy + ' bits');

  this._init(module972, module972, module972);
}

module.exports = t;

t.prototype._init = function (t, i, s) {
  var h = t.concat(i).concat(s);
  this.K = new Array(this.outLen / 8);
  this.V = new Array(this.outLen / 8);

  for (var n = 0; n < this.V.length; n++) {
    this.K[n] = 0;
    this.V[n] = 1;
  }

  this._update(h);

  this._reseed = 1;
  this.reseedInterval = 281474976710656;
};

t.prototype._hmac = function () {
  return new (require('./982').hmac)(this.hash, this.K);
};

t.prototype._update = function (t) {
  var i = this._hmac().update(this.V).update([0]);

  if (t) i = i.update(t);
  this.K = i.digest();
  this.V = this._hmac().update(this.V).digest();

  if (t) {
    this.K = this._hmac().update(this.V).update([1]).update(t).digest();
    this.V = this._hmac().update(this.V).digest();
  }
};

t.prototype.reseed = function (t, i, s, h) {
  if ('string' != typeof i) {
    h = s;
    s = i;
    i = null;
  }

  t = require('./972').toArray(t, i);
  s = require('./972').toArray(s, h);

  require('./971')(t.length >= this.minEntropy / 8, 'Not enough entropy. Minimum is: ' + this.minEntropy + ' bits');

  this._update(t.concat(s || []));

  this._reseed = 1;
};

t.prototype.generate = function (t, i, s, h) {
  if (this._reseed > this.reseedInterval) throw new Error('Reseed is required');

  if ('string' != typeof i) {
    h = s;
    s = i;
    i = null;
  }

  if (s) {
    s = require('./972').toArray(s, h || 'hex');

    this._update(s);
  }

  for (var n = []; n.length < t; ) {
    this.V = this._hmac().update(this.V).digest();
    n = n.concat(this.V);
  }

  var o = n.slice(0, t);

  this._update(s);

  this._reseed++;
  return require('./972').encode(o, i);
};
