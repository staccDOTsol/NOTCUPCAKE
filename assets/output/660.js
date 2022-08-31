var module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var l = P(n);
    if (l && l.has(t)) return l.get(t);
    var u = {},
      o = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var f in t)
      if ('default' !== f && Object.prototype.hasOwnProperty.call(t, f)) {
        var c = o ? Object.getOwnPropertyDescriptor(t, f) : null;
        if (c && (c.get || c.set)) Object.defineProperty(u, f, c);
        else u[f] = t[f];
      }

    u.default = t;
    if (l) l.set(t, u);
    return u;
  })(require('react')),
  module589 = require('@babel/runtime/helpers/interopRequireDefault')(require('./589')),
  module661 = require('@babel/runtime/helpers/interopRequireDefault')(require('./661')),
  module662 = require('@babel/runtime/helpers/interopRequireDefault')(require('./662')),
  module664 = require('@babel/runtime/helpers/interopRequireDefault')(require('./664')),
  module665 = require('@babel/runtime/helpers/interopRequireDefault')(require('./665')),
  module666 = require('@babel/runtime/helpers/interopRequireDefault')(require('./666')),
  module668 = require('@babel/runtime/helpers/interopRequireDefault')(require('./668')),
  O = ['theme', 'linking', 'fallback', 'documentTitle', 'onReady'];

function P(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    l = new WeakMap();
  return (P = function (t) {
    return t ? l : n;
  })(t);
}

globals.REACT_NAVIGATION_DEVTOOLS = new WeakMap();
var module591 = React.forwardRef(function (P, module591) {
  var y = P.theme,
    h = undefined === y ? module661.default : y,
    E = P.linking,
    _ = P.fallback,
    k = undefined === _ ? null : _,
    A = P.documentTitle,
    F = P.onReady,
    T = module105.default(P, O),
    j = !!E && false !== E.enabled;
  if (null != E && E.config) require('./591').validatePathConfig(E.config);
  var w = React.useRef(null);
  module664.default(w);
  module665.default(w, A);
  var M = module666.default(
    w,
    module29.default(
      {
        independent: T.independent,
        enabled: j,
        prefixes: [],
      },
      E
    )
  ).getInitialState;
  React.useEffect(function () {
    if (w.current)
      REACT_NAVIGATION_DEVTOOLS.set(w.current, {
        get linking() {
          var t, l, u, o;
          return module29.default({}, E, {
            enabled: j,
            prefixes: null != (t = null == E ? undefined : E.prefixes) ? t : [],
            getStateFromPath: null != (l = null == E ? undefined : E.getStateFromPath) ? l : require('./591').getStateFromPath,
            getPathFromState: null != (u = null == E ? undefined : E.getPathFromState) ? u : require('./591').getPathFromState,
            getActionFromState: null != (o = null == E ? undefined : E.getActionFromState) ? o : require('./591').getActionFromState,
          });
        },
      });
  });
  var R = module668.default(M),
    I = module23.default(R, 2),
    N = I[0],
    C = I[1];
  React.useImperativeHandle(module591, function () {
    return w.current;
  });
  var D = React.useMemo(
      function () {
        return {
          options: E,
        };
      },
      [E]
    ),
    V = null != T.initialState || !j || N,
    W = React.useRef(F);
  React.useEffect(function () {
    W.current = F;
  });
  React.useEffect(
    function () {
      if (V) null == W.current || W.current();
    },
    [V]
  );
  return V
    ? React.createElement(
        module589.default.Provider,
        {
          value: D,
        },
        React.createElement(
          module662.default,
          {
            value: h,
          },
          React.createElement(
            require('./591').BaseNavigationContainer,
            module29.default({}, T, {
              initialState: null == T.initialState ? C : T.initialState,
              ref: w,
            })
          )
        )
      )
    : k;
});
exports.default = module591;
