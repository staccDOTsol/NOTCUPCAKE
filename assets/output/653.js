exports.default = function (t) {
  var n = t.getState,
    f = t.emitter,
    l = t.beforeRemoveListeners,
    c = React.useContext(module597.default).addKeyedListener,
    v = React.useContext(module600.default),
    y = null == v ? undefined : v.key;
  React.useEffect(
    function () {
      if (y)
        return null == c
          ? undefined
          : c('beforeRemove', y, function (t) {
              var o = n();
              return s(f, l, o.routes, [], t);
            });
    },
    [c, l, f, n, y]
  );
};

var module256 = require('@babel/runtime/helpers/interopRequireDefault')(require('./256')),
  module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = f(n);
    if (o && o.has(t)) return o.get(t);
    var u = {},
      i = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var l in t)
      if ('default' !== l && Object.prototype.hasOwnProperty.call(t, l)) {
        var c = i ? Object.getOwnPropertyDescriptor(t, l) : null;
        if (c && (c.get || c.set)) Object.defineProperty(u, l, c);
        else u[l] = t[l];
      }

    u.default = t;
    if (o) o.set(t, u);
    return u;
  })(require('react')),
  module597 = require('@babel/runtime/helpers/interopRequireDefault')(require('./597')),
  module600 = require('@babel/runtime/helpers/interopRequireDefault')(require('./600'));

function f(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (f = function (t) {
    return t ? o : n;
  })(t);
}

function l(t, n) {
  var o = ('undefined' != typeof Symbol && t[Symbol.iterator]) || t['@@iterator'];
  if (o) return (o = o.call(t)).next.bind(o);

  if (Array.isArray(t) || (o = c(t)) || (n && t && 'number' == typeof t.length)) {
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

function c(t, n) {
  if (t) {
    if ('string' == typeof t) return v(t, n);
    var o = Object.prototype.toString.call(t).slice(8, -1);
    if ('Object' === o && t.constructor) o = t.constructor.name;
    return 'Map' === o || 'Set' === o ? Array.from(t) : 'Arguments' === o || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(o) ? v(t, n) : undefined;
  }
}

function v(t, n) {
  if (null == n || n > t.length) n = t.length;

  for (var o = 0, u = new Array(n); o < n; o++) u[o] = t[o];

  return u;
}

var y = Symbol('VISITED_ROUTE_KEYS'),
  s = function (o, u, i, f, c) {
    for (
      var v,
        s,
        p = f.map(function (t) {
          return t.key;
        }),
        b = i
          .filter(function (t) {
            return !p.includes(t.key);
          })
          .reverse(),
        h = null != (v = c[y]) ? v : new Set(),
        O = module29.default({}, c, module256.default({}, y, h)),
        j = l(b);
      !(s = j()).done;

    ) {
      var k,
        P = s.value;

      if (!h.has(P.key)) {
        if (null == (k = u[P.key]) ? undefined : k.call(u, O)) return true;
        if (
          (h.add(P.key),
          o.emit({
            type: 'beforeRemove',
            target: P.key,
            data: {
              action: O,
            },
            canPreventDefault: true,
          }).defaultPrevented)
        )
          return true;
      }
    }

    return false;
  };

exports.shouldPreventRemove = s;
