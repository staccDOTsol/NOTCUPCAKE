var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var u = f(n);
    if (u && u.has(t)) return u.get(t);
    var o = {},
      l = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var s in t)
      if ('default' !== s && Object.prototype.hasOwnProperty.call(t, s)) {
        var c = l ? Object.getOwnPropertyDescriptor(t, s) : null;
        if (c && (c.get || c.set)) Object.defineProperty(o, s, c);
        else o[s] = t[s];
      }

    o.default = t;
    if (u) u.set(t, o);
    return o;
  })(require('react')),
  ReactNative = require('react-native'),
  module681 = require('@babel/runtime/helpers/interopRequireDefault')(require('./681')),
  c = ['color', 'indeterminate', 'style', 'progress', 'visible', 'theme'];

function f(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    u = new WeakMap();
  return (f = function (t) {
    return t ? u : n;
  })(t);
}

var p = ReactNative.I18nManager.isRTL,
  v = ReactNative.StyleSheet.create({
    container: {
      height: 4,
      overflow: 'hidden',
    },
    progressBar: {
      flex: 1,
    },
  }),
  module679 = require('./679').withTheme(function (f) {
    var y = f.color,
      b = f.indeterminate,
      w = f.style,
      h = f.progress,
      R = undefined === h ? 0 : h,
      V = f.visible,
      O = undefined === V || V,
      A = f.theme,
      j = module105.default(f, c),
      k = React.useRef(new ReactNative.Animated.Value(0)).current,
      P = React.useRef(new ReactNative.Animated.Value(0)).current,
      D = React.useState(0),
      E = module23.default(D, 2),
      M = E[0],
      S = E[1],
      _ = React.useState(0),
      I = module23.default(_, 2),
      C = I[0],
      N = I[1],
      W = React.useRef(null),
      x = A.animation.scale,
      B = React.useCallback(
        function () {
          ReactNative.Animated.timing(P, {
            duration: 200 * x,
            toValue: 1,
            useNativeDriver: true,
            isInteraction: false,
          }).start();

          if (b) {
            if (!W.current)
              W.current = ReactNative.Animated.timing(k, {
                duration: 2e3,
                toValue: 1,
                useNativeDriver: 'web' !== ReactNative.Platform.OS,
                isInteraction: false,
              });
            k.setValue(0);
            ReactNative.Animated.loop(W.current).start();
          } else
            ReactNative.Animated.timing(k, {
              duration: 200 * x,
              toValue: R || 0,
              useNativeDriver: true,
              isInteraction: false,
            }).start();
        },
        [x, k, R, b, P]
      ),
      L = React.useCallback(
        function () {
          if (W.current) W.current.stop();
          ReactNative.Animated.timing(P, {
            duration: 200 * x,
            toValue: 0,
            useNativeDriver: true,
            isInteraction: false,
          }).start();
        },
        [P, x]
      );

    React.useEffect(
      function () {
        if (O) B();
        else L();
      },
      [O, B, L]
    );
    React.useEffect(
      function () {
        if (O && 0 === C) B();
      },
      [C, B, O]
    );
    var T = y || A.colors.primary,
      X = module681.default(T).alpha(0.38).rgb().string();
    return (
      <ReactNative.View>
        {React.createElement(
          ReactNative.Animated.View,
          {
            style: [
              v.container,
              {
                backgroundColor: X,
                opacity: P,
              },
              w,
            ],
          },
          M
            ? React.createElement(ReactNative.Animated.View, {
                style: [
                  v.progressBar,
                  {
                    width: M,
                    backgroundColor: T,
                    transform: [
                      {
                        translateX: k.interpolate(
                          b
                            ? {
                                inputRange: [0, 0.5, 1],
                                outputRange: [0.5 * (p ? 1 : -1) * M, 0.5 * (p ? 1 : -1) * 0.6 * M, 0.7 * (p ? -1 : 1) * M],
                              }
                            : {
                                inputRange: [0, 1],
                                outputRange: [0.5 * (p ? 1 : -1) * M, 0],
                              }
                        ),
                      },
                      {
                        scaleX: k.interpolate(
                          b
                            ? {
                                inputRange: [0, 0.5, 1],
                                outputRange: [1e-4, 0.6, 1e-4],
                              }
                            : {
                                inputRange: [0, 1],
                                outputRange: [1e-4, 1],
                              }
                        ),
                      },
                    ],
                  },
                ],
              })
            : null
        )}
      </ReactNative.View>
    );
  });

exports.default = module679;
