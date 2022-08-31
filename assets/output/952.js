var t,
  module953 =
    (t = require('./953')) && t.__esModule
      ? t
      : {
          default: t,
        };

for (var o = [], u = 0; u < 256; ++u) o.push((u + 256).toString(16).substr(1));

var f = function (t) {
  var u = arguments.length > 1 && undefined !== arguments[1] ? arguments[1] : 0,
    f = (
      o[t[u + 0]] +
      o[t[u + 1]] +
      o[t[u + 2]] +
      o[t[u + 3]] +
      '-' +
      o[t[u + 4]] +
      o[t[u + 5]] +
      '-' +
      o[t[u + 6]] +
      o[t[u + 7]] +
      '-' +
      o[t[u + 8]] +
      o[t[u + 9]] +
      '-' +
      o[t[u + 10]] +
      o[t[u + 11]] +
      o[t[u + 12]] +
      o[t[u + 13]] +
      o[t[u + 14]] +
      o[t[u + 15]]
    ).toLowerCase();
  if (!module953.default(f)) throw TypeError('Stringified UUID is invalid');
  return f;
};

exports.default = f;
