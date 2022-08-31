module.exports = function (t, n) {
  var _ = t.__data__;
  return require('./455')(n) ? _['string' == typeof n ? 'string' : 'hash'] : _.map;
};
