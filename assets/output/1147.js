exports.default = function (p) {
  var h = p.children,
    y = p.style,
    b = p.visible,
    O = undefined === b || b,
    w = p.size,
    S = undefined === w ? 18 : w,
    j = module105.default(p, c),
    k = React.useState(function () {
      return new ReactNative.Animated.Value(O ? 1 : 0);
    }),
    M = module23.default(k, 1)[0],
    P = React.useState(O),
    _ = module23.default(P, 2),
    A = _[0],
    z = _[1],
    module586 = require('./586').useTheme();

  if (
    (React.useEffect(
      function () {
        if (A) {
          ReactNative.Animated.timing(M, {
            toValue: O ? 1 : 0,
            duration: 150,
            useNativeDriver: true,
          }).start(function (t) {
            if (t.finished && !O) z(false);
          });
          return function () {
            return M.stopAnimation();
          };
        }
      },
      [M, A, O]
    ),
    !A)
  ) {
    if (!O) return null;
    z(true);
  }

  var x = ReactNative.StyleSheet.flatten(y) || {},
    C = x.backgroundColor,
    D = undefined === C ? module586.colors.notification : C,
    R = module105.default(x, s),
    E = module1098.default(D).isLight() ? 'black' : 'white',
    H = S / 2,
    L = Math.floor((3 * S) / 4);
  return React.createElement(
    ReactNative.Animated.Text,
    module29.default(
      {
        numberOfLines: 1,
        style: [
          {
            transform: [
              {
                scale: M.interpolate({
                  inputRange: [0, 1],
                  outputRange: [0.5, 1],
                }),
              },
            ],
            color: E,
            lineHeight: S - 1,
            height: S,
            minWidth: S,
            opacity: M,
            backgroundColor: D,
            fontSize: L,
            borderRadius: H,
          },
          v.container,
          R,
        ],
      },
      j
    ),
    h
  );
};

var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  module1098 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1098')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = p(n);
    if (o && o.has(t)) return o.get(t);
    var u = {},
      l = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var f in t)
      if ('default' !== f && Object.prototype.hasOwnProperty.call(t, f)) {
        var c = l ? Object.getOwnPropertyDescriptor(t, f) : null;
        if (c && (c.get || c.set)) Object.defineProperty(u, f, c);
        else u[f] = t[f];
      }

    u.default = t;
    if (o) o.set(t, u);
    return u;
  })(require('react')),
  ReactNative = require('react-native'),
  c = ['children', 'style', 'visible', 'size'],
  s = ['backgroundColor'];

function p(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (p = function (t) {
    return t ? o : n;
  })(t);
}

var v = ReactNative.StyleSheet.create({
  container: {
    alignSelf: 'flex-end',
    textAlign: 'center',
    paddingHorizontal: 4,
    overflow: 'hidden',
  },
});
