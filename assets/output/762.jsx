var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, l) {
    if (!l && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = h(l);
    if (o && o.has(t)) return o.get(t);
    var n = {},
      s = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in t)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(t, c)) {
        var u = s ? Object.getOwnPropertyDescriptor(t, c) : null;
        if (u && (u.get || u.set)) Object.defineProperty(n, c, u);
        else n[c] = t[c];
      }

    n.default = t;
    if (o) o.set(t, n);
    return n;
  })(require('react')),
  ReactNative = require('react-native'),
  module681 = require('@babel/runtime/helpers/interopRequireDefault')(require('./681')),
  module715 = require('@babel/runtime/helpers/interopRequireDefault')(require('./715')),
  module698 = require('@babel/runtime/helpers/interopRequireDefault')(require('./698')),
  module734 = require('@babel/runtime/helpers/interopRequireDefault')(require('./734')),
  module719 = require('@babel/runtime/helpers/interopRequireDefault')(require('./719')),
  module722 = require('@babel/runtime/helpers/interopRequireDefault')(require('./722')),
  p = [
    'mode',
    'children',
    'icon',
    'avatar',
    'selected',
    'disabled',
    'accessibilityLabel',
    'closeIconAccessibilityLabel',
    'onPress',
    'onLongPress',
    'onClose',
    'closeIcon',
    'textStyle',
    'style',
    'theme',
    'testID',
    'selectedColor',
    'ellipsizeMode',
  ];

function h(t) {
  if ('function' != typeof WeakMap) return null;
  var l = new WeakMap(),
    o = new WeakMap();
  return (h = function (t) {
    return t ? o : l;
  })(t);
}

