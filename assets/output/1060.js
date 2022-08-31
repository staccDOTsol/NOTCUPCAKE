exports.default = function (n) {
  var l = n.mode,
    u = n.scenes,
    s = n.layout,
    c = n.getPreviousScene,
    p = n.getFocusedRoute,
    v = n.onContentHeightChange,
    f = n.style,
    h = p(),
    module1065 = React.useContext(require('./1065').HeaderBackContext);
  return React.createElement(
    ReactNative.Animated.View,
    {
      pointerEvents: 'box-none',
      style: f,
    },
    u.slice(-3).map(function (n, u, p) {
      var f, b;
      if (('screen' === l && u !== p.length - 1) || !n) return null;
      var w = n.descriptor.options,
        S = w.header,
        k = w.headerMode,
        E = w.headerShown,
        O = undefined === E || E,
        P = w.headerTransparent,
        M = w.headerStyleInterpolator;
      if (k !== l || !O) return null;
      var j = h.key === n.descriptor.route.key,
        x = c({
          route: n.descriptor.route,
        }),
        C = module1065;

      if (x) {
        var _ = x.descriptor,
          H = _.options,
          A = _.route;
        C = x
          ? {
              title: require('./1065').getHeaderTitle(H, A.name),
            }
          : module1065;
      }

      var D = null == (f = p[u - 1]) ? undefined : f.descriptor,
        N = null == (b = p[u + 1]) ? undefined : b.descriptor,
        R = (null == D ? undefined : D.options) || {},
        W = R.headerShown,
        F = undefined === W || W,
        I = R.headerMode,
        L = p.slice(u + 1).find(function (e) {
          var t = (null == e ? undefined : e.descriptor.options) || {},
            o = t.headerShown,
            n = undefined === o || o,
            i = t.headerMode;
          return false === n || 'screen' === i;
        }),
        T = (null == L ? undefined : L.descriptor.options) || {},
        V = T.gestureDirection,
        z = ((false === F || 'screen' === I) && !N) || L,
        module1053 = {
          layout: s,
          back: C,
          progress: n.progress,
          options: n.descriptor.options,
          route: n.descriptor.route,
          navigation: n.descriptor.navigation,
          styleInterpolator:
            'float' === l
              ? z
                ? 'vertical' === V || 'vertical-inverted' === V
                  ? require('./1053').forSlideUp
                  : 'horizontal-inverted' === V
                  ? require('./1053').forSlideRight
                  : require('./1053').forSlideLeft
                : M
              : require('./1053').forNoAnimation,
        };
      return React.createElement(
        require('./586').NavigationContext.Provider,
        {
          key: n.descriptor.route.key,
          value: n.descriptor.navigation,
        },
        React.createElement(
          require('./586').NavigationRouteContext.Provider,
          {
            value: n.descriptor.route,
          },
          React.createElement(
            ReactNative.View,
            {
              onLayout: v
                ? function (e) {
                    var t = e.nativeEvent.layout.height;
                    v({
                      route: n.descriptor.route,
                      height: t,
                    });
                  }
                : undefined,
              pointerEvents: j ? 'box-none' : 'none',
              accessibilityElementsHidden: !j,
              importantForAccessibility: j ? 'auto' : 'no-hide-descendants',
              style: ('float' === l && !j) || P ? i.header : null,
            },
            undefined !== S ? S(module1053) : React.createElement(module1061.default, module1053)
          )
        )
      );
    })
  );
};

var React = (function (e, t) {
    if (!t && e && e.__esModule) return e;
    if (null === e || ('object' != typeof e && 'function' != typeof e))
      return {
        default: e,
      };
    var o = n(t);
    if (o && o.has(e)) return o.get(e);
    var i = {},
      l = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var u in e)
      if ('default' !== u && Object.prototype.hasOwnProperty.call(e, u)) {
        var s = l ? Object.getOwnPropertyDescriptor(e, u) : null;
        if (s && (s.get || s.set)) Object.defineProperty(i, u, s);
        else i[u] = e[u];
      }

    i.default = e;
    if (o) o.set(e, i);
    return i;
  })(require('react')),
  ReactNative = require('react-native'),
  module1061 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1061'));

function n(e) {
  if ('function' != typeof WeakMap) return null;
  var t = new WeakMap(),
    o = new WeakMap();
  return (n = function (e) {
    return e ? o : t;
  })(e);
}

var i = ReactNative.StyleSheet.create({
  header: {
    position: 'absolute',
    top: 0,
    left: 0,
    right: 0,
  },
});
