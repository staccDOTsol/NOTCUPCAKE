var _ = '__lodash_hash_undefined__',
  t = Object.prototype.hasOwnProperty;

module.exports = function (n) {
  var o = this.__data__;

  if (require('./448')) {
    var h = o[n];
    return h === _ ? undefined : h;
  }

  return t.call(o, n) ? o[n] : undefined;
};
