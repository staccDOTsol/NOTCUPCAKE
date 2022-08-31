var t,
  module953 =
    (t = require('./953')) && t.__esModule
      ? t
      : {
          default: t,
        };

var f = function (t) {
  if (!module953.default(t)) throw TypeError('Invalid UUID');
  return parseInt(t.substr(14, 1), 16);
};

exports.default = f;
