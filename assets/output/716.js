exports.default = function (n, u, f) {
  if ('string' == typeof n) return module681.default(n).isLight() ? f : u;
  return u;
};

var module681 = require('@babel/runtime/helpers/interopRequireDefault')(require('./681'));
