exports.default = function (t, n) {
  for (var o = 0, u = ['validAttributes', 'bubblingEventTypes', 'directEventTypes']; o < u.length; o++) {
    var s = u[o],
      c = Object.keys(f(t[s], n[s]));

    if (c.length > 0) {
      var l,
        v = null != (l = n.uiViewClassName) ? l : t.uiViewClassName;
      console.error("'" + v + "' has a view config that does not match native. '" + s + "' is missing: " + c.join(', '));
    }
  }
};

exports.getConfigWithoutViewProps = function (n, f) {
  if (!n[f]) return {};
  return Object.keys(n[f])
    .filter(function (n) {
      return !module165.default[f][n];
    })
    .reduce(function (t, o) {
      t[o] = n[f][o];
      return t;
    }, {});
};

exports.lefthandObjectDiff = f;

exports.stringifyViewConfig = function (t) {
  return JSON.stringify(
    t,
    function (t, n) {
      return 'function' == typeof n ? '\u0192 ' + n.name : n;
    },
    2
  );
};

var module165 = require('@babel/runtime/helpers/interopRequireDefault')(require('./165')),
  n = ['transform', 'hitSlop'];

function f(t, o) {
  var u = {};

  function s(t, n, o) {
    if (typeof t == typeof n || null == t) {
      if ('object' != typeof t) t === n || (u[o] = n);
      else {
        var s = f(t, n);
        if (Object.keys(s).length > 1) u[o] = s;
      }
    } else u[o] = n;
  }

  for (var c in t) n.includes(c) || (o ? t.hasOwnProperty(c) && s(t[c], o[c], c) : (u[c] = {}));

  return u;
}
