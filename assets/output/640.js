exports.default = function (s, y) {
  var G = module656.default(),
    A = React.useContext(module600.default),
    _ = y.children,
    F = y.screenListeners,
    x = module105.default(y, E),
    J = React.useRef(
      s(
        module29.default(
          {},
          x,
          null != A && A.params && null == A.params.state && false !== A.params.initial && 'string' == typeof A.params.screen
            ? {
                initialRouteName: A.params.screen,
              }
            : null
        )
      )
    ).current,
    V = M(_),
    W = V.reduce(function (e, t) {
      if (t.props.name in e) throw new Error("A navigator cannot contain multiple 'Screen' components with the same name (found duplicate screen named '" + t.props.name + "')");
      e[t.props.name] = t;
      return e;
    }, {}),
    D = V.map(function (e) {
      return e.props.name;
    }),
    T = D.reduce(function (e, t) {
      e[t] = W[t].keys
        .map(function (e) {
          return null != e ? e : '';
        })
        .join(':');
      return e;
    }, {}),
    H = D.reduce(function (e, t) {
      var n = W[t].props.initialParams;
      e[t] = n;
      return e;
    }, {}),
    q = D.reduce(function (e, o) {
      return module29.default(e, module256.default({}, o, W[o].props.getId));
    }, {});
  if (!D.length) throw new Error("Couldn't find any screens for the navigator. Have you defined any screens as its children?");
  var z = React.useCallback(
      function (e) {
        return undefined === e.type || e.type === J.type;
      },
      [J.type]
    ),
    B = React.useCallback(
      function (e) {
        return undefined !== e && false === e.stale && z(e);
      },
      [z]
    ),
    Q = React.useContext(module601.default),
    U = Q.state,
    X = Q.getState,
    Y = Q.setState,
    Z = Q.setKey,
    $ = Q.getKey,
    ee = Q.getIsInitial,
    te = React.useRef(false),
    ne = React.useCallback(
      function () {
        Y(undefined);
        te.current = true;
      },
      [Y]
    ),
    re = React.useCallback(
      function (e) {
        if (!te.current) Y(e);
      },
      [Y]
    ),
    ae = React.useMemo(
      function () {
        var e,
          t,
          o,
          i = D.reduce(function (e, t) {
            var o,
              i,
              u,
              s = W[t].props.initialParams,
              l =
                null == (null == A ? undefined : null == (o = A.params) ? undefined : o.state) &&
                false !== (null == A ? undefined : null == (i = A.params) ? undefined : i.initial) &&
                (null == A ? undefined : null == (u = A.params) ? undefined : u.screen) === t
                  ? A.params.params
                  : undefined;
            e[t] = undefined !== s || undefined !== l ? module29.default({}, s, l) : undefined;
            return e;
          }, {});
        return (undefined !== U && z(U)) || null != (null == A ? undefined : null == (e = A.params) ? undefined : e.state)
          ? [
              J.getRehydratedState(null != (t = null == A ? undefined : null == (o = A.params) ? undefined : o.state) ? t : U, {
                routeNames: D,
                routeParamList: i,
                routeGetIdList: q,
              }),
              false,
            ]
          : [
              J.getInitialState({
                routeNames: D,
                routeParamList: i,
                routeGetIdList: q,
              }),
              true,
            ];
      },
      [U, J, z]
    ),
    oe = module23.default(ae, 2),
    ie = oe[0],
    ue = oe[1],
    se = React.useRef(T);
  React.useEffect(function () {
    se.current = T;
  });
  var le = se.current,
    pe = B(U) ? U : ie,
    fe = pe;
  if (!(module641.default(pe.routeNames, D) && module642.default(T, le)))
    fe = J.getStateForRouteNamesChange(pe, {
      routeNames: D,
      routeParamList: H,
      routeGetIdList: q,
      routeKeyChanges: Object.keys(T).filter(function (e) {
        return le.hasOwnProperty(e) && T[e] !== le[e];
      }),
    });
  var de = React.useRef(null == A ? undefined : A.params);

  if (
    (React.useEffect(
      function () {
        de.current = null == A ? undefined : A.params;
      },
      [null == A ? undefined : A.params]
    ),
    null != A && A.params)
  ) {
    var ce,
      me = de.current;
    if ('object' == typeof A.params.state && null != A.params.state && A.params !== me) ce = require('./609').CommonActions.reset(A.params.state);
    else if ('string' == typeof A.params.screen && ((false === A.params.initial && ue) || A.params !== me))
      ce = require('./609').CommonActions.navigate({
        name: A.params.screen,
        params: A.params.params,
        path: A.params.path,
      });
    var ve = ce
      ? J.getStateForAction(fe, ce, {
          routeNames: D,
          routeParamList: H,
          routeGetIdList: q,
        })
      : null;
    fe =
      null !== ve
        ? J.getRehydratedState(ve, {
            routeNames: D,
            routeParamList: H,
            routeGetIdList: q,
          })
        : fe;
  }

  var ye = pe !== fe;
  module617.default(function () {
    if (ye) re(fe);
  });
  pe = fe;
  React.useEffect(function () {
    Z(G);
    if (!ee()) re(fe);
    return function () {
      setTimeout(function () {
        if (undefined !== X() && $() === G) ne();
      }, 0);
    };
  }, []);
  var ge = React.useRef();
  ge.current = ie;
  var he = React.useCallback(
      function () {
        var e = X();
        return B(e) ? e : ge.current;
      },
      [X, B]
    ),
    Se = module604.default(function (e) {
      var t,
        n,
        o,
        u = [];

      if (e.target) {
        n = pe.routes.find(function (t) {
          return t.key === e.target;
        });
        if (null != (o = n) && o.name) u.push(n.name);
      } else {
        n = pe.routes[pe.index];
        u.push.apply(
          u,
          module35.default(
            Object.keys(W).filter(function (e) {
              var t;
              return (null == (t = n) ? undefined : t.name) === e;
            })
          )
        );
      }

      if (null != n) {
        var s = Ke[n.key].navigation,
          l = (t = []).concat
            .apply(
              t,
              module35.default(
                [F]
                  .concat(
                    module35.default(
                      u.map(function (e) {
                        var t = W[e].props.listeners;
                        return t;
                      })
                    )
                  )
                  .map(function (t) {
                    var o =
                      'function' == typeof t
                        ? t({
                            route: n,
                            navigation: s,
                          })
                        : t;
                    return o
                      ? Object.keys(o)
                          .filter(function (t) {
                            return t === e.type;
                          })
                          .map(function (e) {
                            return null == o ? undefined : o[e];
                          })
                      : undefined;
                  })
              )
            )
            .filter(function (e, t, n) {
              return e && n.lastIndexOf(e) === t;
            });
        l.forEach(function (t) {
          return null == t ? undefined : t(e);
        });
      }
    });
  module650.default({
    state: pe,
    emitter: Se,
  });
  React.useEffect(
    function () {
      Se.emit({
        type: 'state',
        data: {
          state: pe,
        },
      });
    },
    [Se, pe]
  );
  var Oe = module603.default(),
    Le = Oe.listeners,
    be = Oe.addListener,
    ke = module605.default(),
    we = ke.keyedListeners,
    Pe = ke.addKeyedListener,
    Ce = module652.default({
      router: J,
      getState: he,
      setState: re,
      key: null == A ? undefined : A.key,
      actionListeners: Le.action,
      beforeRemoveListeners: we.beforeRemove,
      routerConfigOptions: {
        routeNames: D,
        routeParamList: H,
        routeGetIdList: q,
      },
      emitter: Se,
    }),
    je = module655.default({
      router: J,
      key: null == A ? undefined : A.key,
      getState: he,
      setState: re,
    }),
    Ie = module651.default({
      id: y.id,
      onAction: Ce,
      getState: he,
      emitter: Se,
      router: J,
    });
  module649.default({
    navigation: Ie,
    focusedListeners: Le.focus,
  });
  module654.default({
    getState: he,
    getStateListeners: we.getState,
  });
  var Ke = module645.default({
    state: pe,
    screens: W,
    navigation: Ie,
    screenOptions: y.screenOptions,
    defaultScreenOptions: y.defaultScreenOptions,
    onAction: Ce,
    getState: he,
    setState: re,
    onRouteFocus: je,
    addListener: be,
    addKeyedListener: Pe,
    router: J,
    emitter: Se,
  });
  module644.default({
    state: pe,
    navigation: Ie,
    descriptors: Ke,
  });
  var Ne = module643.default(module635.default.Provider, {
    value: Ie,
  });
  return {
    state: pe,
    navigation: Ie,
    descriptors: Ke,
    NavigationContent: Ne,
  };
};

