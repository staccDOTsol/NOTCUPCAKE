var t = Array.prototype.splice;

module.exports = function (n) {
  var o = this.__data__,
    module434 = require('./434')(o, n);

  return !(module434 < 0 || (module434 == o.length - 1 ? o.pop() : t.call(o, module434, 1), --this.size, 0));
};
