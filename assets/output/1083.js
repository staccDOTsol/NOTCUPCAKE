exports.default = function (e) {
  var s = e.disabled,
    f = e.allowFontScaling,
    b = e.backImage,
    y = e.label,
    p = e.labelStyle,
    h = e.labelVisible,
    v = e.onLabelLayout,
    w = e.onPress,
    M = e.pressColor,
    k = e.pressOpacity,
    L = e.screenLayout,
    O = e.tintColor,
    P = e.titleLayout,
    S = e.truncatedLabel,
    E = undefined === S ? 'Back' : S,
    I = e.accessibilityLabel,
    W = undefined === I ? (y && 'Back' !== y ? y + ', back' : 'Go back') : I,
    x = e.testID,
    C = e.style,
    module586 = require('./586').useTheme().colors,
    D = React.useState(undefined),
    R = module23.default(D, 2),
    V = R[0],
    _ = R[1],
    F =
      undefined !== O
        ? O
        : ReactNative.Platform.select({
            ios: module586.primary,
            default: module586.text,
          }),
    z = function (e) {
      if (!(null == v)) v(e);

      _(e.nativeEvent.layout.x + e.nativeEvent.layout.width);
    },
    T = function () {
      return !y || (V && P && L && (L.width - P.width) / 2 < V + 26);
    };

  return React.createElement(
    module1086.default,
    {
      disabled: s,
      accessible: true,
      accessibilityRole: 'button',
      accessibilityLabel: W,
      testID: x,
      onPress: s
        ? undefined
        : function () {
            return w && requestAnimationFrame(w);
          },
      pressColor: M,
      pressOpacity: k,
      android_ripple: {
        borderless: true,
      },
      style: [u.container, s && u.disabled, C],
      hitSlop: ReactNative.Platform.select({
        ios: undefined,
        default: {
          top: 16,
          right: 16,
          bottom: 16,
          left: 16,
        },
      }),
    },
    React.createElement(
      React.Fragment,
      null,
      b
        ? b({
            tintColor: F,
          })
        : React.createElement(ReactNative.Image, {
            style: [
              u.icon,
              Boolean(h) && u.iconWithLabel,
              Boolean(F) && {
                tintColor: F,
              },
            ],
            source: require('./1087'),
            fadeDuration: 0,
          }),
      (function () {
        var e = T() ? E : y;
        if (!h || undefined === e) return null;
        var t = React.createElement(
          ReactNative.View,
          {
            style: L
              ? [
                  u.labelWrapper,
                  {
                    minWidth: L.width / 2 - 27,
                  },
                ]
              : null,
          },
          React.createElement(
            ReactNative.Animated.Text,
            {
              accessible: false,
              onLayout: e === y ? z : undefined,
              style: [
                u.label,
                F
                  ? {
                      color: F,
                    }
                  : null,
                p,
              ],
              numberOfLines: 1,
              allowFontScaling: !!f,
            },
            e
          )
        );
        if (b || 'ios' !== ReactNative.Platform.OS) return t;
        return React.createElement(
          module1084.default,
          {
            maskElement: React.createElement(
              ReactNative.View,
              {
                style: u.iconMaskContainer,
              },
              React.createElement(ReactNative.Image, {
                source: require('./1088'),
                style: u.iconMask,
              }),
              React.createElement(ReactNative.View, {
                style: u.iconMaskFillerRect,
              })
            ),
          },
          t
        );
      })()
    )
  );
};

var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  React = (function (e, t) {
    if (!t && e && e.__esModule) return e;
    if (null === e || ('object' != typeof e && 'function' != typeof e))
      return {
        default: e,
      };
    var n = s(t);
    if (n && n.has(e)) return n.get(e);
    var l = {},
      o = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in e)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(e, c)) {
        var u = o ? Object.getOwnPropertyDescriptor(e, c) : null;
        if (u && (u.get || u.set)) Object.defineProperty(l, c, u);
        else l[c] = e[c];
      }

    l.default = e;
    if (n) n.set(e, l);
    return l;
  })(require('react')),
  ReactNative = require('react-native'),
  module1084 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1084')),
  module1086 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1086'));

function s(e) {
  if ('function' != typeof WeakMap) return null;
  var t = new WeakMap(),
    n = new WeakMap();
  return (s = function (e) {
    return e ? n : t;
  })(e);
}

var u = ReactNative.StyleSheet.create({
  container: module29.default(
    {
      alignItems: 'center',
      flexDirection: 'row',
      minWidth: ReactNative.StyleSheet.hairlineWidth,
    },
    ReactNative.Platform.select({
      ios: null,
      default: {
        marginVertical: 3,
        marginHorizontal: 11,
      },
    })
  ),
  disabled: {
    opacity: 0.5,
  },
  label: {
    fontSize: 17,
    letterSpacing: 0.35,
  },
  labelWrapper: {
    flexDirection: 'row',
    alignItems: 'flex-start',
  },
  icon: ReactNative.Platform.select({
    ios: {
      height: 21,
      width: 13,
      marginLeft: 8,
      marginRight: 22,
      marginVertical: 12,
      resizeMode: 'contain',
      transform: [
        {
          scaleX: ReactNative.I18nManager.isRTL ? -1 : 1,
        },
      ],
    },
    default: {
      height: 24,
      width: 24,
      margin: 3,
      resizeMode: 'contain',
      transform: [
        {
          scaleX: ReactNative.I18nManager.isRTL ? -1 : 1,
        },
      ],
    },
  }),
  iconWithLabel:
    'ios' === ReactNative.Platform.OS
      ? {
          marginRight: 6,
        }
      : {},
  iconMaskContainer: {
    flex: 1,
    flexDirection: 'row',
    justifyContent: 'center',
  },
  iconMaskFillerRect: {
    flex: 1,
    backgroundColor: '#000',
  },
  iconMask: {
    height: 21,
    width: 13,
    marginLeft: -14.5,
    marginVertical: 12,
    alignSelf: 'center',
    resizeMode: 'contain',
    transform: [
      {
        scaleX: ReactNative.I18nManager.isRTL ? -1 : 1,
      },
    ],
  },
});
