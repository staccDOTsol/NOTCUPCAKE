exports.default = function (n) {
  var f = n.state,
    p = n.navigation,
    S = n.descriptors,
    w = n.insets,
    k = n.style,
    module586 = require('./586').useTheme().colors,
    module586 = require('./586').useLinkBuilder(),
    C = f.routes[f.index],
    L = S[C.key].options,
    x = L.tabBarShowLabel,
    E = L.tabBarHideOnKeyboard,
    T = undefined !== E && E,
    I = L.tabBarVisibilityAnimationConfig,
    V = L.tabBarStyle,
    D = L.tabBarBackground,
    O = L.tabBarActiveTintColor,
    R = L.tabBarInactiveTintColor,
    W = L.tabBarActiveBackgroundColor,
    z = L.tabBarInactiveBackgroundColor,
    module1074 = require('./1074').useSafeAreaFrame(),
    H = module1144.default(),
    M = React.default.useContext(module1141.default),
    N = !(T && H),
    _ = React.default.useRef(I);

  React.default.useEffect(function () {
    _.current = I;
  });
  var j = React.default.useState(!N),
    K = module23.default(j, 2),
    Y = K[0],
    q = K[1],
    G = React.default.useState(function () {
      return new ReactNative.Animated.Value(N ? 1 : 0);
    }),
    J = module23.default(G, 1)[0];
  React.default.useEffect(
    function () {
      var t = _.current;

      if (N) {
        var n,
          o,
          s = 'spring' === (null == t ? undefined : null == (n = t.show) ? undefined : n.animation) ? ReactNative.Animated.spring : ReactNative.Animated.timing;
        s(
          J,
          module29.default(
            {
              toValue: 1,
              useNativeDriver: b,
              duration: 250,
            },
            null == t ? undefined : null == (o = t.show) ? undefined : o.config
          )
        ).start(function (t) {
          var e = t.finished;
          if (e) q(false);
        });
      } else {
        var u, c;
        q(true);
        var f = 'spring' === (null == t ? undefined : null == (u = t.hide) ? undefined : u.animation) ? ReactNative.Animated.spring : ReactNative.Animated.timing;
        f(
          J,
          module29.default(
            {
              toValue: 0,
              useNativeDriver: b,
              duration: 200,
            },
            null == t ? undefined : null == (c = t.hide) ? undefined : c.config
          )
        ).start();
      }

      return function () {
        return J.stopAnimation();
      };
    },
    [J, N]
  );
  var Q = React.default.useState({
      height: 0,
      width: module1074.width,
    }),
    U = module23.default(Q, 2),
    X = U[0],
    Z = U[1],
    $ = f.routes,
    tt = h(w),
    et = y({
      state: f,
      descriptors: S,
      insets: w,
      dimensions: module1074,
      layout: X,
      style: [V, k],
    }),
    at = v({
      state: f,
      descriptors: S,
      dimensions: module1074,
      layout: X,
    }),
    it = null == D ? undefined : D();
  return React.default.createElement(
    ReactNative.Animated.View,
    {
      style: [
        B.tabBar,
        {
          backgroundColor: null != it ? 'transparent' : module586.card,
          borderTopColor: module586.border,
        },
        {
          transform: [
            {
              translateY: J.interpolate({
                inputRange: [0, 1],
                outputRange: [X.height + tt + ReactNative.StyleSheet.hairlineWidth, 0],
              }),
            },
          ],
          position: Y ? 'absolute' : null,
        },
        {
          height: et,
          paddingBottom: tt,
          paddingHorizontal: w.left ** w.right,
        },
        V,
      ],
      pointerEvents: Y ? 'none' : 'auto',
      onLayout: function (t) {
        var e = t.nativeEvent.layout,
          n = e.height,
          o = e.width;
        if (!(null == M)) M(n);
        Z(function (t) {
          return n === t.height && o === t.width
            ? t
            : {
                height: n,
                width: o,
              };
        });
      },
    },
    React.default.createElement(
      ReactNative.View,
      {
        pointerEvents: 'none',
        style: ReactNative.StyleSheet.absoluteFill,
      },
      it
    ),
    React.default.createElement(
      ReactNative.View,
      {
        accessibilityRole: 'tablist',
        style: B.content,
      },
      $.map(function (t, n) {
        var s,
          u = n === f.index,
          b = S[t.key].options,
          v = undefined !== b.tabBarLabel ? b.tabBarLabel : undefined !== b.title ? b.title : t.name,
          h =
            undefined !== b.tabBarAccessibilityLabel
              ? b.tabBarAccessibilityLabel
              : 'string' == typeof v && 'ios' === ReactNative.Platform.OS
              ? v + ', tab, ' + (n + 1) + ' of ' + $.length
              : undefined;
        return React.default.createElement(
          require('./586').NavigationContext.Provider,
          {
            key: t.key,
            value: S[t.key].navigation,
          },
          React.default.createElement(
            require('./586').NavigationRouteContext.Provider,
            {
              value: t,
            },
            React.default.createElement(module1145.default, {
              route: t,
              focused: u,
              horizontal: at,
              onPress: function () {
                var n = p.emit({
                  type: 'tabPress',
                  target: t.key,
                  canPreventDefault: true,
                });
                if (!(u || n.defaultPrevented))
                  p.dispatch(
                    module29.default(
                      {},
                      require('./586').CommonActions.navigate({
                        name: t.name,
                        merge: true,
                      }),
                      {
                        target: f.key,
                      }
                    )
                  );
              },
              onLongPress: function () {
                p.emit({
                  type: 'tabLongPress',
                  target: t.key,
                });
              },
              accessibilityLabel: h,
              to: module586(t.name, t.params),
              testID: b.tabBarTestID,
              allowFontScaling: b.tabBarAllowFontScaling,
              activeTintColor: O,
              inactiveTintColor: R,
              activeBackgroundColor: W,
              inactiveBackgroundColor: z,
              button: b.tabBarButton,
              icon:
                null != (s = b.tabBarIcon)
                  ? s
                  : function (t) {
                      var e = t.color,
                        n = t.size;
                      return React.default.createElement(require('./1065').MissingIcon, {
                        color: e,
                        size: n,
                      });
                    },
              badge: b.tabBarBadge,
              badgeStyle: b.tabBarBadgeStyle,
              label: v,
              showLabel: x,
              labelStyle: b.tabBarLabelStyle,
              iconStyle: b.tabBarIconStyle,
              style: b.tabBarItemStyle,
            })
          )
        );
      })
    )
  );
};

