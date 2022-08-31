var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = s(n);
    if (o && o.has(t)) return o.get(t);
    var l = {},
      u = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in t)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(t, c)) {
        var f = u ? Object.getOwnPropertyDescriptor(t, c) : null;
        if (f && (f.get || f.set)) Object.defineProperty(l, c, f);
        else l[c] = t[c];
      }

    l.default = t;
    if (o) o.set(t, l);
    return l;
  })(require('react')),
  ReactNative = require('react-native'),
  u = ['animating', 'color', 'hidesWhenStopped', 'size', 'style', 'theme'];

function s(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (s = function (t) {
    return t ? o : n;
  })(t);
}

var c = ReactNative.StyleSheet.create({
    container: {
      justifyContent: 'center',
      alignItems: 'center',
    },
    layer: module29.default({}, ReactNative.StyleSheet.absoluteFillObject, {
      justifyContent: 'center',
      alignItems: 'center',
    }),
  }),
  module679 = require('./679').withTheme(function (s) {
    var f = s.animating,
      p = undefined === f || f,
      y = s.color,
      h = s.hidesWhenStopped,
      v = undefined === h || h,
      w = s.size,
      b = undefined === w ? 'small' : w,
      A = s.style,
      V = s.theme,
      E = module105.default(s, u),
      O = React.useRef(new ReactNative.Animated.Value(0)).current,
      j = React.useRef(new ReactNative.Animated.Value(!p && v ? 0 : 1)).current,
      R = React.useRef(undefined),
      S = V.animation.scale,
      P = React.useCallback(
        function () {
          ReactNative.Animated.timing(j, {
            duration: 200 * S,
            toValue: 1,
            isInteraction: false,
            useNativeDriver: true,
          }).start();

          if (R.current) {
            O.setValue(0);
            ReactNative.Animated.loop(R.current).start();
          }
        },
        [S, j, O]
      ),
      W = function () {
        if (R.current) R.current.stop();
      };

    React.useEffect(
      function () {
        if (undefined === R.current)
          R.current = ReactNative.Animated.timing(O, {
            duration: 2400,
            easing: ReactNative.Easing.linear,
            useNativeDriver: 'web' !== ReactNative.Platform.OS,
            toValue: 1,
            isInteraction: false,
          });
        if (p) P();
        else if (v)
          ReactNative.Animated.timing(j, {
            duration: 200 * S,
            toValue: 0,
            useNativeDriver: true,
            isInteraction: false,
          }).start(W);
        else W();
      },
      [p, j, v, P, S, O]
    );

    var _ = y || V.colors.primary,
      k = 'string' == typeof b ? ('small' === b ? 24 : 48) : b || 24,
      D = ReactNative.Easing.bezier(0.4, 0, 0.7, 1),
      I = {
        width: k,
        height: k / 2,
        overflow: 'hidden',
      };

    return (
      <ReactNative.View>
        {React.createElement(
          ReactNative.Animated.View,
          {
            style: [
              {
                width: k,
                height: k,
                opacity: j,
              },
            ],
            collapsable: false,
          },
          [0, 1].map(function (t) {
            var n = Array.from(new Array(144), function (t, n) {
                return n / 143;
              }),
              u = Array.from(new Array(144), function (n, o) {
                var l = (2 * o) / 143,
                  u = t ? 345 : -165;
                if (l > 1) l = 2 - l;
                return 150 * (t ? -1 : 1) * D(l) + u + 'deg';
              }),
              s = {
                width: k,
                height: k,
                transform: [
                  {
                    rotate: O.interpolate({
                      inputRange: [0, 1],
                      outputRange: ['45deg', '765deg'],
                    }),
                  },
                ],
              },
              f = {
                width: k,
                height: k,
                transform: [
                  {
                    translateY: t ? -k / 2 : 0,
                  },
                  {
                    rotate: O.interpolate({
                      inputRange: n,
                      outputRange: u,
                    }),
                  },
                ],
              },
              p = t
                ? {
                    top: k / 2,
                  }
                : null,
              y = {
                width: k,
                height: k,
                borderColor: _,
                borderWidth: k / 10,
                borderRadius: k / 2,
              };
            return React.createElement(
              ReactNative.Animated.View,
              {
                key: t,
                style: [c.layer],
              },
              React.createElement(
                ReactNative.Animated.View,
                {
                  style: s,
                },
                React.createElement(
                  ReactNative.Animated.View,
                  {
                    style: [I, p],
                    collapsable: false,
                  },
                  React.createElement(
                    ReactNative.Animated.View,
                    {
                      style: f,
                    },
                    React.createElement(
                      ReactNative.Animated.View,
                      {
                        style: I,
                        collapsable: false,
                      },
                      React.createElement(ReactNative.Animated.View, {
                        style: y,
                      })
                    )
                  )
                )
              )
            );
          })
        )}
      </ReactNative.View>
    );
  });

exports.default = module679;
