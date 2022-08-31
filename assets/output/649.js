exports.default = function (o) {
  var i = o.navigation,
    l = o.focusedListeners,
    f = React.useContext(module597.default).addListener,
    c = React.useCallback(
      function (t) {
        if (i.isFocused()) {
          for (var n, o = u(l); !(n = o()).done; ) {
            var f = n.value,
              c = f(t),
              s = c.handled,
              p = c.result;
            if (s)
              return {
                handled: s,
                result: p,
              };
          }

          return {
            handled: true,
            result: t(i),
          };
        }

        return {
          handled: false,
          result: null,
        };
      },
      [l, i]
    );
  React.useEffect(
    function () {
      return null == f ? undefined : f('focus', c);
    },
    [f, c]
  );
};

var React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var u = o(n);
    if (u && u.has(t)) return u.get(t);
    var i = {},
      l = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var f in t)
      if ('default' !== f && Object.prototype.hasOwnProperty.call(t, f)) {
        var c = l ? Object.getOwnPropertyDescriptor(t, f) : null;
        if (c && (c.get || c.set)) Object.defineProperty(i, f, c);
        else i[f] = t[f];
      }

    i.default = t;
    if (u) u.set(t, i);
    return i;
  })(require('react')),
  module597 = require('@babel/runtime/helpers/interopRequireDefault')(require('./597'));

function o(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    u = new WeakMap();
  return (o = function (t) {
    return t ? u : n;
  })(t);
}

function u(t, n) {
  var o = ('undefined' != typeof Symbol && t[Symbol.iterator]) || t['@@iterator'];
  if (o) return (o = o.call(t)).next.bind(o);

  if (Array.isArray(t) || (o = i(t)) || (n && t && 'number' == typeof t.length)) {
    if (o) t = o;
    var u = 0;
    return function () {
      return u >= t.length
        ? {
            done: true,
          }
        : {
            done: false,
            value: t[u++],
          };
    };
  }

  throw new TypeError('Invalid attempt to iterate non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.');
}

function i(t, n) {
  if (t) {
    if ('string' == typeof t) return l(t, n);
    var o = Object.prototype.toString.call(t).slice(8, -1);
    if ('Object' === o && t.constructor) o = t.constructor.name;
    return 'Map' === o || 'Set' === o ? Array.from(t) : 'Arguments' === o || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(o) ? l(t, n) : undefined;
  }
}

function l(t, n) {
  if (null == n || n > t.length) n = t.length;

  for (var o = 0, u = new Array(n); o < n; o++) u[o] = t[o];

  return u;
}
