exports.default = function (l) {
  React.useContext(module597.default).stackRef;
  var s = l.state,
    y = l.getState,
    p = l.navigation,
    k = l.setOptions,
    v = l.router,
    O = l.emitter,
    b = React.useMemo(
      function () {
        return {
          current: {},
        };
      },
      [y, p, k, v, O]
    ),
    module609 = module29.default({}, v.actionCreators, require('./609').CommonActions);
  b.current = s.routes.reduce(function (o, f) {
    var l = b.current[f.key];
    if (l) o[f.key] = l;
    else {
      p.emit;

      var s = module105.default(p, c),
        v = function (t) {
          var n = 'function' == typeof t ? t(y()) : t;
          if (null != n)
            p.dispatch(
              module29.default(
                {
                  source: f.key,
                },
                n
              )
            );
        },
        P = function (t) {
          try {
            t();
          } finally {
          }
        },
        w = Object.keys(module609).reduce(function (t, n) {
          t[n] = function (...args) {
            return P(function () {
              return v(module609[n].apply(module609, args));
            });
          };

          return t;
        }, {});

      o[f.key] = module29.default({}, s, w, O.create(f.key), {
        dispatch: function (t) {
          return P(function () {
            return v(t);
          });
        },
        getParent: function (t) {
          return undefined !== t && t === s.getId() ? o[f.key] : s.getParent(t);
        },
        setOptions: function (n) {
          return k(function (o) {
            return module29.default({}, o, module256.default({}, f.key, module29.default({}, o[f.key], n)));
          });
        },
        isFocused: function () {
          var t = y();
          return t.routes[t.index].key === f.key && (!p || p.isFocused());
        },
      });
    }
    return o;
  }, {});
  return b.current;
};

var module256 = require('@babel/runtime/helpers/interopRequireDefault')(require('./256')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var u = l(n);
    if (u && u.has(t)) return u.get(t);
    var o = {},
      f = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in t)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(t, c)) {
        var s = f ? Object.getOwnPropertyDescriptor(t, c) : null;
        if (s && (s.get || s.set)) Object.defineProperty(o, c, s);
        else o[c] = t[c];
      }

    o.default = t;
    if (u) u.set(t, o);
    return o;
  })(require('react')),
  module597 = require('@babel/runtime/helpers/interopRequireDefault')(require('./597')),
  c = ['emit'];

function l(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    u = new WeakMap();
  return (l = function (t) {
    return t ? u : n;
  })(t);
}
