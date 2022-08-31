var module256 = require('@babel/runtime/helpers/interopRequireDefault')(require('./256')),
  module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = v(n);
    if (o && o.has(t)) return o.get(t);
    var l = {},
      s = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var u in t)
      if ('default' !== u && Object.prototype.hasOwnProperty.call(t, u)) {
        var c = s ? Object.getOwnPropertyDescriptor(t, u) : null;
        if (c && (c.get || c.set)) Object.defineProperty(l, u, c);
        else l[u] = t[u];
      }

    l.default = t;
    if (o) o.set(t, l);
    return l;
  })(require('react')),
  module681 = require('@babel/runtime/helpers/interopRequireDefault')(require('./681')),
  ReactNative = require('react-native'),
  module734 = require('@babel/runtime/helpers/interopRequireDefault')(require('./734')),
  module715 = require('@babel/runtime/helpers/interopRequireDefault')(require('./715')),
  module722 = require('@babel/runtime/helpers/interopRequireDefault')(require('./722')),
  module735 = require('@babel/runtime/helpers/interopRequireDefault')(require('./735')),
  y = [
    'icon',
    'label',
    'accessibilityLabel',
    'accessibilityState',
    'color',
    'disabled',
    'onPress',
    'onLongPress',
    'theme',
    'style',
    'visible',
    'uppercase',
    'testID',
    'animateFrom',
    'extended',
    'iconMode',
  ];

function v(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (v = function (t) {
    return t ? o : n;
  })(t);
}

