var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var l = b(n);
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
  module768 = require('@babel/runtime/helpers/interopRequireDefault')(require('./768')),
  module734 = require('@babel/runtime/helpers/interopRequireDefault')(require('./734')),
  module698 = require('@babel/runtime/helpers/interopRequireDefault')(require('./698')),
  p = ['clearAccessibilityLabel', 'clearIcon', 'icon', 'iconColor', 'inputStyle', 'onIconPress', 'placeholder', 'searchAccessibilityLabel', 'style', 'theme', 'value'];

function b(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    l = new WeakMap();
  return (b = function (t) {
    return t ? l : n;
  })(t);
}

var y = React.forwardRef(function (b, y) {
    var v = b.clearAccessibilityLabel,
      T = undefined === v ? 'clear' : v,
      P = b.clearIcon,
      w = b.icon,
      C = b.iconColor,
      I = b.inputStyle,
      L = b.onIconPress,
      x = b.placeholder,
      O = b.searchAccessibilityLabel,
      R = undefined === O ? 'search' : O,
      M = b.style,
      j = b.theme,
      A = b.value,
      E = module105.default(b, p),
      k = React.useRef(null);
    React.useImperativeHandle(y, function () {
      var t = k.current;
      if (t)
        return {
          focus: function () {
            return t.focus();
          },
          clear: function () {
            return t.clear();
          },
          setNativeProps: function (n) {
            return t.setNativeProps(n);
          },
          isFocused: function () {
            return t.isFocused();
          },
          blur: function () {
            return t.blur();
          },
        };

      var n = function () {
        throw new Error('TextInput is not available');
      };

      return {
        focus: n,
        clear: n,
        setNativeProps: n,
        isFocused: n,
        blur: n,
      };
    });
    var S = j.colors,
      _ = j.roundness,
      z = j.dark,
      W = j.fonts,
      D = S.text,
      F = W.regular,
      N = C || (z ? D : module681.default(D).alpha(0.54).rgb().string()),
      H = module681.default(D).alpha(0.32).rgb().string();
    return (
      <module734.default
        style={[
          {
            borderRadius: _,
            elevation: 4,
          },
          h.container,
          M,
        ]}
      >
        <module768.default
          accessibilityTraits="button"
          accessibilityComponentType="button"
          accessibilityRole="button"
          borderless
          rippleColor={H}
          onPress={L}
          color={N}
          icon={
            w ||
            function (t) {
              var n = t.size,
                c = t.color;
              return <module698.default name="magnify" color={c} size={n} direction={ReactNative.I18nManager.isRTL ? 'rtl' : 'ltr'} />;
            }
          }
          accessibilityLabel={R}
        />
        <ReactNative.TextInput />
        <module768.default
          borderless
          disabled={!A}
          accessibilityLabel={T}
          color={A ? N : 'rgba(255, 255, 255, 0)'}
          rippleColor={H}
          onPress={function () {
            var t;
            if (!(null == (t = k.current))) t.clear();
            if (!(null == E.onChangeText)) E.onChangeText('');
          }}
          icon={
            P ||
            function (t) {
              var n = t.size,
                c = t.color;
              return <module698.default name="close" color={c} size={n} direction={ReactNative.I18nManager.isRTL ? 'rtl' : 'ltr'} />;
            }
          }
          accessibilityTraits="button"
          accessibilityComponentType="button"
          accessibilityRole="button"
        />
      </module734.default>
    );
  }),
  h = ReactNative.StyleSheet.create({
    container: {
      flexDirection: 'row',
      alignItems: 'center',
    },
    input: {
      flex: 1,
      fontSize: 18,
      paddingLeft: 8,
      alignSelf: 'stretch',
      textAlign: ReactNative.I18nManager.isRTL ? 'right' : 'left',
      minWidth: 0,
    },
  }),
  module679 = require('./679').withTheme(y);

exports.default = module679;
