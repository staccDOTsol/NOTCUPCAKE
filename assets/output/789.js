var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = f(n);
    if (o && o.has(t)) return o.get(t);
    var l = {},
      u = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var s in t)
      if ('default' !== s && Object.prototype.hasOwnProperty.call(t, s)) {
        var c = u ? Object.getOwnPropertyDescriptor(t, s) : null;
        if (c && (c.get || c.set)) Object.defineProperty(l, s, c);
        else l[s] = t[s];
      }

    l.default = t;
    if (o) o.set(t, l);
    return l;
  })(require('react')),
  ReactNative = require('react-native'),
  module681 = require('@babel/runtime/helpers/interopRequireDefault')(require('./681')),
  module722 = require('@babel/runtime/helpers/interopRequireDefault')(require('./722')),
  c = ['disabled', 'onPress', 'theme', 'value', 'status', 'testID'];

function f(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (f = function (t) {
    return t ? o : n;
  })(t);
}

var module791 = function (f) {
  var module790 = f.disabled,
    v = f.onPress,
    p = f.theme,
    y = f.value,
    w = f.status,
    C = f.testID,
    k = module105.default(f, c),
    R = React.useRef(new ReactNative.Animated.Value(2)).current,
    V = React.useRef(new ReactNative.Animated.Value(1)).current,
    P = React.useRef(true),
    A = p.animation.scale;
  React.useEffect(
    function () {
      if (P.current) P.current = false;
      else if ('checked' === w) {
        V.setValue(1.2);
        ReactNative.Animated.timing(V, {
          toValue: 1,
          duration: 150 * A,
          useNativeDriver: true,
        }).start();
      } else {
        R.setValue(10);
        ReactNative.Animated.timing(R, {
          toValue: 2,
          duration: 150 * A,
          useNativeDriver: false,
        }).start();
      }
    },
    [w, R, V, A]
  );

  var O,
    j,
    _ = k.color || p.colors.accent,
    D =
      k.uncheckedColor ||
      module681
        .default(p.colors.text)
        .alpha(p.dark ? 0.7 : 0.54)
        .rgb()
        .string();

  return React.createElement(require('./790').RadioButtonContext.Consumer, null, function (n) {
    var module791 =
      'checked' ===
      require('./791').isChecked({
        contextValue: null == n ? undefined : n.value,
        status: w,
        value: y,
      });

    if (module790) {
      O = module681.default(p.colors.text).alpha(0.16).rgb().string();
      j = p.colors.disabled;
    } else {
      O = module681.default(_).fade(0.32).rgb().string();
      j = module791 ? _ : D;
    }

    return React.createElement(
      module722.default,
      module29.default({}, k, {
        borderless: true,
        rippleColor: O,
        onPress: module790
          ? undefined
          : function () {
              require('./791').handlePress({
                onPress: v,
                onValueChange: null == n ? undefined : n.onValueChange,
                value: y,
              });
            },
        accessibilityTraits: module790 ? ['button', 'disabled'] : 'button',
        accessibilityComponentType: module791 ? 'radiobutton_checked' : 'radiobutton_unchecked',
        accessibilityRole: 'radio',
        accessibilityState: {
          disabled: module790,
          checked: module791,
        },
        accessibilityLiveRegion: 'polite',
        style: h.container,
        testID: C,
      }),
      React.createElement(
        ReactNative.Animated.View,
        {
          style: [
            h.radio,
            {
              borderColor: j,
              borderWidth: R,
            },
          ],
        },
        module791
          ? React.createElement(
              ReactNative.View,
              {
                style: [ReactNative.StyleSheet.absoluteFill, h.radioContainer],
              },
              React.createElement(ReactNative.Animated.View, {
                style: [
                  h.dot,
                  {
                    backgroundColor: j,
                    transform: [
                      {
                        scale: V,
                      },
                    ],
                  },
                ],
              })
            )
          : null
      )
    );
  });
};

module791.displayName = 'RadioButton.Android';

var h = ReactNative.StyleSheet.create({
    container: {
      borderRadius: 18,
    },
    radioContainer: {
      alignItems: 'center',
      justifyContent: 'center',
    },
    radio: {
      height: 20,
      width: 20,
      borderRadius: 10,
      margin: 8,
    },
    dot: {
      height: 10,
      width: 10,
      borderRadius: 5,
    },
  }),
  module679 = require('./679').withTheme(module791);

exports.default = module679;

var module679 = require('./679').withTheme(module791);

exports.RadioButtonAndroid = module679;
