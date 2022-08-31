exports.default = function (n) {
  return n.reduce(function (n, u) {
    var o = module23.default(u, 2),
      f = o[0],
      c = o[1];
    if (n.hasOwnProperty(f)) throw new Error("A value for key '" + f + "' already exists in the object.");
    n[f] = c;
    return n;
  }, {});
};

var module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23'));
