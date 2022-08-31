var n,
  module416 = (n = /[^.]+$/.exec((require('./416') && require('./416').keys && require('./416').keys.IE_PROTO) || '')) ? 'Symbol(src)_1.' + n : '';

module.exports = function (n) {
  return !!module416 && module416 in n;
};
