var module144 = require('@babel/runtime/helpers/interopRequireDefault')(require('./144')),
  l = 0;

function u(u) {
  var o = module144.default(u);

  if (null == o) {
    console.error('Invalid value in color array:', u);
    return l;
  } else return o;
}

module.exports = function (n) {
  return null == n ? null : n.map(u);
};
