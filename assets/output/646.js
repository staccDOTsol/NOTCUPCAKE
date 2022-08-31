exports.default = function (f) {
  var l = f.screen,
    s = f.route,
    p = f.navigation,
    v = f.routeState,
    y = f.getState,
    k = f.setState,
    b = f.options,
    O = f.clearOptions,
    j = React.useRef(),
    C = React.useCallback(function () {
      return j.current;
    }, []),
    P = module606.default({
      key: s.key,
      options: b,
      navigation: p,
    }).addOptionsGetter,
    E = React.useCallback(function (t) {
      j.current = t;
    }, []),
    M = React.useCallback(
      function () {
        var t = y(),
          n = t.routes.find(function (t) {
            return t.key === s.key;
          });
        return n ? n.state : undefined;
      },
      [y, s.key]
    ),
    _ = React.useCallback(
      function (n) {
        var r = y();
        k(
          module29.default({}, r, {
            routes: r.routes.map(function (r) {
              return r.key === s.key
                ? module29.default({}, r, {
                    state: n,
                  })
                : r;
            }),
          })
        );
      },
      [y, s.key, k]
    ),
    h = React.useRef(true);

  React.useEffect(function () {
    h.current = false;
  });
  React.useEffect(function () {
    return O;
  }, []);
  var w = React.useCallback(function () {
      return h.current;
    }, []),
    S = React.useMemo(
      function () {
        return {
          state: v,
          getState: M,
          setState: _,
          getKey: C,
          setKey: E,
          getIsInitial: w,
          addOptionsGetter: P,
        };
      },
      [v, M, _, C, E, w, P]
    ),
    W = l.getComponent ? l.getComponent() : l.component;
  return React.createElement(
    module601.default.Provider,
    {
      value: S,
    },
    React.createElement(
      module595.default,
      null,
      React.createElement(
        module647.default,
        {
          name: l.name,
          render: W || l.children,
          navigation: p,
          route: s,
        },
        undefined !== W
          ? React.createElement(W, {
              navigation: p,
              route: s,
            })
          : undefined !== l.children
          ? l.children({
              navigation: p,
              route: s,
            })
          : null
      )
    )
  );
};

var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var r = f(n);
    if (r && r.has(t)) return r.get(t);
    var u = {},
      o = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in t)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(t, c)) {
        var l = o ? Object.getOwnPropertyDescriptor(t, c) : null;
        if (l && (l.get || l.set)) Object.defineProperty(u, c, l);
        else u[c] = t[c];
      }

    u.default = t;
    if (r) r.set(t, u);
    return u;
  })(require('react')),
  module595 = require('@babel/runtime/helpers/interopRequireDefault')(require('./595')),
  module601 = require('@babel/runtime/helpers/interopRequireDefault')(require('./601')),
  module647 = require('@babel/runtime/helpers/interopRequireDefault')(require('./647')),
  module606 = require('@babel/runtime/helpers/interopRequireDefault')(require('./606'));

function f(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    r = new WeakMap();
  return (f = function (t) {
    return t ? r : n;
  })(t);
}
