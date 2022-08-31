var module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  React = c(require('react')),
  ReactNative = require('react-native'),
  module715 = c(require('./715'));

function l(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (l = function (t) {
    return t ? o : n;
  })(t);
}

function c(t, n) {
  if (!n && t && t.__esModule) return t;
  if (null === t || ('object' != typeof t && 'function' != typeof t))
    return {
      default: t,
    };
  var o = l(n);
  if (o && o.has(t)) return o.get(t);
  var u = {},
    c = Object.defineProperty && Object.getOwnPropertyDescriptor;

  for (var f in t)
    if ('default' !== f && Object.prototype.hasOwnProperty.call(t, f)) {
      var s = c ? Object.getOwnPropertyDescriptor(t, f) : null;
      if (s && (s.get || s.set)) Object.defineProperty(u, f, s);
      else u[f] = t[f];
    }

  u.default = t;
  if (o) o.set(t, u);
  return u;
}

var module679 = require('./679').withTheme(function (l) {
  var c = l.color,
    f = l.size,
    p = l.source,
    y = l.theme,
    v = React.useState(function () {
      return p;
    }),
    w = module23.default(v, 2),
    h = w[0],
    b = w[1],
    O = React.useState(null),
    j = module23.default(O, 2),
    E = j[0],
    R = j[1],
    V = React.useRef(new ReactNative.Animated.Value(1)).current,
    P = y.animation.scale;

  if (h !== p) {
    R(function () {
      return h;
    });
    b(function () {
      return p;
    });
  }

  React.useEffect(
    function () {
      if (module715.isValidIcon(E) && !module715.isEqualIcon(E, h)) {
        V.setValue(1);
        ReactNative.Animated.timing(V, {
          duration: 200 * P,
          toValue: 0,
          useNativeDriver: true,
        }).start();
      }
    },
    [h, E, V, P]
  );
  var _ = V,
    M = E
      ? V.interpolate({
          inputRange: [0, 1],
          outputRange: [1, 0],
        })
      : 1,
    A = V.interpolate({
      inputRange: [0, 1],
      outputRange: ['-90deg', '0deg'],
    }),
    S = E
      ? V.interpolate({
          inputRange: [0, 1],
          outputRange: ['0deg', '-180deg'],
        })
      : '0deg';
  return (
    <ReactNative.View
      style={[
        s.content,
        {
          height: f,
          width: f,
        },
      ]}
    >
      {E
        ? React.createElement(
            ReactNative.Animated.View,
            {
              style: [
                s.icon,
                {
                  opacity: _,
                  transform: [
                    {
                      rotate: A,
                    },
                  ],
                },
              ],
            },
            React.createElement(module715.default, {
              source: E,
              size: f,
              color: c,
            })
          )
        : null}
      {React.createElement(
        ReactNative.Animated.View,
        {
          style: [
            s.icon,
            {
              opacity: M,
              transform: [
                {
                  rotate: S,
                },
              ],
            },
          ],
        },
        React.createElement(module715.default, {
          source: h,
          size: f,
          color: c,
        })
      )}
    </ReactNative.View>
  );
});

exports.default = module679;
var s = ReactNative.StyleSheet.create({
  content: {
    alignItems: 'center',
    justifyContent: 'center',
  },
  icon: {
    position: 'absolute',
    top: 0,
    left: 0,
    right: 0,
    bottom: 0,
  },
});