var w = ReactNative.StyleSheet.create({
    standard: {
      height: 56,
      borderRadius: 28,
    },
    disabled: {
      elevation: 0,
    },
    container: {
      position: 'absolute',
      backgroundColor: 'transparent',
      borderRadius: 28,
    },
    innerWrapper: {
      flexDirection: 'row',
      overflow: 'hidden',
      borderRadius: 28,
    },
    shadowWrapper: {
      elevation: 0,
    },
    shadow: {
      elevation: 6,
      borderRadius: 28,
    },
    touchable: {
      borderRadius: 28,
    },
    iconWrapper: {
      alignItems: 'center',
      justifyContent: 'center',
      position: 'absolute',
      height: 56,
      width: 56,
    },
    label: {
      position: 'absolute',
    },
    uppercaseLabel: {
      textTransform: 'uppercase',
    },
    textPlaceholderContainer: {
      height: 0,
      position: 'absolute',
    },
  }),
  module691 = require('./679').withTheme(function (v) {
    var E = v.icon,
      R = v.label,
      S = v.accessibilityLabel,
      P = undefined === S ? R : S,
      V = v.accessibilityState,
      A = v.color,
      L = v.disabled,
      W = v.onPress,
      M = v.onLongPress,
      O = v.theme,
      k = v.style,
      x = v.visible,
      C = undefined === x || x,
      D = v.uppercase,
      j = undefined === D || D,
      F = v.testID,
      T = v.animateFrom,
      I = undefined === T ? 'right' : T,
      _ = v.extended,
      N = undefined !== _ && _,
      z = v.iconMode,
      B = undefined === z ? 'dynamic' : z,
      X = module105.default(v, y),
      Y = 'ios' === ReactNative.Platform.OS,
      q = 'right' === I,
      G = 'static' === B,
      H = ReactNative.I18nManager.isRTL,
      J = React.useRef(new ReactNative.Animated.Value(C ? 1 : 0)).current,
      K = React.useRef(new ReactNative.Animated.Value(0)).current,
      Q = O.animation.scale,
      U = React.useState(0),
      Z = module23.default(U, 2),
      $ = Z[0],
      ee = Z[1],
      te = React.useState(0),
      ae = module23.default(te, 2),
      ie = ae[0],
      ne = ae[1];
    React.useEffect(
      function () {
        if (C)
          ReactNative.Animated.timing(J, {
            toValue: 1,
            duration: 200 * Q,
            useNativeDriver: true,
          }).start();
        else
          ReactNative.Animated.timing(J, {
            toValue: 0,
            duration: 150 * Q,
            useNativeDriver: true,
          }).start();
      },
      [C, Q, J]
    );
    var re,
      module691 = module681
        .default(O.dark ? require('./691').white : require('./691').black)
        .alpha(0.12)
        .rgb()
        .string(),
      le = (ReactNative.StyleSheet.flatten(k) || {}).backgroundColor,
      se = undefined === le ? (L ? module691 : O.colors.accent) : le;
    re =
      undefined !== A
        ? A
        : L
        ? module681
            .default(O.dark ? require('./691').white : require('./691').black)
            .alpha(0.32)
            .rgb()
            .string()
        : module681.default(se).isLight()
        ? 'rgba(0, 0, 0, .54)'
        : require('./691').white;
    var de = module681.default(re).alpha(0.32).rgb().string(),
      ue = $ + 84,
      ce = q ? -$ - 28 : $ + 28;
    React.useEffect(
      function () {
        ReactNative.Animated.timing(K, {
          toValue: N ? ce : 0,
          duration: 150 * Q,
          useNativeDriver: true,
          easing: ReactNative.Easing.linear,
        }).start();
      },
      [K, Q, ce, N]
    );

    var pe = function (t) {
        var n = t.nativeEvent,
          o = Math.ceil(n.lines[0].width),
          l = Math.ceil(n.lines[0].height);

        if (o !== $ || l !== ie) {
          if ((ne(l), Y)) return ee(o - 12);
          ee(o);
        }
      },
      be = function (t) {
        return q ? t : t.reverse();
      },
      module736 = require('./736').getCombinedStyles({
        isAnimatedFromRight: q,
        isIconStatic: G,
        distance: ce,
        animFAB: K,
      });

    return (
      <module734.default>
        {React.createElement(
          ReactNative.Animated.View,
          {
            style: [
              {
                transform: [
                  {
                    scaleY: K.interpolate({
                      inputRange: be([ce, 0]),
                      outputRange: be([0.9, 1]),
                    }),
                  },
                ],
              },
              w.standard,
            ],
          },
          React.createElement(
            ReactNative.View,
            {
              style: [ReactNative.StyleSheet.absoluteFill, w.shadowWrapper],
            },
            React.createElement(ReactNative.Animated.View, {
              pointerEvents: 'none',
              style: [
                ReactNative.StyleSheet.absoluteFill,
                w.shadow,
                {
                  width: ue,
                  opacity: K.interpolate({
                    inputRange: be([ce, 0.9 * ce, 0]),
                    outputRange: be([1, 0.15, 0]),
                  }),
                },
              ],
            }),
            React.createElement(ReactNative.Animated.View, {
              pointerEvents: 'none',
              style: [
                ReactNative.StyleSheet.absoluteFill,
                w.shadow,
                {
                  opacity: K.interpolate({
                    inputRange: be([ce, 0.9 * ce, 0]),
                    outputRange: be([0, 0.85, 1]),
                  }),
                  width: 56,
                  borderRadius: K.interpolate({
                    inputRange: be([ce, 0]),
                    outputRange: be([56 / (ue / 56), 28]),
                  }),
                },
                module736.absoluteFill,
              ],
            })
          ),
          React.createElement(
            ReactNative.Animated.View,
            {
              pointerEvents: 'box-none',
              style: [w.innerWrapper],
            },
            React.createElement(
              ReactNative.Animated.View,
              {
                style: [
                  w.standard,
                  {
                    width: ue,
                    backgroundColor: se,
                  },
                  module736.innerWrapper,
                ],
              },
              React.createElement(
                module722.default,
                {
                  borderless: true,
                  onPress: W,
                  onLongPress: M,
                  rippleColor: de,
                  disabled: L,
                  accessibilityLabel: P,
                  accessibilityTraits: L ? ['button', 'disabled'] : 'button',
                  accessibilityComponentType: 'button',
                  accessibilityRole: 'button',
                  accessibilityState: module29.default({}, V, {
                    disabled: L,
                  }),
                  testID: F,
                  style: w.touchable,
                },
                React.createElement(ReactNative.View, {
                  style: [
                    w.standard,
                    {
                      width: ue,
                    },
                  ],
                })
              )
            )
          )
        )}
        {React.createElement(
          ReactNative.Animated.View,
          {
            style: [w.iconWrapper, module736.iconWrapper],
            pointerEvents: 'none',
          },
          React.createElement(module715.default, {
            source: E,
            size: 24,
            color: re,
          })
        )}
        <ReactNative.View pointerEvents="none">
          <module735.default
            numberOfLines={1}
            onTextLayout={Y ? pe : undefined}
            ellipsizeMode="tail"
            style={[
              module256.default({}, q || H ? 'right' : 'left', G ? (Y ? 46 : 44) : 28),
              {
                minWidth: $,
                top: -28 - ie / 2,
                opacity: K.interpolate({
                  inputRange: be([ce, 0.7 * ce, 0]),
                  outputRange: be([1, 0, 0]),
                }),
                transform: [
                  {
                    translateX: K.interpolate({
                      inputRange: be([ce, 0]),
                      outputRange: be([0, 56]),
                    }),
                  },
                ],
              },
              w.label,
              j && w.uppercaseLabel,
              module29.default(
                {
                  color: re,
                },
                O.fonts.medium
              ),
            ]}
          >
            {R}
          </module735.default>
        </ReactNative.View>
        {!Y &&
          React.createElement(
            ReactNative.ScrollView,
            {
              style: w.textPlaceholderContainer,
            },
            React.createElement(
              ReactNative.Text,
              {
                onTextLayout: pe,
              },
              R
            )
          )}
      </module734.default>
    );
  });

exports.default = module691;