var module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  module256 = require('@babel/runtime/helpers/interopRequireDefault')(require('./256')),
  module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  module35 = require('@babel/runtime/helpers/interopRequireDefault')(require('./35')),
  React = (function (e, t) {
    if (!t && e && e.__esModule) return e;
    if (null === e || ('object' != typeof e && 'function' != typeof e))
      return {
        default: e,
      };
    var n = G(t);
    if (n && n.has(e)) return n.get(e);
    var o = {},
      i = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var u in e)
      if ('default' !== u && Object.prototype.hasOwnProperty.call(e, u)) {
        var s = i ? Object.getOwnPropertyDescriptor(e, u) : null;
        if (s && (s.get || s.set)) Object.defineProperty(o, u, s);
        else o[u] = e[u];
      }

    o.default = e;
    if (n) n.set(e, o);
    return o;
  })(require('react')),
  module619 = require('@babel/runtime/helpers/interopRequireDefault')(require('./619')),
  module641 = require('@babel/runtime/helpers/interopRequireDefault')(require('./641')),
  module642 = require('@babel/runtime/helpers/interopRequireDefault')(require('./642')),
  module635 = require('@babel/runtime/helpers/interopRequireDefault')(require('./635')),
  module600 = require('@babel/runtime/helpers/interopRequireDefault')(require('./600')),
  module601 = require('@babel/runtime/helpers/interopRequireDefault')(require('./601')),
  module620 = require('@babel/runtime/helpers/interopRequireDefault')(require('./620')),
  module603 = require('@babel/runtime/helpers/interopRequireDefault')(require('./603')),
  module643 = require('@babel/runtime/helpers/interopRequireDefault')(require('./643')),
  module644 = require('@babel/runtime/helpers/interopRequireDefault')(require('./644')),
  module645 = require('@babel/runtime/helpers/interopRequireDefault')(require('./645')),
  module604 = require('@babel/runtime/helpers/interopRequireDefault')(require('./604')),
  module649 = require('@babel/runtime/helpers/interopRequireDefault')(require('./649')),
  module650 = require('@babel/runtime/helpers/interopRequireDefault')(require('./650')),
  module605 = require('@babel/runtime/helpers/interopRequireDefault')(require('./605')),
  module651 = require('@babel/runtime/helpers/interopRequireDefault')(require('./651')),
  module652 = require('@babel/runtime/helpers/interopRequireDefault')(require('./652')),
  module654 = require('@babel/runtime/helpers/interopRequireDefault')(require('./654')),
  module655 = require('@babel/runtime/helpers/interopRequireDefault')(require('./655')),
  module656 = require('@babel/runtime/helpers/interopRequireDefault')(require('./656')),
  module617 = require('@babel/runtime/helpers/interopRequireDefault')(require('./617')),
  E = ['children', 'screenListeners'];

