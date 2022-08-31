function t() {
  if (!(this instanceof t)) return new t();

  require('./989').call(this);

  this.h = [3238371032, 914150663, 812702999, 4144912697, 4290775857, 1750603025, 1694076839, 3204075428];
}

require('./983').inherits(t, require('./989'));

module.exports = t;
t.blockSize = 512;
t.outSize = 224;
t.hmacStrength = 192;
t.padLength = 64;

t.prototype._digest = function (t) {
  return 'hex' === t ? require('./983').toHex32(this.h.slice(0, 7), 'big') : require('./983').split32(this.h.slice(0, 7), 'big');
};
