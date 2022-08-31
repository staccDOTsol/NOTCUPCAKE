var t = 1 / 0,
  n = 9007199254740991,
  u = 1.7976931348623157e308,
  o = NaN,
  f = '[object Function]',
  c = '[object GeneratorFunction]',
  l = '[object Symbol]',
  p = /^\s+|\s+$/g,
  v = /^[-+]0x[0-9a-f]+$/i,
  y = /^0b[01]+$/i,
  b = /^0o[0-7]+$/i,
  s = /^(?:0|[1-9]\d*)$/,
  h = parseInt,
  j = Object.prototype.toString,
  $ = Math.ceil,
  x = Math.max;

function O(t, n, u) {
  var o = -1,
    f = t.length;
  if (n < 0) n = -n > f ? 0 : f + n;
  if ((u = u > f ? f : u) < 0) u += f;
  f = n > u ? 0 : (u - n) >>> 0;
  n >>>= 0;

  for (var c = Array(f); ++o < f; ) c[o] = t[o + n];

  return c;
}

function A(t, u) {
  return !!(u = null == u ? n : u) && ('number' == typeof t || s.test(t)) && t > -1 && t % 1 == 0 && t < u;
}

function F(t, n, u) {
  if (!G(u)) return false;
  var o = typeof n;
  return !!('number' == o ? N(u) && A(n, u.length) : 'string' == o && n in u) && M(u[n], t);
}

function M(t, n) {
  return t === n || (t != t && n != n);
}

function N(t) {
  return null != t && _(t.length) && !S(t);
}

function S(t) {
  var n = G(t) ? j.call(t) : '';
  return n == f || n == c;
}

function _(t) {
  return 'number' == typeof t && t > -1 && t % 1 == 0 && t <= n;
}

function G(t) {
  var n = typeof t;
  return !!t && ('object' == n || 'function' == n);
}

function I(t) {
  return !!t && 'object' == typeof t;
}

function k(t) {
  return 'symbol' == typeof t || (I(t) && j.call(t) == l);
}

function q(n) {
  if (n) return (n = z(n)) === t || n === -1 / 0 ? (n < 0 ? -1 : 1) * u : n == n ? n : 0;
  else return 0 === n ? n : 0;
}

function w(t) {
  var n = q(t),
    u = n % 1;
  return n == n ? (u ? n - u : n) : 0;
}

function z(t) {
  if ('number' == typeof t) return t;
  if (k(t)) return o;

  if (G(t)) {
    var n = 'function' == typeof t.valueOf ? t.valueOf() : t;
    t = G(n) ? n + '' : n;
  }

  if ('string' != typeof t) return 0 === t ? t : +t;
  t = t.replace(p, '');
  var u = y.test(t);
  return u || b.test(t) ? h(t.slice(2), u ? 2 : 8) : v.test(t) ? o : +t;
}

module.exports = function (t, n, u) {
  n = (u ? F(t, n, u) : undefined === n) ? 1 : x(w(n), 0);
  var o = t ? t.length : 0;
  if (!o || n < 1) return [];

  for (var f = 0, c = 0, l = Array($(o / n)); f < o; ) l[c++] = O(t, f, (f += n));

  return l;
};
