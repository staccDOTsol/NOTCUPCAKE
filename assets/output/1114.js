var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module10 = require('@babel/runtime/helpers/interopRequireDefault')(require('./10')),
  module12 = require('@babel/runtime/helpers/interopRequireDefault')(require('./12')),
  module15 = require('@babel/runtime/helpers/interopRequireDefault')(require('./15')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  React = require('@babel/runtime/helpers/interopRequireDefault')(require('react')),
  ReactNative = require('react-native'),
  module1115 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1115')),
  module1116 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1116')),
  N = ['children'],
  h = ['enabled'],
  w = ['active', 'activityState', 'children', 'isNativeStack', 'gestureResponseDistance'],
  y = ['active', 'activityState', 'style', 'onComponentRef'],
  C = ['enabled', 'hasTwoStates'];

function b() {
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

var k = 'ios' === ReactNative.Platform.OS || 'android' === ReactNative.Platform.OS || 'windows' === ReactNative.Platform.OS,
  R = k;
var E = false;
var P, H, A, B, F, O, V, z, q;
var I = {
  get NativeScreen() {
    P = P || ReactNative.requireNativeComponent('RNSScreen');
    return P;
  },

  get NativeScreenContainer() {
    H = H || ReactNative.requireNativeComponent('RNSScreenContainer');
    return H;
  },

  get NativeScreenNavigationContainer() {
    A = A || ('ios' === ReactNative.Platform.OS ? ReactNative.requireNativeComponent('RNSScreenNavigationContainer') : this.NativeScreenContainer);
    return A;
  },

  get NativeScreenStack() {
    B = B || ReactNative.requireNativeComponent('RNSScreenStack');
    return B;
  },

  get NativeScreenStackHeaderConfig() {
    F = F || ReactNative.requireNativeComponent('RNSScreenStackHeaderConfig');
    return F;
  },

  get NativeScreenStackHeaderSubview() {
    O = O || ReactNative.requireNativeComponent('RNSScreenStackHeaderSubview');
    return O;
  },

  get NativeSearchBar() {
    z = z || ReactNative.requireNativeComponent('RNSSearchBar');
    return z;
  },

  get NativeFullWindowOverlay() {
    q = q || ReactNative.requireNativeComponent('RNSFullWindowOverlay');
    return q;
  },
};

function x(e) {
  var t = e.freeze,
    n = e.children,
    o = React.default.useState(false),
    l = module23.default(o, 2),
    c = l[0],
    u = l[1];
  if (t !== c)
    setImmediate(function () {
      u(t);
    });
  return React.default.createElement(
    require('./1117').Freeze,
    {
      freeze: !!t && c,
    },
    n
  );
}

function D(e) {
  var t = e.freeze,
    n = e.children;
  return E
    ? React.default.createElement(
        x,
        {
          freeze: t,
        },
        n
      )
    : React.default.createElement(React.default.Fragment, null, n);
}

var W = (function (v, ...args) {
  module10.default(E, v);

  var module1116 = E,
    N = b(),
    C = function () {
      var e,
        t = module15.default(module1116);

      if (N) {
        var n = module15.default(this).constructor;
        e = Reflect.construct(t, arguments, n);
      } else e = t.apply(this, arguments);

      return module12.default(this, e);
    };

  function E() {
    var e;
    module7.default(this, E);
    (e = C.call(this, ...args)).ref = null;
    e.closing = new ReactNative.Animated.Value(0);
    e.progress = new ReactNative.Animated.Value(0);
    e.goingForward = new ReactNative.Animated.Value(0);

    e.setRef = function (t) {
      e.ref = t;
      if (!(null == e.props.onComponentRef)) e.props.onComponentRef(t);
    };

    return e;
  }

  module8.default(E, [
    {
      key: 'setNativeProps',
      value: function (e) {
        var t;
        if (!(null == (t = this.ref))) t.setNativeProps(e);
      },
    },
    {
      key: 'render',
      value: function () {
        var t = this,
          n = this.props,
          o = n.enabled,
          l = undefined === o ? R : o,
          c = module105.default(n, h);

        if (l && k) {
          var v, p, N, C;
          V = V || ReactNative.Animated.createAnimatedComponent(I.NativeScreen);
          var b = c.active,
            E = c.activityState,
            P = c.children,
            H = c.isNativeStack,
            A = c.gestureResponseDistance,
            B = module105.default(c, w);

          if (undefined !== b && undefined === E) {
            console.warn(
              'It appears that you are using old version of react-navigation library. Please update @react-navigation/bottom-tabs, @react-navigation/stack and @react-navigation/drawer to version 5.10.0 or above to take full advantage of new functionality added to react-native-screens'
            );
            E = 0 !== b ? 2 : 0;
          }

          return React.default.createElement(
            D,
            {
              freeze: 0 === E,
            },
            React.default.createElement(
              V,
              module29.default({}, B, {
                activityState: E,
                gestureResponseDistance: {
                  start: null != (v = null == A ? undefined : A.start) ? v : -1,
                  end: null != (p = null == A ? undefined : A.end) ? p : -1,
                  top: null != (N = null == A ? undefined : A.top) ? N : -1,
                  bottom: null != (C = null == A ? undefined : A.bottom) ? C : -1,
                },
                ref: function (n) {
                  var o, l;

                  if (null != n && null != (o = n.viewConfig) && null != (l = o.validAttributes) && l.style) {
                    n.viewConfig.validAttributes.style = module29.default({}, n.viewConfig.validAttributes.style, {
                      display: false,
                    });
                    t.setRef(n);
                  }
                },
                onTransitionProgress: H
                  ? ReactNative.Animated.event(
                      [
                        {
                          nativeEvent: {
                            progress: this.progress,
                            closing: this.closing,
                            goingForward: this.goingForward,
                          },
                        },
                      ],
                      {
                        useNativeDriver: true,
                      }
                    )
                  : undefined,
              }),
              H
                ? React.default.createElement(
                    module1115.default.Provider,
                    {
                      value: {
                        progress: this.progress,
                        closing: this.closing,
                        goingForward: this.goingForward,
                      },
                    },
                    P
                  )
                : P
            )
          );
        }

        var F = c.active,
          O = c.activityState,
          z = c.style,
          q = module105.default(c, y);
        if (undefined !== F && undefined === O) O = 0 !== F ? 2 : 0;
        return React.default.createElement(
          ReactNative.Animated.View,
          module29.default(
            {
              style: [
                z,
                {
                  display: 0 !== O ? 'flex' : 'none',
                },
              ],
              ref: this.setRef,
            },
            q
          )
        );
      },
    },
  ]);
  return E;
})(React.default.Component);

var M = ReactNative.StyleSheet.create({
    headerSubview: {
      position: 'absolute',
      top: 0,
      right: 0,
      flexDirection: 'row',
      alignItems: 'center',
      justifyContent: 'center',
    },
  }),
  T = React.default.createContext(W);
module.exports = {
  Screen: W,
  ScreenContainer: function (e) {
    var t = e.enabled,
      n = undefined === t ? R : t,
      o = e.hasTwoStates,
      l = module105.default(e, C);
    return n && k
      ? o
        ? React.default.createElement(I.NativeScreenNavigationContainer, l)
        : React.default.createElement(I.NativeScreenContainer, l)
      : React.default.createElement(ReactNative.View, l);
  },
  ScreenContext: T,
  ScreenStack: function (e) {
    if (E) {
      var t = e.children,
        n = module105.default(e, N),
        o = React.default.Children.count(t),
        l = React.default.Children.map(t, function (e, t) {
          return React.default.createElement(
            x,
            {
              freeze: o - t > 1,
            },
            e
          );
        });
      return React.default.createElement(I.NativeScreenStack, n, l);
    }

    return React.default.createElement(I.NativeScreenStack, e);
  },

  get NativeScreen() {
    return I.NativeScreen;
  },

  get NativeScreenContainer() {
    return I.NativeScreenContainer;
  },

  get NativeScreenNavigationContainer() {
    return I.NativeScreenNavigationContainer;
  },

  get ScreenStackHeaderConfig() {
    return I.NativeScreenStackHeaderConfig;
  },

  get ScreenStackHeaderSubview() {
    return I.NativeScreenStackHeaderSubview;
  },

  get SearchBar() {
    if (require('./1118').isSearchBarAvailableForCurrentPlatform) return I.NativeSearchBar;
    else {
      console.warn('Importing SearchBar is only valid on iOS and Android devices.');
      return ReactNative.View;
    }
  },

  get FullWindowOverlay() {
    if ('ios' !== ReactNative.Platform.OS) {
      console.warn('Importing FullWindowOverlay is only valid on iOS devices.');
      return ReactNative.View;
    } else return I.NativeFullWindowOverlay;
  },

  ScreenStackHeaderBackButtonImage: function (t) {
    return React.default.createElement(
      I.NativeScreenStackHeaderSubview,
      {
        type: 'back',
        style: M.headerSubview,
      },
      React.default.createElement(
        ReactNative.Image,
        module29.default(
          {
            resizeMode: 'center',
            fadeDuration: 0,
          },
          t
        )
      )
    );
  },
  ScreenStackHeaderRightView: function (t) {
    return React.default.createElement(
      I.NativeScreenStackHeaderSubview,
      module29.default({}, t, {
        type: 'right',
        style: M.headerSubview,
      })
    );
  },
  ScreenStackHeaderLeftView: function (t) {
    return React.default.createElement(
      I.NativeScreenStackHeaderSubview,
      module29.default({}, t, {
        type: 'left',
        style: M.headerSubview,
      })
    );
  },
  ScreenStackHeaderCenterView: function (t) {
    return React.default.createElement(
      I.NativeScreenStackHeaderSubview,
      module29.default({}, t, {
        type: 'center',
        style: M.headerSubview,
      })
    );
  },
  ScreenStackHeaderSearchBarView: function (t) {
    return React.default.createElement(
      I.NativeScreenStackHeaderSubview,
      module29.default({}, t, {
        type: 'searchBar',
        style: M.headerSubview,
      })
    );
  },
  enableScreens: function () {
    var e = !(arguments.length > 0 && undefined !== arguments[0]) || arguments[0];
    if ((R = k && e) && !ReactNative.UIManager.getViewManagerConfig('RNSScreen'))
      console.error("Screen native module hasn't been linked. Please check the react-native-screens README for more details");
  },
  enableFreeze: function () {
    var e = !(arguments.length > 0 && undefined !== arguments[0]) || arguments[0],
      module494 = parseInt(require('./494').version.split('.')[1]);
    if (!(0 === module494 || module494 >= 64 || !e))
      console.warn('react-freeze library requires at least react-native 0.64. Please upgrade your react-native version in order to use this feature.');
    E = e;
  },
  screensEnabled: function () {
    return R;
  },
  shouldUseActivityState: true,
  useTransitionProgress: module1116.default,
  isSearchBarAvailableForCurrentPlatform: require('./1118').isSearchBarAvailableForCurrentPlatform,
  executeNativeBackPress: require('./1118').executeNativeBackPress,
};
