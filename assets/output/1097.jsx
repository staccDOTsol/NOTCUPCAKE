var module256 = require('@babel/runtime/helpers/interopRequireDefault')(require('./256')),
  module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module10 = require('@babel/runtime/helpers/interopRequireDefault')(require('./10')),
  module12 = require('@babel/runtime/helpers/interopRequireDefault')(require('./12')),
  module15 = require('@babel/runtime/helpers/interopRequireDefault')(require('./15')),
  module1098 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1098')),
  React = (function (e, t) {
    if (!t && e && e.__esModule) return e;
    if (null === e || ('object' != typeof e && 'function' != typeof e))
      return {
        default: e,
      };
    var n = y(t);
    if (n && n.has(e)) return n.get(e);
    var o = {},
      i = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var s in e)
      if ('default' !== s && Object.prototype.hasOwnProperty.call(e, s)) {
        var l = i ? Object.getOwnPropertyDescriptor(e, s) : null;
        if (l && (l.get || l.set)) Object.defineProperty(o, s, l);
        else o[s] = e[s];
      }

    o.default = e;
    if (n) n.set(e, o);
    return o;
  })(require('react')),
  ReactNative = require('react-native'),
  module1102 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1102')),
  module1104 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1104'));

function y(e) {
  if ('function' != typeof WeakMap) return null;
  var t = new WeakMap(),
    n = new WeakMap();
  return (y = function (e) {
    return e ? n : t;
  })(e);
}

function v() {
  if ('undefined' == typeof Reflect || !Reflect.construct) return false;
  if (Reflect.construct.sham) return false;
  if ('function' == typeof Proxy) return true;

  try {
    Boolean.prototype.valueOf.call(Reflect.construct(Boolean, [], function () {}));
    return true;
  } catch (e) {
    return false;
  }
}

