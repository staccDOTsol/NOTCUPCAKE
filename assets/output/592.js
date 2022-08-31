require('@babel/runtime/helpers/interopRequireDefault')(require('./593'));

require('@babel/runtime/helpers/interopRequireDefault')(require('./594'));

var module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };

    var u = _(n);

    if (u && u.has(t)) return u.get(t);
    var o = {},
      l = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in t)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(t, c)) {
        var s = l ? Object.getOwnPropertyDescriptor(t, c) : null;
        if (s && (s.get || s.set)) Object.defineProperty(o, c, s);
        else o[c] = t[c];
      }

    o.default = t;
    if (u) u.set(t, o);
    return o;
  })(require('react')),
  module595 = require('@babel/runtime/helpers/interopRequireDefault')(require('./595')),
  module596 = require('@babel/runtime/helpers/interopRequireDefault')(require('./596')),
  module597 = require('@babel/runtime/helpers/interopRequireDefault')(require('./597')),
  module598 = require('@babel/runtime/helpers/interopRequireDefault')(require('./598')),
  module599 = require('@babel/runtime/helpers/interopRequireDefault')(require('./599')),
  module600 = require('@babel/runtime/helpers/interopRequireDefault')(require('./600')),
  module601 = require('@babel/runtime/helpers/interopRequireDefault')(require('./601')),
  module602 = require('@babel/runtime/helpers/interopRequireDefault')(require('./602')),
  module603 = require('@babel/runtime/helpers/interopRequireDefault')(require('./603')),
  module604 = require('@babel/runtime/helpers/interopRequireDefault')(require('./604')),
  module605 = require('@babel/runtime/helpers/interopRequireDefault')(require('./605')),
  module606 = require('@babel/runtime/helpers/interopRequireDefault')(require('./606')),
  module607 = require('@babel/runtime/helpers/interopRequireDefault')(require('./607')),
  E = ['key', 'routeNames'];

function _(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    u = new WeakMap();
  return (_ = function (t) {
    return t ? u : n;
  })(t);
}

