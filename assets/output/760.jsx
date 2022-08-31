var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = b(n);
    if (o && o.has(t)) return o.get(t);
    var l = {},
      c = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var s in t)
      if ('default' !== s && Object.prototype.hasOwnProperty.call(t, s)) {
        var u = c ? Object.getOwnPropertyDescriptor(t, s) : null;
        if (u && (u.get || u.set)) Object.defineProperty(l, s, u);
        else l[s] = t[s];
      }

    l.default = t;
    if (o) o.set(t, l);
    return l;
  })(require('react')),
  ReactNative = require('react-native'),
  module681 = require('@babel/runtime/helpers/interopRequireDefault')(require('./681')),
  module698 = require('@babel/runtime/helpers/interopRequireDefault')(require('./698')),
  module722 = require('@babel/runtime/helpers/interopRequireDefault')(require('./722')),
  f = ['status', 'theme', 'disabled', 'onPress', 'testID'];

function b(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (b = function (t) {
    return t ? o : n;
  })(t);
}

var h = function (b) {
  var h = b.status,
    y = b.theme,
    v = b.disabled,
    k = b.onPress,
    w = b.testID,
    C = module105.default(b, f),
    x = React.useRef(new ReactNative.Animated.Value(1)).current,
    A = React.useRef(true),
    O = y.animation.scale;
  React.useEffect(
    function () {
      if (A.current) A.current = false;
      else {
        var t = 'checked' === h;
        ReactNative.Animated.sequence([
          ReactNative.Animated.timing(x, {
            toValue: 0.85,
            duration: t ? 100 * O : 0,
            useNativeDriver: false,
          }),
          ReactNative.Animated.timing(x, {
            toValue: 1,
            duration: t ? 100 * O : 100 * O * 1.75,
            useNativeDriver: false,
          }),
        ]).start();
      }
    },
    [h, x, O]
  );
  var P,
    j,
    D = 'checked' === h,
    R = 'indeterminate' === h,
    E = C.color || y.colors.accent,
    S =
      C.uncheckedColor ||
      module681
        .default(y.colors.text)
        .alpha(y.dark ? 0.7 : 0.54)
        .rgb()
        .string();

  if (v) {
    P = module681.default(y.colors.text).alpha(0.16).rgb().string();
    j = y.colors.disabled;
  } else {
    P = module681.default(E).fade(0.32).rgb().string();
    j = D ? E : S;
  }

  var V = x.interpolate({
      inputRange: [0.8, 1],
      outputRange: [7, 0],
    }),
    _ = R ? 'minus-box' : D ? 'checkbox-marked' : 'checkbox-blank-outline';

  return (
    <module722.default>
      {React.createElement(
        ReactNative.Animated.View,
        {
          style: {
            transform: [
              {
                scale: x,
              },
            ],
          },
        },
        React.createElement(module698.default, {
          allowFontScaling: false,
          name: _,
          size: 24,
          color: j,
          direction: 'ltr',
        }),
        React.createElement(
          ReactNative.View,
          {
            style: [ReactNative.StyleSheet.absoluteFill, p.fillContainer],
          },
          React.createElement(ReactNative.Animated.View, {
            style: [
              p.fill,
              {
                borderColor: j,
              },
              {
                borderWidth: V,
              },
            ],
          })
        )
      )}
    </module722.default>
  );
};

h.displayName = 'Checkbox.Android';

var p = ReactNative.StyleSheet.create({
    container: {
      borderRadius: 18,
      width: 36,
      height: 36,
      padding: 6,
    },
    fillContainer: {
      alignItems: 'center',
      justifyContent: 'center',
    },
    fill: {
      height: 14,
      width: 14,
    },
  }),
  module679 = require('./679').withTheme(h);

exports.default = module679;

var module679 = require('./679').withTheme(h);

exports.CheckboxAndroid = module679;