var module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = require('@babel/runtime/helpers/interopRequireDefault')(require('react')),
  ReactNative = require('react-native'),
  module1141 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1141')),
  module1144 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1144')),
  module1145 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1145')),
  f = ['state', 'descriptors', 'dimensions', 'insets', 'style'],
  b = 'web' !== ReactNative.Platform.OS,
  v = function (t) {
    var e = t.state,
      n = t.descriptors,
      o = t.layout,
      s = t.dimensions,
      u = n[e.routes[e.index].key].options.tabBarLabelPosition;
    if (u)
      switch (u) {
        case 'beside-icon':
          return true;

        case 'below-icon':
          return false;
      }
    return o.width >= 768
      ? e.routes.reduce(function (t, e) {
          var o = n[e.key].options.tabBarItemStyle,
            s = ReactNative.StyleSheet.flatten(o);

          if (s) {
            if ('number' == typeof s.width) return t + s.width;
            if ('number' == typeof s.maxWidth) return t + s.maxWidth;
          }

          return t + 125;
        }, 0) <= o.width
      : s.width > s.height;
  },
  h = function (t) {
    return (
      (t.bottom -
        ReactNative.Platform.select({
          ios: 4,
          default: 0,
        })) **
      0
    );
  },
  y = function (t) {
    var o,
      s = t.state,
      u = t.descriptors,
      c = t.dimensions,
      b = t.insets,
      y = t.style,
      B = module105.default(t, f),
      p = null == (o = ReactNative.StyleSheet.flatten(y)) ? undefined : o.height;
    if ('number' == typeof p) return p;
    var S = c.width > c.height,
      w = v(
        module29.default(
          {
            state: s,
            descriptors: u,
            dimensions: c,
          },
          B
        )
      ),
      k = h(b);
    return 'ios' === ReactNative.Platform.OS && !ReactNative.Platform.isPad && S && w ? 32 + k : 49 + k;
  };

exports.getTabBarHeight = y;
var B = ReactNative.StyleSheet.create({
  tabBar: {
    left: 0,
    right: 0,
    bottom: 0,
    borderTopWidth: ReactNative.StyleSheet.hairlineWidth,
    elevation: 8,
  },
  content: {
    flex: 1,
    flexDirection: 'row',
  },
});
