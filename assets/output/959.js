var module951 = require('./951'),
  module952 = require('./952');

var f = function (n, f, o) {
  var l = (n = n || {}).random || (n.rng || module951.default)();

  if (((l[6] = (15 & l[6]) | 64), (l[8] = (63 & l[8]) | 128), f)) {
    o = o || 0;

    for (var i = 0; i < 16; ++i) f[o + i] = l[i];

    return f;
  }

  return module952.default(l);
};

exports.default = f;
