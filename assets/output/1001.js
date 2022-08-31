function t(t, n) {
  this.eddsa = t;
  if ('object' != typeof n) n = require('./970').parseBytes(n);
  if (Array.isArray(n))
    n = {
      R: n.slice(0, t.encodingLength),
      S: n.slice(t.encodingLength),
    };

  require('./970').assert(n.R && n.S, 'Signature without R or S');

  if (t.isPoint(n.R)) this._R = n.R;
  if (n.S instanceof require('./973')) this._S = n.S;
  this._Rencoded = Array.isArray(n.R) ? n.R : n.Rencoded;
  this._Sencoded = Array.isArray(n.S) ? n.S : n.Sencoded;
}

require('./970').cachedProperty(t, 'S', function () {
  return this.eddsa.decodeInt(this.Sencoded());
});

require('./970').cachedProperty(t, 'R', function () {
  return this.eddsa.decodePoint(this.Rencoded());
});

require('./970').cachedProperty(t, 'Rencoded', function () {
  return this.eddsa.encodePoint(this.R());
});

require('./970').cachedProperty(t, 'Sencoded', function () {
  return this.eddsa.encodeInt(this.S());
});

t.prototype.toBytes = function () {
  return this.Rencoded().concat(this.Sencoded());
};

t.prototype.toHex = function () {
  return require('./970').encode(this.toBytes(), 'hex').toUpperCase();
};

module.exports = t;