function G(e) {
  if ('function' != typeof WeakMap) return null;
  var t = new WeakMap(),
    n = new WeakMap();
  return (G = function (e) {
    return e ? n : t;
  })(e);
}

require('./636').PrivateValueStore;

var A = function (e) {
    return undefined === e || ('string' == typeof e && '' !== e);
  },
  M = function e(t, n, o) {
    return React.Children.toArray(t).reduce(function (t, l) {
      var p, f;

      if (React.isValidElement(l)) {
        if (l.type === module620.default) {
          if (!A(l.props.navigationKey))
            throw new Error(
              "Got an invalid 'navigationKey' prop (" +
                JSON.stringify(l.props.navigationKey) +
                ") for the screen '" +
                l.props.name +
                "'. It must be a non-empty string or 'undefined'."
            );
          t.push({
            keys: [n, l.props.navigationKey],
            options: o,
            props: l.props,
          });
          return t;
        }

        if (l.type === React.Fragment || l.type === module619.default) {
          if (!A(l.props.navigationKey))
            throw new Error("Got an invalid 'navigationKey' prop (" + JSON.stringify(l.props.navigationKey) + ") for the group. It must be a non-empty string or 'undefined'.");
          t.push.apply(
            t,
            module35.default(
              e(
                l.props.children,
                l.props.navigationKey,
                l.type !== module619.default ? o : null != o ? [].concat(module35.default(o), [l.props.screenOptions]) : [l.props.screenOptions]
              )
            )
          );
          return t;
        }
      }

      throw new Error(
        "A navigator can only contain 'Screen', 'Group' or 'React.Fragment' as its direct children (found " +
          (React.isValidElement(l)
            ? "'" +
              ('string' == typeof l.type ? l.type : null == (p = l.type) ? undefined : p.name) +
              "'" +
              (null != (f = l.props) && f.name ? " for the screen '" + l.props.name + "'" : '')
            : 'object' == typeof l
            ? JSON.stringify(l)
            : "'" + String(l) + "'") +
          "). To render this component in the navigator, pass it in the 'component' prop to 'Screen'."
      );
    }, []);
  };
