var t = 1,
  n = 2;

module.exports = function (f, u, o, v, l, s) {
  var c = o & t,
    b = f.length,
    h = u.length;
  if (b != h && !(c && h > b)) return false;
  var k = s.get(f),
    p = s.get(u);
  if (k && p) return k == u && p == f;

  var _ = -1,
    w = true,
    module465 = o & n ? new (require('./465'))() : undefined;

  for (s.set(f, u), s.set(u, f); ++_ < b; ) {
    var j = f[_],
      q = u[_];
    if (v) var y = c ? v(q, j, _, u, f, s) : v(j, q, _, f, u, s);

    if (undefined !== y) {
      if (y) continue;
      w = false;
      break;
    }

    if (module465) {
      if (
        !require('./468')(u, function (t, n) {
          if (!require('./469')(module465, n) && (j === t || l(j, t, o, v, s))) return module465.push(n);
        })
      ) {
        w = false;
        break;
      }
    } else if (j !== q && !l(j, q, o, v, s)) {
      w = false;
      break;
    }
  }

  s.delete(f);
  s.delete(u);
  return w;
};
