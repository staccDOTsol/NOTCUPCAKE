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
      u = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in t)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(t, c)) {
        var s = u ? Object.getOwnPropertyDescriptor(t, c) : null;
        if (s && (s.get || s.set)) Object.defineProperty(l, c, s);
        else l[c] = t[c];
      }

    l.default = t;
    if (o) o.set(t, l);
    return l;
  })(require('react')),
  ReactNative = require('react-native'),
  module681 = require('@babel/runtime/helpers/interopRequireDefault')(require('./681')),
  module698 = require('@babel/runtime/helpers/interopRequireDefault')(require('./698')),
  module722 = require('@babel/runtime/helpers/interopRequireDefault')(require('./722')),
  f = ['disabled', 'onPress', 'theme', 'status', 'value', 'testID'];

function b(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (b = function (t) {
    return t ? o : n;
  })(t);
}

var module791 = function (b) {
  var module791,
    y = b.disabled,
    h = b.onPress,
    O = b.theme,
    P = b.status,
    k = b.value,
    w = b.testID,
    _ = module105.default(b, f),
    j = y ? O.colors.disabled : _.color || O.colors.accent;

  module791 = y ? module681.default(O.colors.text).alpha(0.16).rgb().string() : module681.default(j).fade(0.32).rgb().string();
  return React.createElement(require('./790').RadioButtonContext.Consumer, null, function (n) {
    var module791 =
      'checked' ===
      require('./791').isChecked({
        contextValue: null == n ? undefined : n.value,
        status: P,
        value: k,
      });

    return React.createElement(
      module722.default,
      module29.default({}, _, {
        borderless: true,
        rippleColor: module791,
        onPress: y
          ? undefined
          : function () {
              require('./791').handlePress({
                onPress: h,
                value: k,
                onValueChange: null == n ? undefined : n.onValueChange,
              });
            },
        accessibilityTraits: y ? ['button', 'disabled'] : 'button',
        accessibilityComponentType: module791 ? 'radiobutton_checked' : 'radiobutton_unchecked',
        accessibilityRole: 'radio',
        accessibilityState: {
          disabled: y,
          checked: module791,
        },
        accessibilityLiveRegion: 'polite',
        style: v.container,
        testID: w,
      }),
      React.createElement(
        ReactNative.View,
        {
          style: {
            opacity: module791 ? 1 : 0,
          },
        },
        React.createElement(module698.default, {
          allowFontScaling: false,
          name: 'check',
          size: 24,
          color: j,
          direction: 'ltr',
        })
      )
    );
  });
};

module791.displayName = 'RadioButton.IOS';

var v = ReactNative.StyleSheet.create({
    container: {
      borderRadius: 18,
      padding: 6,
    },
  }),
  module679 = require('./679').withTheme(module791);

exports.default = module679;

var module679 = require('./679').withTheme(module791);

exports.RadioButtonIOS = module679;
