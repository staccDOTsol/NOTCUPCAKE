module.exports = function (t, o) {
  if (null == t) return {};

  var n,
    l,
    module106 = require('./106')(t, o);

  if (Object.getOwnPropertySymbols) {
    var s = Object.getOwnPropertySymbols(t);

    for (l = 0; l < s.length; l++) {
      n = s[l];
      if (!(o.indexOf(n) >= 0)) Object.prototype.propertyIsEnumerable.call(t, n) && (module106[n] = t[n]);
    }
  }

  return module106;
};

module.exports.__esModule = true;
module.exports.default = module.exports;
