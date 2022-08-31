exports.asSol = function (t) {
  return (1e-9 * t).toFixed(4);
};

exports.prettyAddress = function (t) {
  return t.slice(0, 4) + '...' + t.slice(-4);
};

require('@babel/runtime/helpers/interopRequireDefault')(require('./76'));
