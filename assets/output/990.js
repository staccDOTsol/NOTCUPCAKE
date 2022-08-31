function t() {
  if (!(this instanceof t)) return new t();

  require('./991').call(this);

  this.h = [
    3418070365,
    3238371032,
    1654270250,
    914150663,
    2438529370,
    812702999,
    355462360,
    4144912697,
    1731405415,
    4290775857,
    2394180231,
    1750603025,
    3675008525,
    1694076839,
    1203062813,
    3204075428,
  ];
}

require('./983').inherits(t, require('./991'));

module.exports = t;
t.blockSize = 1024;
t.outSize = 384;
t.hmacStrength = 192;
t.padLength = 128;

t.prototype._digest = function (t) {
  return 'hex' === t ? require('./983').toHex32(this.h.slice(0, 12), 'big') : require('./983').split32(this.h.slice(0, 12), 'big');
};
