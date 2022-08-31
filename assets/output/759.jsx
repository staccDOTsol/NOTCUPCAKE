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
  f = ['status', 'disabled', 'onPress', 'theme', 'testID'];

function b(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (b = function (t) {
    return t ? o : n;
  })(t);
}

var p = function (b) {
  var p,
    h = b.status,
    v = b.disabled,
    O = b.onPress,
    k = b.theme,
    w = b.testID,
    P = module105.default(b, f),
    j = 'checked' === h,
    S = 'indeterminate' === h,
    I = v ? k.colors.disabled : P.color || k.colors.accent;
  p = v ? module681.default(k.colors.text).alpha(0.16).rgb().string() : module681.default(I).fade(0.32).rgb().string();

  var _ = S ? 'minus' : 'check';

  return (
    <module722.default>
      <ReactNative.View
        style={{
          opacity: S || j ? 1 : 0,
        }}
      >
        <module698.default allowFontScaling={false} name={_} size={24} color={I} direction="ltr" />
      </ReactNative.View>
    </module722.default>
  );
};

p.displayName = 'Checkbox.IOS';

var y = ReactNative.StyleSheet.create({
    container: {
      borderRadius: 18,
      padding: 6,
    },
  }),
  module679 = require('./679').withTheme(p);

exports.default = module679;

var module679 = require('./679').withTheme(p);

exports.CheckboxIOS = module679;