var v = ReactNative.StyleSheet.create({
    container: {
      borderWidth: ReactNative.StyleSheet.hairlineWidth,
      borderStyle: 'solid',
      flexDirection: ReactNative.Platform.select({
        default: 'column',
        web: 'row',
      }),
    },
    content: {
      flexDirection: 'row',
      alignItems: 'center',
      paddingLeft: 4,
      position: 'relative',
      flexGrow: 1,
    },
    icon: {
      padding: 4,
      alignSelf: 'center',
    },
    closeIcon: {
      marginRight: 4,
    },
    text: {
      minHeight: 24,
      lineHeight: 24,
      textAlignVertical: 'center',
      marginVertical: 4,
    },
    avatar: {
      width: 24,
      height: 24,
      borderRadius: 12,
    },
    avatarWrapper: {
      marginRight: 4,
    },
    avatarSelected: {
      position: 'absolute',
      top: 4,
      left: 4,
      backgroundColor: 'rgba(0, 0, 0, .29)',
    },
    closeButtonStyle: {
      position: 'absolute',
      right: 0,
      height: '100%',
      justifyContent: 'center',
      alignItems: 'center',
    },
    touchable: {
      flexGrow: 1,
    },
  }),
  module691 = require('./679').withTheme(function (h) {
    var w = h.mode,
      P = undefined === w ? 'flat' : w,
      S = h.children,
      E = h.icon,
      C = h.avatar,
      I = h.selected,
      L = undefined !== I && I,
      O = h.disabled,
      k = undefined !== O && O,
      x = h.accessibilityLabel,
      R = h.closeIconAccessibilityLabel,
      V = undefined === R ? 'Close' : R,
      D = h.onPress,
      j = h.onLongPress,
      M = h.onClose,
      W = h.closeIcon,
      z = h.textStyle,
      A = h.style,
      T = h.theme,
      _ = h.testID,
      B = h.selectedColor,
      G = h.ellipsizeMode,
      H = module105.default(h, p),
      N = React.useRef(new ReactNative.Animated.Value(0)).current,
      F = T.dark,
      q = T.colors,
      J = 'outlined' === P ? q.surface : F ? '#383838' : '#ebebeb',
      K = ReactNative.StyleSheet.flatten(A) || {},
      Q = K.backgroundColor,
      U = undefined === Q ? J : Q,
      X = K.borderRadius,
      Y = undefined === X ? 16 : X,
      module691 =
        'outlined' === P
          ? module681
              .default(undefined !== B ? B : module681.default(F ? require('./691').white : require('./691').black))
              .alpha(0.29)
              .rgb()
              .string()
          : U,
      $ = k
        ? q.disabled
        : module681
            .default(undefined !== B ? B : q.text)
            .alpha(0.87)
            .rgb()
            .string(),
      ee = k
        ? q.disabled
        : module681
            .default(undefined !== B ? B : q.text)
            .alpha(0.54)
            .rgb()
            .string(),
      te = 'string' == typeof U ? U : J,
      le = (F ? module681.default(te).lighten('outlined' === P ? 0.2 : 0.4) : module681.default(te).darken('outlined' === P ? 0.08 : 0.2)).rgb().string(),
      ie = B ? module681.default(B).fade(0.5).rgb().string() : le,
      ae = ['button'],
      re = {
        selected: L,
        disabled: k,
      };
    if (L) ae.push('selected');
    if (k) ae.push('disabled');
    return (
      <module734.default>
        <module722.default
          borderless
          delayPressIn={0}
          style={[
            {
              borderRadius: Y,
            },
            v.touchable,
          ]}
          onPress={D}
          onLongPress={j}
          onPressIn={function () {
            var t = T.animation.scale;
            ReactNative.Animated.timing(N, {
              toValue: 4,
              duration: 200 * t,
              useNativeDriver: true,
            }).start();
          }}
          onPressOut={function () {
            var t = T.animation.scale;
            ReactNative.Animated.timing(N, {
              toValue: 0,
              duration: 150 * t,
              useNativeDriver: true,
            }).start();
          }}
          underlayColor={ie}
          disabled={k}
          accessibilityLabel={x}
          accessibilityTraits={ae}
          accessibilityComponentType="button"
          accessibilityRole="button"
          accessibilityState={re}
          testID={_}
        >
          <ReactNative.View
            style={[
              v.content,
              {
                paddingRight: M ? 32 : 4,
              },
            ]}
          >
            {C && !E ? (
              <ReactNative.View
                style={[
                  v.avatarWrapper,
                  k && {
                    opacity: 0.26,
                  },
                ]}
              >
                {React.isValidElement(C)
                  ? React.cloneElement(C, {
                      style: [v.avatar, C.props.style],
                    })
                  : C}
              </ReactNative.View>
            ) : null}
            {E || L ? (
              <ReactNative.View style={[v.icon, C ? [v.avatar, v.avatarSelected] : null]}>
                {E ? (
                  <module715.default source={E} color={C ? require('./691').white : ee} size={18} />
                ) : (
                  <module698.default name="check" color={C ? require('./691').white : ee} size={18} direction="ltr" />
                )}
              </ReactNative.View>
            ) : null}
            <module719.default
              selectable={false}
              numberOfLines={1}
              style={[
                v.text,
                module29.default({}, T.fonts.regular, {
                  color: $,
                  marginRight: M ? 0 : 8,
                  marginLeft: C || E || L ? 4 : 8,
                }),
                z,
              ]}
              ellipsizeMode={G}
            >
              {S}
            </module719.default>
          </ReactNative.View>
        </module722.default>
        {M ? (
          <ReactNative.View style={v.closeButtonStyle}>
            <ReactNative.TouchableWithoutFeedback onPress={M} accessibilityTraits="button" accessibilityComponentType="button" accessibilityRole="button" accessibilityLabel={V}>
              <ReactNative.View style={[v.icon, v.closeIcon]}>
                {W ? <module715.default source={W} color={ee} size={16} /> : <module698.default name="close-circle" size={16} color={ee} direction="ltr" />}
              </ReactNative.View>
            </ReactNative.TouchableWithoutFeedback>
          </ReactNative.View>
        ) : null}
      </module734.default>
    );
  });

exports.default = module691;
