var t = Object.prototype.hasOwnProperty;

module.exports = function (o) {
  var n = this.__data__;
  return require('./448') ? undefined !== n[o] : t.call(n, o);
};