var P = function t(o) {
    if (undefined !== o) {
      var l = module105.default(o, E);
      return module29.default({}, l, {
        stale: true,
        routes: o.routes.map(function (u) {
          return undefined === u.state
            ? u
            : module29.default({}, u, {
                state: t(u.state),
              });
        }),
      });
    }
  },
  w = React.forwardRef(function (u, E) {
    var _ = u.initialState,
      w = u.onStateChange,
      S = u.onUnhandledAction,
      I = u.independent,
      M = u.children;
    if (!React.useContext(module601.default).isDefault && !I)
      throw new Error(
        "Looks like you have nested a 'NavigationContainer' inside another. Normally you need only one container at the root of the app, so this was probably an error. If this was intentional, pass 'independent={true}' explicitly. Note that this will make the child navigators disconnected from the parent and you won't be able to navigate between them."
      );
    var N = module607.default(function () {
        return P(null == _ ? undefined : _);
      }),
      j = module23.default(N, 5),
      A = j[0],
      L = j[1],
      D = j[2],
      G = j[3],
      K = j[4],
      T = React.useRef(true),
      U = React.useRef(),
      x = React.useCallback(function () {
        return U.current;
      }, []),
      W = React.useCallback(function (t) {
        U.current = t;
      }, []),
      B = module603.default(),
      Z = B.listeners,
      F = B.addListener,
      H = module605.default(),
      q = H.keyedListeners,
      z = H.addKeyedListener,
      module609 = React.useCallback(
        function (t) {
          if (null == Z.focus[0]) console.error(require('./608').NOT_INITIALIZED_ERROR);
          else
            Z.focus[0](function (n) {
              return n.dispatch(t);
            });
        },
        [Z.focus]
      ),
      Q = React.useCallback(
        function () {
          if (null == Z.focus[0]) return false;
          var t = Z.focus[0](function (t) {
              return t.canGoBack();
            }),
            n = t.result;
          return !!t.handled && n;
        },
        [Z.focus]
      ),
      module609 = React.useCallback(
        function (t) {
          var u,
            o = null != (u = null == t ? undefined : t.key) ? u : null == q.getState.root ? undefined : q.getState.root().key;
          if (null == o) console.error(require('./608').NOT_INITIALIZED_ERROR);
          else
            Z.focus[0](function (u) {
              return u.dispatch(
                module29.default({}, require('./609').CommonActions.reset(t), {
                  target: o,
                })
              );
            });
        },
        [q.getState, Z.focus]
      ),
      X = React.useCallback(
        function () {
          return null == q.getState.root ? undefined : q.getState.root();
        },
        [q.getState]
      ),
      Y = React.useCallback(
        function () {
          var t = X();
          if (null != t) return module596.default(t);
        },
        [X]
      ),
      $ = module604.default(),
      ee = module606.default({}),
      te = ee.addOptionsGetter,
      ne = ee.getCurrentOptions,
      module609 = React.useMemo(
        function () {
          return module29.default(
            {},
            Object.keys(require('./609').CommonActions).reduce(function (t, n) {
              t[n] = function () {
                return module609(require('./609').CommonActions[n].apply(require('./609').CommonActions, arguments));
              };

              return t;
            }, {}),
            $.create('root'),
            {
              dispatch: module609,
              resetRoot: module609,
              isFocused: function () {
                return true;
              },
              canGoBack: Q,
              getParent: function () {},
              getState: function () {
                return ve.current;
              },
              getRootState: X,
              getCurrentRoute: Y,
              getCurrentOptions: ne,
              isReady: function () {
                return null != Z.focus[0];
              },
            }
          );
        },
        [Q, module609, $, ne, Y, X, Z.focus, module609]
      );
    React.useImperativeHandle(
      E,
      function () {
        return module609;
      },
      [module609]
    );
    var ue = React.useCallback(
        function (t, n) {
          $.emit({
            type: '__unsafe_action__',
            data: {
              action: t,
              noop: n,
              stack: ie.current,
            },
          });
        },
        [$]
      ),
      ae = React.useRef(),
      oe = React.useCallback(
        function (t) {
          if (ae.current !== t) {
            ae.current = t;
            $.emit({
              type: 'options',
              data: {
                options: t,
              },
            });
          }
        },
        [$]
      ),
      ie = React.useRef(),
      le = React.useMemo(
        function () {
          return {
            addListener: F,
            addKeyedListener: z,
            onDispatchAction: ue,
            onOptionsChange: oe,
            stackRef: ie,
          };
        },
        [F, z, ue, oe]
      ),
      ce = React.useMemo(
        function () {
          return {
            scheduleUpdate: G,
            flushUpdates: K,
          };
        },
        [G, K]
      ),
      se = React.useRef(true),
      fe = React.useCallback(function () {
        return se.current;
      }, []),
      de = React.useMemo(
        function () {
          return {
            state: A,
            getState: L,
            setState: D,
            getKey: x,
            setKey: W,
            getIsInitial: fe,
            addOptionsGetter: te,
          };
        },
        [A, L, D, x, W, fe, te]
      ),
      pe = React.useRef(w),
      ve = React.useRef(A);
    React.useEffect(function () {
      se.current = false;
      pe.current = w;
      ve.current = A;
    });
    React.useEffect(
      function () {
        var t = X();
        $.emit({
          type: 'state',
          data: {
            state: A,
          },
        });
        if (!T.current && pe.current) pe.current(t);
        T.current = false;
      },
      [X, $, A]
    );
    var ye = React.useCallback(function (t) {}, []),
      module617 = React.createElement(
        module598.default.Provider,
        {
          value: module609,
        },
        React.createElement(
          require('./617').ScheduleUpdateContext.Provider,
          {
            value: ce,
          },
          React.createElement(
            module597.default.Provider,
            {
              value: le,
            },
            React.createElement(
              module601.default.Provider,
              {
                value: de,
              },
              React.createElement(
                module602.default.Provider,
                {
                  value: null != S ? S : ye,
                },
                React.createElement(module595.default, null, M)
              )
            )
          )
        )
      );
    if (I)
      module617 = React.createElement(
        module600.default.Provider,
        {
          value: undefined,
        },
        React.createElement(
          module599.default.Provider,
          {
            value: undefined,
          },
          module617
        )
      );
    return module617;
  });

exports.default = w;
