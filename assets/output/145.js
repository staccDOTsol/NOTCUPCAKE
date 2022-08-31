var module146 = require('@babel/runtime/helpers/interopRequireDefault')(require('./146'));

module.exports = function (n) {
  if ('object' == typeof n && null != n && null != require('./147').normalizeColorObject(n)) return n;
  if ('string' == typeof n || 'number' == typeof n) return module146.default(n);
};
