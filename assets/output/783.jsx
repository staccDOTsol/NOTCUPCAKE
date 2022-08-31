var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  module681 = require('@babel/runtime/helpers/interopRequireDefault')(require('./681')),
  React = (function (t, l) {
    if (!l && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var n = w(l);
    if (n && n.has(t)) return n.get(t);
    var o = {},
      s = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in t)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(t, c)) {
        var u = s ? Object.getOwnPropertyDescriptor(t, c) : null;
        if (u && (u.get || u.set)) Object.defineProperty(o, c, u);
        else o[c] = t[c];
      }

    o.default = t;
    if (n) n.set(t, o);
    return o;
  })(require('react')),
  ReactNative = require('react-native'),
  module738 = require('@babel/runtime/helpers/interopRequireDefault')(require('./738')),
  module734 = require('@babel/runtime/helpers/interopRequireDefault')(require('./734')),
  module769 = require('@babel/runtime/helpers/interopRequireDefault')(require('./769')),
  module715 = require('@babel/runtime/helpers/interopRequireDefault')(require('./715')),
  module719 = require('@babel/runtime/helpers/interopRequireDefault')(require('./719')),
  module722 = require('@babel/runtime/helpers/interopRequireDefault')(require('./722')),
  module716 = require('@babel/runtime/helpers/interopRequireDefault')(require('./716')),
  h = [
    'small',
    'icon',
    'label',
    'accessibilityLabel',
    'accessibilityState',
    'animated',
    'color',
    'disabled',
    'onPress',
    'onLongPress',
    'theme',
    'style',
    'visible',
    'uppercase',
    'loading',
    'testID',
  ];

function w(t) {
  if ('function' != typeof WeakMap) return null;
  var l = new WeakMap(),
    n = new WeakMap();
  return (w = function (t) {
    return t ? n : l;
  })(t);
}

module716.default;

var module691 = function (w) {
    var module691 = w.small,
      E = w.icon,
      O = w.label,
      j = w.accessibilityLabel,
      D = undefined === j ? O : j,
      L = w.accessibilityState,
      S = w.animated,
      _ = undefined === S || S,
      A = w.color,
      C = w.disabled,
      M = w.onPress,
      T = w.onLongPress,
      x = w.theme,
      z = w.style,
      I = w.visible,
      R = undefined === I || I,
      V = w.uppercase,
      W = undefined === V || V,
      B = w.loading,
      F = w.testID,
      H = module105.default(w, h),
      N = React.useRef(new ReactNative.Animated.Value(R ? 1 : 0)).current,
      q = x.animation.scale;

    React.useEffect(
      function () {
        if (R)
          ReactNative.Animated.timing(N, {
            toValue: 1,
            duration: 200 * q,
            useNativeDriver: true,
          }).start();
        else
          ReactNative.Animated.timing(N, {
            toValue: 0,
            duration: 150 * q,
            useNativeDriver: true,
          }).start();
      },
      [R, q, N]
    );
    var G,
      J = _ ? module769.default : module715.default,
      module691 = module681
        .default(x.dark ? require('./691').white : require('./691').black)
        .alpha(0.12)
        .rgb()
        .string(),
      Q = (ReactNative.StyleSheet.flatten(z) || {}).backgroundColor,
      U = undefined === Q ? (C ? module691 : x.colors.accent) : Q;
    G =
      undefined !== A
        ? A
        : C
        ? module681
            .default(x.dark ? require('./691').white : require('./691').black)
            .alpha(0.32)
            .rgb()
            .string()
        : module716.default(U, require('./691').white, 'rgba(0, 0, 0, .54)');
    var X = module681.default(G).alpha(0.32).rgb().string();
    return (
      <module734.default>
        <module722.default
          borderless
          onPress={M}
          onLongPress={T}
          rippleColor={X}
          disabled={C}
          accessibilityLabel={D}
          accessibilityTraits={C ? ['button', 'disabled'] : 'button'}
          accessibilityComponentType="button"
          accessibilityRole="button"
          accessibilityState={module29.default({}, L, {
            disabled: C,
          })}
          style={k.touchable}
          testID={F}
        >
          <ReactNative.View style={[k.content, O ? k.extended : module691 ? k.small : k.standard]} pointerEvents="none">
            {E && true !== B ? <J source={E} size={24} color={G} /> : null}
            {B ? <module738.default size={18} color={G} /> : null}
            {O ? (
              <module719.default
                selectable={false}
                style={[
                  k.label,
                  W && k.uppercaseLabel,
                  module29.default(
                    {
                      color: G,
                    },
                    x.fonts.medium
                  ),
                ]}
              >
                {O}
              </module719.default>
            ) : null}
          </ReactNative.View>
        </module722.default>
      </module734.default>
    );
  },
  k = ReactNative.StyleSheet.create({
    container: {
      borderRadius: 28,
      elevation: 6,
    },
    touchable: {
      borderRadius: 28,
    },
    standard: {
      height: 56,
      width: 56,
    },
    small: {
      height: 40,
      width: 40,
    },
    extended: {
      height: 48,
      paddingHorizontal: 16,
    },
    content: {
      flexDirection: 'row',
      alignItems: 'center',
      justifyContent: 'center',
    },
    label: {
      marginHorizontal: 8,
    },
    uppercaseLabel: {
      textTransform: 'uppercase',
    },
    disabled: {
      elevation: 0,
    },
  }),
  module679 = require('./679').withTheme(module691);

exports.default = module679;

var module679 = require('./679').withTheme(module691);

exports.FAB = module679;
