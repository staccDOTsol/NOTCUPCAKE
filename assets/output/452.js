var _ = '__lodash_hash_undefined__';

module.exports = function (s, t) {
  var h = this.__data__;
  this.size += this.has(s) ? 0 : 1;
  h[s] = require('./448') && undefined === t ? _ : t;
  return this;
};
