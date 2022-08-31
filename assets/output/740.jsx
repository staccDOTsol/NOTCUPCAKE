var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var l = h(n);
    if (l && l.has(t)) return l.get(t);
    var o = {},
      c = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var s in t)
      if ('default' !== s && Object.prototype.hasOwnProperty.call(t, s)) {
        var u = c ? Object.getOwnPropertyDescriptor(t, s) : null;
        if (u && (u.get || u.set)) Object.defineProperty(o, s, u);
        else o[s] = t[s];
      }

    o.default = t;
    if (l) l.set(t, o);
    return o;
  })(require('react')),
  ReactNative = require('react-native'),
  module681 = require('@babel/runtime/helpers/interopRequireDefault')(require('./681')),
  module738 = require('@babel/runtime/helpers/interopRequireDefault')(require('./738')),
  module715 = require('@babel/runtime/helpers/interopRequireDefault')(require('./715')),
  module734 = require('@babel/runtime/helpers/interopRequireDefault')(require('./734')),
  module719 = require('@babel/runtime/helpers/interopRequireDefault')(require('./719')),
  module722 = require('@babel/runtime/helpers/interopRequireDefault')(require('./722')),
  y = [
    'disabled',
    'compact',
    'mode',
    'dark',
    'loading',
    'icon',
    'color',
    'children',
    'uppercase',
    'accessibilityLabel',
    'accessibilityHint',
    'onPress',
    'onLongPress',
    'style',
    'theme',
    'contentStyle',
    'labelStyle',
    'testID',
    'accessible',
  ];

function h(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    l = new WeakMap();
  return (h = function (t) {
    return t ? l : n;
  })(t);
}

var v = ReactNative.StyleSheet.create({
    button: {
      minWidth: 64,
      borderStyle: 'solid',
    },
    compact: {
      minWidth: 'auto',
    },
    content: {
      flexDirection: 'row',
      alignItems: 'center',
      justifyContent: 'center',
    },
    icon: {
      marginLeft: 12,
      marginRight: -4,
    },
    iconReverse: {
      marginRight: 12,
      marginLeft: -4,
    },
    label: {
      textAlign: 'center',
      letterSpacing: 1,
      marginVertical: 9,
      marginHorizontal: 16,
    },
    compactLabel: {
      marginHorizontal: 8,
    },
    uppercaseLabel: {
      textTransform: 'uppercase',
    },
  }),
  module691 = require('./679').withTheme(function (h) {
    var S,
      w = h.disabled,
      P = h.compact,
      L = h.mode,
      k = undefined === L ? 'text' : L,
      O = h.dark,
      D = h.loading,
      R = h.icon,
      j = h.color,
      E = h.children,
      V = h.uppercase,
      W = undefined === V || V,
      I = h.accessibilityLabel,
      _ = h.accessibilityHint,
      x = h.onPress,
      z = h.onLongPress,
      C = h.style,
      H = h.theme,
      M = h.contentStyle,
      A = h.labelStyle,
      T = h.testID,
      N = h.accessible,
      q = module105.default(h, y),
      B = React.useRef(new ReactNative.Animated.Value(w || 'contained' !== k ? 0 : 2)).current;
    React.useEffect(
      function () {
        B.setValue(w || 'contained' !== k ? 0 : 2);
      },
      [k, B, w]
    );
    var F,
      G,
      J,
      K,
      Q = H.colors,
      U = H.roundness,
      X = H.fonts.medium;
    F =
      'contained' === k
        ? w
          ? module681
              .default(H.dark ? require('./691').white : require('./691').black)
              .alpha(0.12)
              .rgb()
              .string()
          : j || Q.primary
        : 'transparent';

    if ('outlined' === k) {
      G = module681
        .default(H.dark ? require('./691').white : require('./691').black)
        .alpha(0.29)
        .rgb()
        .string();
      K = ReactNative.StyleSheet.hairlineWidth;
    } else {
      G = 'transparent';
      K = 0;
    }

    J = w
      ? module681
          .default(H.dark ? require('./691').white : require('./691').black)
          .alpha(0.32)
          .rgb()
          .string()
      : 'contained' === k
      ? ('boolean' == typeof O ? O : 'transparent' !== F && !module681.default(F).isLight())
        ? require('./691').white
        : require('./691').black
      : j || Q.primary;
    var Y = module681.default(J).alpha(0.32).rgb().string(),
      Z = {
        backgroundColor: F,
        borderColor: G,
        borderWidth: K,
        borderRadius: U,
      },
      $ = {
        borderRadius: (C && (ReactNative.StyleSheet.flatten(C) || {}).borderRadius) || U,
      },
      ee = ReactNative.StyleSheet.flatten(A) || {},
      te = ee.color,
      ae = ee.fontSize,
      ne = module29.default(
        {
          color: J,
        },
        X
      ),
      re = 'row-reverse' === (null == (S = ReactNative.StyleSheet.flatten(M)) ? undefined : S.flexDirection) ? v.iconReverse : v.icon;
    return (
      <module734.default>
        <module722.default
          borderless
          delayPressIn={0}
          onPress={x}
          onLongPress={z}
          onPressIn={function () {
            if ('contained' === k) {
              var t = H.animation.scale;
              ReactNative.Animated.timing(B, {
                toValue: 8,
                duration: 200 * t,
                useNativeDriver: true,
              }).start();
            }
          }}
          onPressOut={function () {
            if ('contained' === k) {
              var t = H.animation.scale;
              ReactNative.Animated.timing(B, {
                toValue: 2,
                duration: 150 * t,
                useNativeDriver: true,
              }).start();
            }
          }}
          accessibilityLabel={I}
          accessibilityHint={_}
          accessibilityTraits={w ? ['button', 'disabled'] : 'button'}
          accessibilityComponentType="button"
          accessibilityRole="button"
          accessibilityState={{
            disabled: w,
          }}
          accessible={N}
          disabled={w}
          rippleColor={Y}
          style={$}
          testID={T}
        >
          <ReactNative.View style={[v.content, M]}>
            {R && true !== D ? (
              <ReactNative.View style={re}>
                <module715.default source={R} size={null != ae ? ae : 16} color={'string' == typeof te ? te : J} />
              </ReactNative.View>
            ) : null}
            {D ? <module738.default size={null != ae ? ae : 16} color={'string' == typeof te ? te : J} style={re} /> : null}
            <module719.default selectable={false} numberOfLines={1} style={[v.label, P && v.compactLabel, W && v.uppercaseLabel, ne, X, A]}>
              {E}
            </module719.default>
          </ReactNative.View>
        </module722.default>
      </module734.default>
    );
  });

exports.default = module691;
