var t = 1,
  n = Object.prototype.hasOwnProperty;

module.exports = function (o, c, f, u, s, v) {
  var l = f & t,
    module475 = require('./475')(o),
    y = module475.length;

  if (y != require('./475')(c).length && !l) return false;

  for (var h = y; h--; ) {
    var b = module475[h];
    if (!(l ? b in c : n.call(c, b))) return false;
  }

  var O = v.get(o),
    _ = v.get(c);

  if (O && _) return O == c && _ == o;
  var j = true;
  v.set(o, c);
  v.set(c, o);

  for (var k = l; ++h < y; ) {
    var w = o[(b = module475[h])],
      x = c[b];
    if (u) var P = l ? u(x, w, b, c, o, v) : u(w, x, b, o, c, v);

    if (!(undefined === P ? w === x || s(w, x, f, u, v) : P)) {
      j = false;
      break;
    }

    if (!k) k = 'constructor' == b;
  }

  if (j && !k) {
    var q = o.constructor,
      z = c.constructor;
    if (q != z && 'constructor' in o && 'constructor' in c && !('function' == typeof q && q instanceof q && 'function' == typeof z && z instanceof z)) j = false;
  }

  v.delete(o);
  v.delete(c);
  return j;
};
