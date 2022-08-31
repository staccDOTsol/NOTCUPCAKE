var React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var l = f(n);
    if (l && l.has(t)) return l.get(t);
    var o = {},
      u = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in t)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(t, c)) {
        var s = u ? Object.getOwnPropertyDescriptor(t, c) : null;
        if (s && (s.get || s.set)) Object.defineProperty(o, c, s);
        else o[c] = t[c];
      }

    o.default = t;
    if (l) l.set(t, o);
    return o;
  })(require('react')),
  ReactNative = require('react-native'),
  module722 = require('@babel/runtime/helpers/interopRequireDefault')(require('./722')),
  module788 = require('@babel/runtime/helpers/interopRequireDefault')(require('./788')),
  module719 = require('@babel/runtime/helpers/interopRequireDefault')(require('./719')),
  module789 = require('@babel/runtime/helpers/interopRequireDefault')(require('./789')),
  module792 = require('@babel/runtime/helpers/interopRequireDefault')(require('./792'));

function f(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    l = new WeakMap();
  return (f = function (t) {
    return t ? l : n;
  })(t);
}

var module791 = function (f) {
  var module791,
    v = f.value,
    y = f.label,
    h = f.style,
    w = f.labelStyle,
    P = f.onPress,
    O = f.disabled,
    j = f.color,
    E = f.uncheckedColor,
    C = f.status,
    k = f.theme.colors,
    x = f.accessibilityLabel,
    I = f.testID,
    _ = f.mode,
    D = f.position,
    M = {
      value: v,
      disabled: O,
      status: C,
      color: j,
      uncheckedColor: E,
    },
    S = 'leading' === (undefined === D ? 'trailing' : D);
  module791 = 'android' === _ ? <module789.default /> : 'ios' === _ ? <module792.default /> : <module788.default />;
  return React.createElement(require('./790').RadioButtonContext.Consumer, null, function (o) {
    return React.createElement(
      module722.default,
      {
        onPress: O
          ? undefined
          : function () {
              return require('./791').handlePress({
                onPress: P,
                onValueChange: null == o ? undefined : o.onValueChange,
                value: v,
              });
            },
        accessibilityLabel: x,
        testID: I,
      },
      React.createElement(
        ReactNative.View,
        {
          style: [b.container, h],
          pointerEvents: 'none',
        },
        S && module791,
        React.createElement(
          module719.default,
          {
            style: [
              b.label,
              {
                color: k.text,
                textAlign: S ? 'right' : 'left',
              },
              w,
            ],
          },
          y
        ),
        !S && module791
      )
    );
  });
};

module791.displayName = 'RadioButton.Item';

var module679 = require('./679').withTheme(module791);

exports.default = module679;

var module679 = require('./679').withTheme(module791);

exports.RadioButtonItem = module679;
var b = ReactNative.StyleSheet.create({
  container: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    paddingVertical: 8,
    paddingHorizontal: 16,
  },
  label: {
    fontSize: 16,
    flexShrink: 1,
    flexGrow: 1,
  },
});
