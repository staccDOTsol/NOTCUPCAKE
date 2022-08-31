module.exports = function (s, t) {
  var module454 = require('./454')(this, s),
    h = module454.size;

  module454.set(s, t);
  this.size += module454.size == h ? 0 : 1;
  return this;
};
