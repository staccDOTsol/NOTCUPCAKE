exports.default = function (v) {
  var p = v.tabBar,
    h =
      undefined === p
        ? function (t) {
            return <module1143.default />;
          }
        : p,
    S = v.state,
    b = v.navigation,
    P = v.descriptors,
    O = v.safeAreaInsets,
    w = v.detachInactiveScreens,
    k = undefined === w ? 'web' === ReactNative.Platform.OS || 'android' === ReactNative.Platform.OS || 'ios' === ReactNative.Platform.OS : w,
    E = v.sceneContainerStyle,
    M = S.routes[S.index].key,
    j = React.useState([M]),
    C = module23.default(j, 2),
    x = C[0],
    A = C[1];
  if (!x.includes(M)) A([].concat(module35.default(x), [M]));

  var module1065 = require('./1065').SafeAreaProviderCompat.initialMetrics.frame,
    module1065 = React.useState(function () {
      return module1143.getTabBarHeight({
        state: S,
        descriptors: P,
        dimensions: module1065,
        layout: {
          width: module1065.width,
          height: 0,
        },
        insets: module29.default({}, require('./1065').SafeAreaProviderCompat.initialMetrics.insets, v.safeAreaInsets),
        style: P[S.routes[S.index].key].options.tabBarStyle,
      });
    }),
    H = module23.default(module1065, 2),
    I = H[0],
    T = H[1],
    W = S.routes;

  return React.createElement(
    require('./1065').SafeAreaProviderCompat,
    null,
    React.createElement(
      require('./1148').MaybeScreenContainer,
      {
        enabled: k,
        hasTwoStates: true,
        style: y.container,
      },
      W.map(function (n, o) {
        var s = P[n.key],
          c = s.options,
          v = c.lazy,
          p = undefined === v || v,
          y = c.unmountOnBlur,
          h = S.index === o;
        if (y && !h) return null;
        if (p && !x.includes(n.key) && !h) return null;
        var b = s.options.header,
          module1065 =
            undefined === b
              ? function (o) {
                  var u = o.layout,
                    s = o.options;
                  return React.createElement(
                    require('./1065').Header,
                    module29.default({}, s, {
                      layout: u,
                      title: require('./1065').getHeaderTitle(s, n.name),
                    })
                  );
                }
              : b;
        return React.createElement(
          require('./1148').MaybeScreen,
          {
            key: n.key,
            style: [
              ReactNative.StyleSheet.absoluteFill,
              {
                zIndex: h ? 0 : -1,
              },
            ],
            visible: h,
            enabled: k,
          },
          React.createElement(
            module1142.default.Provider,
            {
              value: I,
            },
            React.createElement(
              require('./1065').Screen,
              {
                focused: h,
                route: s.route,
                navigation: s.navigation,
                headerShown: s.options.headerShown,
                headerTransparent: s.options.headerTransparent,
                headerStatusBarHeight: s.options.headerStatusBarHeight,
                header: module1065({
                  layout: module1065,
                  route: s.route,
                  navigation: s.navigation,
                  options: s.options,
                }),
                style: E,
              },
              s.render()
            )
          )
        );
      })
    ),
    React.createElement(
      module1141.default.Provider,
      {
        value: T,
      },
      React.createElement(require('./1074').SafeAreaInsetsContext.Consumer, null, function (t) {
        var n, o, l, u, s, f, c, v;
        return h({
          state: S,
          descriptors: P,
          navigation: b,
          insets: {
            top: null != (n = null != (o = null == O ? undefined : O.top) ? o : null == t ? undefined : t.top) ? n : 0,
            right: null != (l = null != (u = null == O ? undefined : O.right) ? u : null == t ? undefined : t.right) ? l : 0,
            bottom: null != (s = null != (f = null == O ? undefined : O.bottom) ? f : null == t ? undefined : t.bottom) ? s : 0,
            left: null != (c = null != (v = null == O ? undefined : O.left) ? v : null == t ? undefined : t.left) ? c : 0,
          },
        });
      })
    )
  );
};

var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module35 = require('@babel/runtime/helpers/interopRequireDefault')(require('./35')),
  module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  React = p(require('react')),
  ReactNative = require('react-native'),
  module1141 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1141')),
  module1142 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1142')),
  module1143 = p(require('./1143'));

function v(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (v = function (t) {
    return t ? o : n;
  })(t);
}

function p(t, n) {
  if (!n && t && t.__esModule) return t;
  if (null === t || ('object' != typeof t && 'function' != typeof t))
    return {
      default: t,
    };
  var o = v(n);
  if (o && o.has(t)) return o.get(t);
  var l = {},
    u = Object.defineProperty && Object.getOwnPropertyDescriptor;

  for (var s in t)
    if ('default' !== s && Object.prototype.hasOwnProperty.call(t, s)) {
      var f = u ? Object.getOwnPropertyDescriptor(t, s) : null;
      if (f && (f.get || f.set)) Object.defineProperty(l, s, f);
      else l[s] = t[s];
    }

  l.default = t;
  if (o) o.set(t, l);
  return l;
}

var y = ReactNative.StyleSheet.create({
  container: {
    flex: 1,
    overflow: 'hidden',
  },
});
