var t = exports;

function n(t) {
  return 1 === t.length ? '0' + t : t;
}

function o(t) {
  for (var o = '', u = 0; u < t.length; u++) o += n(t[u].toString(16));

  return o;
}

t.toArray = function (t, n) {
  if (Array.isArray(t)) return t.slice();
  if (!t) return [];
  var o = [];

  if ('string' != typeof t) {
    for (var u = 0; u < t.length; u++) o[u] = 0 | t[u];

    return o;
  }

  if ('hex' === n) for ((t = t.replace(/[^a-z0-9]+/gi, '')).length % 2 != 0 && (t = '0' + t), u = 0; u < t.length; u += 2) o.push(parseInt(t[u] + t[u + 1], 16));
  else
    for (u = 0; u < t.length; u++) {
      var i = t.charCodeAt(u),
        f = i >> 8,
        h = 255 & i;
      if (f) o.push(f, h);
      else o.push(h);
    }
  return o;
};

t.zero2 = n;
t.toHex = o;

t.encode = function (t, n) {
  return 'hex' === n ? o(t) : t;
};
