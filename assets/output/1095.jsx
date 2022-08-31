exports.default = function (f) {
  var module1074 = require('./1074').useSafeAreaFrame(),
    module1074 = require('./1074').useSafeAreaInsets(),
    y = React.useContext(module1071.default),
    h = React.useContext(module1090.default),
    b = f.focused,
    P = f.modal,
    E = undefined !== P && P,
    O = f.header,
    w = f.headerShown,
    j = undefined === w || w,
    x = f.headerTransparent,
    S = f.headerStatusBarHeight,
    _ = undefined === S ? (y ? 0 : module1074.top) : S,
    M = f.navigation,
    C = f.route,
    k = f.children,
    A = f.style,
    D = React.useState(function () {
      return module1067.default(module1074, E, _);
    }),
    W = module23.default(D, 2),
    F = W[0],
    H = W[1];

  return (
    <module1066.default accessibilityElementsHidden={!b} importantForAccessibility={b ? 'auto' : 'no-hide-descendants'} style={[s.container, A]}>
      <ReactNative.View style={s.content}>
        {React.createElement(
          module1071.default.Provider,
          {
            value: y || false !== j,
          },
          React.createElement(
            module1090.default.Provider,
            {
              value: j ? F : null != h ? h : 0,
            },
            k
          )
        )}
      </ReactNative.View>
      {j
        ? React.createElement(
            require('./586').NavigationContext.Provider,
            {
              value: M,
            },
            React.createElement(
              require('./586').NavigationRouteContext.Provider,
              {
                value: C,
              },
              React.createElement(
                ReactNative.View,
                {
                  onLayout: function (e) {
                    var t = e.nativeEvent.layout.height;
                    H(t);
                  },
                  style: x ? s.absolute : null,
                },
                O
              )
            )
          )
        : null}
    </module1066.default>
  );
};

var module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  React = (function (e, t) {
    if (!t && e && e.__esModule) return e;
    if (null === e || ('object' != typeof e && 'function' != typeof e))
      return {
        default: e,
      };
    var n = f(t);
    if (n && n.has(e)) return n.get(e);
    var o = {},
      l = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var u in e)
      if ('default' !== u && Object.prototype.hasOwnProperty.call(e, u)) {
        var c = l ? Object.getOwnPropertyDescriptor(e, u) : null;
        if (c && (c.get || c.set)) Object.defineProperty(o, u, c);
        else o[u] = e[u];
      }

    o.default = e;
    if (n) n.set(e, o);
    return o;
  })(require('react')),
  ReactNative = require('react-native'),
  module1066 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1066')),
  module1067 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1067')),
  module1090 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1090')),
  module1071 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1071'));

function f(e) {
  if ('function' != typeof WeakMap) return null;
  var t = new WeakMap(),
    n = new WeakMap();
  return (f = function (e) {
    return e ? n : t;
  })(e);
}

var s = ReactNative.StyleSheet.create({
  container: {
    flex: 1,
    flexDirection: 'column-reverse',
  },
  content: {
    flex: 1,
  },
  absolute: {
    position: 'absolute',
    top: 0,
    left: 0,
    right: 0,
  },
});
