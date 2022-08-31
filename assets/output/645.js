exports.default = function (y) {
  var b = y.state,
    k = y.screens,
    P = y.navigation,
    S = y.screenOptions,
    j = y.defaultScreenOptions,
    h = y.onAction,
    w = y.getState,
    M = y.setState,
    _ = y.addListener,
    E = y.addKeyedListener,
    A = y.onRouteFocus,
    D = y.router,
    L = y.emitter,
    R = React.useState({}),
    C = module23.default(R, 2),
    W = C[0],
    F = C[1],
    K = React.useContext(module597.default),
    x = K.onDispatchAction,
    B = K.onOptionsChange,
    N = K.stackRef,
    T = React.useMemo(
      function () {
        return {
          navigation: P,
          onAction: h,
          addListener: _,
          addKeyedListener: E,
          onRouteFocus: A,
          onDispatchAction: x,
          onOptionsChange: B,
          stackRef: N,
        };
      },
      [P, h, _, E, A, x, B, N]
    ),
    q = module648.default({
      state: b,
      getState: w,
      navigation: P,
      setOptions: F,
      router: D,
      emitter: L,
    });
  return module624.default(b.routes).reduce(function (i, p, v) {
    var y = k[p.name],
      P = y.props,
      h = q[p.key],
      _ = [S].concat(module35.default(y.options ? y.options.filter(Boolean) : []), [P.options, W[p.key]]),
      E = _.reduce(function (t, o) {
        return module29.default(
          t,
          'function' != typeof o
            ? o
            : o({
                route: p,
                navigation: h,
              })
        );
      }, {}),
      A = module29.default(
        {},
        'function' == typeof j
          ? j({
              route: p,
              navigation: h,
              options: E,
            })
          : j,
        E
      ),
      D = function () {
        return F(function (n) {
          if (p.key in n) {
            var o = p.key,
              i = module105.default(n, [o].map(O));
            return i;
          }

          return n;
        });
      };

    i[p.key] = {
      route: p,
      navigation: h,
      render: function () {
        return React.createElement(
          module597.default.Provider,
          {
            key: p.key,
            value: T,
          },
          React.createElement(
            module599.default.Provider,
            {
              value: h,
            },
            React.createElement(
              module600.default.Provider,
              {
                value: p,
              },
              React.createElement(module646.default, {
                navigation: h,
                route: p,
                screen: P,
                routeState: b.routes[v].state,
                getState: w,
                setState: M,
                options: A,
                clearOptions: D,
              })
            )
          )
        );
      },
      options: A,
    };
    return i;
  }, {});
};

var module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module35 = require('@babel/runtime/helpers/interopRequireDefault')(require('./35')),
  module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = y(n);
    if (o && o.has(t)) return o.get(t);
    var i = {},
      u = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var f in t)
      if ('default' !== f && Object.prototype.hasOwnProperty.call(t, f)) {
        var c = u ? Object.getOwnPropertyDescriptor(t, f) : null;
        if (c && (c.get || c.set)) Object.defineProperty(i, f, c);
        else i[f] = t[f];
      }

    i.default = t;
    if (o) o.set(t, i);
    return i;
  })(require('react')),
  module597 = require('@babel/runtime/helpers/interopRequireDefault')(require('./597')),
  module599 = require('@babel/runtime/helpers/interopRequireDefault')(require('./599')),
  module600 = require('@babel/runtime/helpers/interopRequireDefault')(require('./600')),
  module646 = require('@babel/runtime/helpers/interopRequireDefault')(require('./646')),
  module648 = require('@babel/runtime/helpers/interopRequireDefault')(require('./648')),
  module624 = require('@babel/runtime/helpers/interopRequireDefault')(require('./624'));

function y(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (y = function (t) {
    return t ? o : n;
  })(t);
}

function O(t) {
  var n = b(t, 'string');
  return 'symbol' == typeof n ? n : String(n);
}

function b(t, n) {
  if ('object' != typeof t || null === t) return t;
  var o = t[Symbol.toPrimitive];

  if (undefined !== o) {
    var i = o.call(t, n || 'default');
    if ('object' != typeof i) return i;
    throw new TypeError('@@toPrimitive must return a primitive value.');
  }

  return ('string' === n ? String : Number)(t);
}