var S = Object.freeze({
    options: {},
  }),
  k = function (e, t) {
    for (var n = e[t].descriptor.options.cardStyleInterpolator, o = 0, i = t - 1; i >= 0; i--) {
      var s;
      if ((null == (s = e[i]) ? undefined : s.descriptor.options.cardStyleInterpolator) !== n) break;
      o++;
    }

    return o;
  },
  module1113 = function (e, t, n) {
    if (n) return true;
    var o = e.descriptor.options.cardStyleInterpolator;
    return require('./1106').getIsModalPresentation(o) && 0 !== t;
  },
  b = function (e, t, n, o, i, s) {
    return e.reduce(function (l, u, c) {
      var f = u.descriptor.options,
        h = f.headerStatusBarHeight,
        y = undefined === h ? (n ? 0 : t.top) : h,
        v = f.headerStyle,
        S = ReactNative.StyleSheet.flatten(v || {}),
        module1065 = 'height' in S && 'number' == typeof S.height ? S.height : s[u.route.key],
        M = k(e, c),
        O = module1065(u, M, o);
      l[u.route.key] = 'number' == typeof module1065 ? module1065 : require('./1065').getDefaultHeaderHeight(i, O, y);
      return l;
    }, {});
  },
  M = function (e, t) {
    var n = (null == t ? undefined : t.options) || {},
      o = n.presentation,
      i = n.gestureDirection,
      module1054 = undefined === i ? ('modal' === o ? require('./1054').ModalTransition.gestureDirection : require('./1054').DefaultTransition.gestureDirection) : i;
    return module1102.default(e, module1054);
  },
  O = function (e, t, n) {
    var o = M(
      {
        width: 1 ** t.width,
        height: 1 ** t.height,
      },
      n
    );
    return o > 0
      ? e.interpolate({
          inputRange: [0, o],
          outputRange: [1, 0],
        })
      : e.interpolate({
          inputRange: [o, 0],
          outputRange: [0, 1],
        });
  },
  module1113 = (function (f) {
    module10.default(w, f);

    var y = w,
      module1113 = v(),
      R = function () {
        var e,
          t = module15.default(y);

        if (module1113) {
          var n = module15.default(this).constructor;
          e = Reflect.construct(t, arguments, n);
        } else e = t.apply(this, arguments);

        return module12.default(this, e);
      };

    function w(o) {
      var i;
      module7.default(this, w);

      (i = R.call(this, o)).handleLayout = function (e) {
        var t = e.nativeEvent.layout,
          n = t.height,
          o = t.width,
          s = {
            width: o,
            height: n,
          };
        i.setState(function (e, t) {
          return n === e.layout.height && o === e.layout.width
            ? null
            : {
                layout: s,
                headerHeights: b(e.scenes, t.insets, t.isParentHeaderShown, t.isParentModal, s, e.headerHeights),
              };
        });
      };

      i.handleHeaderLayout = function (n) {
        var o = n.route,
          s = n.height;
        i.setState(function (n) {
          var i = n.headerHeights;
          return i[o.key] === s
            ? null
            : {
                headerHeights: module29.default({}, i, module256.default({}, o.key, s)),
              };
        });
      };

      i.getFocusedRoute = function () {
        var e = i.props.state;
        return e.routes[e.index];
      };

      i.getPreviousScene = function (e) {
        var t = e.route,
          n = i.props.getPreviousRoute,
          o = i.state.scenes,
          s = n({
            route: t,
          });
        if (s)
          return o.find(function (e) {
            return e.descriptor.route.key === s.key;
          });
      };

      i.state = {
        routes: [],
        scenes: [],
        gestures: {},
        layout: require('./1065').SafeAreaProviderCompat.initialMetrics.frame,
        descriptors: i.props.descriptors,
        headerHeights: {},
      };
      return i;
    }

    module8.default(
      w,
      [
        {
          key: 'render',
          value: function () {
            for (
              var e = this,
                t = this.props,
                n = t.insets,
                o = t.state,
                i = t.routes,
                s = t.closingRouteKeys,
                l = t.onOpenRoute,
                f = t.onCloseRoute,
                y = t.renderHeader,
                v = t.renderScene,
                S = t.isParentHeaderShown,
                b = t.isParentModal,
                M = t.onTransitionStart,
                O = t.onTransitionEnd,
                H = t.onGestureStart,
                R = t.onGestureEnd,
                w = t.onGestureCancel,
                E = t.detachInactiveScreens,
                C = undefined === E ? 'web' === ReactNative.Platform.OS || 'android' === ReactNative.Platform.OS || 'ios' === ReactNative.Platform.OS : E,
                D = this.state,
                x = D.scenes,
                T = D.layout,
                _ = D.gestures,
                F = D.headerHeights,
                j = o.routes[o.index],
                A = F[j.key],
                L = this.state.scenes.slice(-2).some(function (e) {
                  var t,
                    n = null != (t = e.descriptor.options) ? t : {},
                    o = n.headerMode,
                    i = n.headerTransparent,
                    s = n.headerShown;
                  return !(!i && false !== (undefined === s || s) && 'screen' !== o);
                }),
                G = 1,
                B = x.length - 1;
              B >= 0;
              B--
            ) {
              var W = x[B].descriptor.options,
                z = W.detachPreviousScreen;
              if (
                false ===
                (undefined === z
                  ? 'transparentModal' !== W.presentation &&
                    (!require('./1106').getIsModalPresentation(W.cardStyleInterpolator) ||
                      B !==
                        x
                          .map(function (e) {
                            return e.descriptor.options.cardStyleInterpolator;
                          })
                          .lastIndexOf(require('./1051').forModalPresentationIOS))
                  : z)
              )
                G++;
              else if (B <= x.length - 2) break;
            }

            var K = (
              <React.Fragment key="header">
                {y({
                  mode: 'float',
                  layout: T,
                  scenes: x,
                  getPreviousScene: this.getPreviousScene,
                  getFocusedRoute: this.getFocusedRoute,
                  onContentHeightChange: this.handleHeaderLayout,
                  style: [
                    I.floating,
                    L && [
                      {
                        height: A,
                      },
                      I.absolute,
                    ],
                  ],
                })}
              </React.Fragment>
            );
            return React.createElement(
              require('./1065').Background,
              null,
              L ? null : K,
              React.createElement(
                require('./1113').MaybeScreenContainer,
                {
                  enabled: C,
                  style: I.container,
                  onLayout: this.handleLayout,
                },
                i.map(function (t, o, i) {
                  var I,
                    E,
                    D = j.key === t.key,
                    A = _[t.key],
                    B = x[o],
                    W = 1;
                  if (o < i.length - G - 1) W = 0;
                  else {
                    var z = x[i.length - 1],
                      K = o === i.length - 1 ? 2 : o >= i.length - G ? 1 : 0;
                    W = z
                      ? z.progress.current.interpolate({
                          inputRange: [0, 0.99, 1],
                          outputRange: [1, 1, K],
                          extrapolate: 'clamp',
                        })
                      : 1;
                  }
                  var N,
                    V = B.descriptor.options,
                    q = V.headerShown,
                    J = undefined === q || q,
                    Q = V.headerTransparent,
                    U = V.headerStyle,
                    X = V.headerTintColor,
                    Y = n.top,
                    Z = n.right,
                    $ = n.bottom,
                    ee = n.left,
                    te = false !== J ? F[t.key] : 0;
                  if (J)
                    if ('string' == typeof X) N = module1098.default(X).isDark();
                    else {
                      var re = ReactNative.StyleSheet.flatten(U);
                      if (re && 'backgroundColor' in re && 'string' == typeof re.backgroundColor) N = !module1098.default(re.backgroundColor).isDark();
                    }
                  var ne = k(x, o),
                    oe = module1113(B, ne, b),
                    ae = 'transparentModal' === (null == (I = x[o + 1]) ? undefined : I.descriptor.options.presentation),
                    ie = false !== (null == (E = x[o + 1]) ? undefined : E.descriptor.options.detachPreviousScreen);
                  return React.createElement(
                    require('./1113').MaybeScreen,
                    {
                      key: t.key,
                      style: ReactNative.StyleSheet.absoluteFill,
                      enabled: C,
                      active: W,
                      pointerEvents: 'box-none',
                    },
                    React.createElement(module1104.default, {
                      index: o,
                      interpolationIndex: ne,
                      modal: oe,
                      active: o === i.length - 1,
                      focused: D,
                      closing: s.includes(t.key),
                      layout: T,
                      gesture: A,
                      scene: B,
                      safeAreaInsetTop: Y,
                      safeAreaInsetRight: Z,
                      safeAreaInsetBottom: $,
                      safeAreaInsetLeft: ee,
                      onGestureStart: H,
                      onGestureCancel: w,
                      onGestureEnd: R,
                      headerHeight: te,
                      isParentHeaderShown: S,
                      onHeaderHeightChange: e.handleHeaderLayout,
                      getPreviousScene: e.getPreviousScene,
                      getFocusedRoute: e.getFocusedRoute,
                      headerDarkContent: N,
                      hasAbsoluteFloatHeader: L && !Q,
                      renderHeader: y,
                      renderScene: v,
                      onOpenRoute: l,
                      onCloseRoute: f,
                      onTransitionStart: M,
                      onTransitionEnd: O,
                      isNextScreenTransparent: ae,
                      detachCurrentScreen: ie,
                    })
                  );
                })
              ),
              L ? K : null
            );
          },
        },
      ],
      [
        {
          key: 'getDerivedStateFromProps',
          value: function (e, n) {
            if (e.routes === n.routes && e.descriptors === n.descriptors) return null;
            var o = e.routes.reduce(function (t, o) {
                var i = e.descriptors[o.key],
                  s = ((null == i ? undefined : i.options) || {}).animationEnabled;
                t[o.key] = n.gestures[o.key] || new ReactNative.Animated.Value(e.openingRouteKeys.includes(o.key) && false !== s ? M(n.layout, i) : 0);
                return t;
              }, {}),
              i = e.routes.map(function (i, s, l) {
                var u,
                  c = l[s - 1],
                  f = l[s + 1],
                  h = n.scenes[s],
                  y = o[i.key],
                  v = c ? o[c.key] : undefined,
                  k = f ? o[f.key] : undefined,
                  P = e.descriptors[i.key] || n.descriptors[i.key] || (h ? h.descriptor : S),
                  b = e.descriptors[null == f ? undefined : f.key] || n.descriptors[null == f ? undefined : f.key],
                  M = e.descriptors[null == c ? undefined : c.key] || n.descriptors[null == c ? undefined : c.key],
                  H = s !== l.length - 1 && b && 'transparentModal' !== b.options.presentation ? b.options : P.options,
                  module1054 =
                    'modal' === H.presentation
                      ? require('./1054').ModalTransition
                      : 'transparentModal' === H.presentation
                      ? require('./1054').ModalFadeTransition
                      : require('./1054').DefaultTransition,
                  R = H.animationEnabled,
                  w = undefined === R ? 'web' !== ReactNative.Platform.OS && 'windows' !== ReactNative.Platform.OS && 'macos' !== ReactNative.Platform.OS : R,
                  E = H.gestureEnabled,
                  C = undefined === E ? 'ios' === ReactNative.Platform.OS && w : E,
                  D = H.gestureDirection,
                  x = undefined === D ? module1054.gestureDirection : D,
                  T = H.transitionSpec,
                  _ = undefined === T ? module1054.transitionSpec : T,
                  F = H.cardStyleInterpolator,
                  module1051 = undefined === F ? (false === w ? require('./1051').forNoAnimation : module1054.cardStyleInterpolator) : F,
                  A = H.headerStyleInterpolator,
                  L = undefined === A ? module1054.headerStyleInterpolator : A,
                  G = H.cardOverlayEnabled,
                  module1106 =
                    undefined === G ? ('ios' !== ReactNative.Platform.OS && 'transparentModal' !== H.presentation) || require('./1106').getIsModalPresentation(module1051) : G,
                  module1106 =
                    null != (u = P.options.headerMode)
                      ? u
                      : 'modal' === H.presentation ||
                        'transparentModal' === H.presentation ||
                        'modal' === (null == b ? undefined : b.options.presentation) ||
                        'transparentModal' === (null == b ? undefined : b.options.presentation) ||
                        require('./1106').getIsModalPresentation(module1051) ||
                        'ios' !== ReactNative.Platform.OS ||
                        undefined !== P.options.header
                      ? 'screen'
                      : 'float',
                  z = {
                    route: i,
                    descriptor: module29.default({}, P, {
                      options: module29.default({}, P.options, {
                        animationEnabled: w,
                        cardOverlayEnabled: module1106,
                        cardStyleInterpolator: module1051,
                        gestureDirection: x,
                        gestureEnabled: C,
                        headerStyleInterpolator: L,
                        transitionSpec: _,
                        headerMode: module1106,
                      }),
                    }),
                    progress: {
                      current: O(y, n.layout, P),
                      next: k && 'transparentModal' !== (null == b ? undefined : b.options.presentation) ? O(k, n.layout, b) : undefined,
                      previous: v ? O(v, n.layout, M) : undefined,
                    },
                    __memo: [n.layout, P, b, M, y, k, v],
                  };

                return h &&
                  z.__memo.every(function (e, t) {
                    return h.__memo[t] === e;
                  })
                  ? h
                  : z;
              });
            return {
              routes: e.routes,
              scenes: i,
              gestures: o,
              descriptors: e.descriptors,
              headerHeights: b(i, e.insets, e.isParentHeaderShown, e.isParentModal, n.layout, n.headerHeights),
            };
          },
        },
      ]
    );
    return w;
  })(React.Component);

exports.default = module1113;
var I = ReactNative.StyleSheet.create({
  container: {
    flex: 1,
  },
  absolute: {
    position: 'absolute',
    top: 0,
    left: 0,
    right: 0,
  },
  floating: {
    zIndex: 1,
  },
});
