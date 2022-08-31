var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var i = v(n);
    if (i && i.has(t)) return i.get(t);
    var o = {},
      l = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var u in t)
      if ('default' !== u && Object.prototype.hasOwnProperty.call(t, u)) {
        var c = l ? Object.getOwnPropertyDescriptor(t, u) : null;
        if (c && (c.get || c.set)) Object.defineProperty(o, u, c);
        else o[u] = t[u];
      }

    o.default = t;
    if (i) i.set(t, o);
    return o;
  })(require('react')),
  ReactNative = require('react-native'),
  module734 = require('@babel/runtime/helpers/interopRequireDefault')(require('./734')),
  module719 = require('@babel/runtime/helpers/interopRequireDefault')(require('./719')),
  module740 = require('@babel/runtime/helpers/interopRequireDefault')(require('./740')),
  module715 = require('@babel/runtime/helpers/interopRequireDefault')(require('./715')),
  module711 = require('@babel/runtime/helpers/interopRequireDefault')(require('./711')),
  h = ['visible', 'icon', 'children', 'actions', 'contentStyle', 'style', 'theme', 'onShowAnimationFinished', 'onHideAnimationFinished'],
  p = ['label'];

function v(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    i = new WeakMap();
  return (v = function (t) {
    return t ? i : n;
  })(t);
}

var w = ReactNative.StyleSheet.create({
    container: {
      elevation: 1,
    },
    wrapper: {
      overflow: 'hidden',
      alignSelf: 'center',
      width: '100%',
      maxWidth: 960,
    },
    absolute: {
      position: 'absolute',
      top: 0,
      width: '100%',
    },
    content: {
      flexDirection: 'row',
      justifyContent: 'flex-start',
      marginHorizontal: 8,
      marginTop: 16,
      marginBottom: 0,
    },
    icon: {
      margin: 8,
    },
    message: {
      flex: 1,
      margin: 8,
    },
    actions: {
      flexDirection: 'row',
      justifyContent: 'flex-end',
      margin: 4,
    },
    button: {
      margin: 4,
    },
  }),
  module679 = require('./679').withTheme(function (v) {
    var b = v.visible,
      A = v.icon,
      E = v.children,
      j = v.actions,
      O = v.contentStyle,
      V = v.style,
      x = v.theme,
      S = v.onShowAnimationFinished,
      D = undefined === S ? function () {} : S,
      P = v.onHideAnimationFinished,
      _ = undefined === P ? function () {} : P,
      M = module105.default(v, h),
      k = React.useRef(new ReactNative.Animated.Value(b ? 1 : 0)).current,
      F = React.useState({
        height: 0,
        measured: false,
      }),
      W = module23.default(F, 2),
      H = W[0],
      R = W[1],
      z = x.animation.scale;

    React.useEffect(
      function () {
        if (b)
          ReactNative.Animated.timing(k, {
            duration: 250 * z,
            toValue: 1,
            useNativeDriver: false,
          }).start(D);
        else
          ReactNative.Animated.timing(k, {
            duration: 200 * z,
            toValue: 0,
            useNativeDriver: false,
          }).start(_);
      },
      [b, k, z]
    );
    var C = ReactNative.Animated.multiply(k, H.height),
      L = ReactNative.Animated.multiply(ReactNative.Animated.add(k, -1), H.height);
    return (
      <module734.default>
        <ReactNative.View style={[w.wrapper, O]}>
          {React.createElement(ReactNative.Animated.View, {
            style: {
              height: C,
            },
          })}
          {React.createElement(
            ReactNative.Animated.View,
            {
              onLayout: function (t) {
                var n = t.nativeEvent.layout.height;
                R({
                  height: n,
                  measured: true,
                });
              },
              style: [
                H.measured || !b
                  ? [
                      w.absolute,
                      {
                        transform: [
                          {
                            translateY: L,
                          },
                        ],
                      },
                    ]
                  : null,
                H.measured || b
                  ? null
                  : {
                      opacity: 0,
                    },
              ],
            },
            React.createElement(
              ReactNative.View,
              {
                style: w.content,
              },
              A
                ? React.createElement(
                    ReactNative.View,
                    {
                      style: w.icon,
                    },
                    React.createElement(module715.default, {
                      source: A,
                      size: 40,
                    })
                  )
                : null,
              React.createElement(
                module719.default,
                {
                  style: [
                    w.message,
                    {
                      color: x.colors.text,
                    },
                  ],
                  accessibilityLiveRegion: b ? 'polite' : 'none',
                  accessibilityRole: 'alert',
                },
                E
              )
            ),
            React.createElement(
              ReactNative.View,
              {
                style: w.actions,
              },
              j.map(function (n, l) {
                var u = n.label,
                  c = module105.default(n, p);
                return React.createElement(
                  module740.default,
                  module29.default(
                    {
                      key: l,
                      compact: true,
                      mode: 'text',
                      style: w.button,
                      color: x.colors.primary,
                    },
                    c
                  ),
                  u
                );
              })
            )
          )}
        </ReactNative.View>
      </module734.default>
    );
  });

exports.default = module679;
