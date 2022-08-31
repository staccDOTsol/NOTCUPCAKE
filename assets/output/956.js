exports.default = function (u, i, l) {
  function s(u, f, c, s) {
    if (('string' == typeof u && (u = o(u)), 'string' == typeof f && (f = module957.default(f)), 16 !== f.length))
      throw TypeError('Namespace must be array-like (16 iterable integer values, 0-255)');
    var b = new Uint8Array(16 + u.length);

    if ((b.set(f), b.set(u, f.length), ((b = l(b))[6] = (15 & b[6]) | i), (b[8] = (63 & b[8]) | 128), c)) {
      s = s || 0;

      for (var v = 0; v < 16; ++v) c[s + v] = b[v];

      return c;
    }

    return module952.default(b);
  }

  try {
    s.name = u;
  } catch (t) {}

  s.DNS = f;
  s.URL = c;
  return s;
};

var module952 = require('./952'),
  module957 = require('./957');

function o(t) {
  t = unescape(encodeURIComponent(t));

  for (var n = [], u = 0; u < t.length; ++u) n.push(t.charCodeAt(u));

  return n;
}

var f = '6ba7b810-9dad-11d1-80b4-00c04fd430c8';
exports.DNS = f;
var c = '6ba7b811-9dad-11d1-80b4-00c04fd430c8';
exports.URL = c;
