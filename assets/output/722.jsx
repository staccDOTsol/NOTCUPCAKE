var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, l) {
    if (!l && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = c(l);
    if (o && o.has(t)) return o.get(t);
    var n = {},
      u = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var f in t)
      if ('default' !== f && Object.prototype.hasOwnProperty.call(t, f)) {
        var s = u ? Object.getOwnPropertyDescriptor(t, f) : null;
        if (s && (s.get || s.set)) Object.defineProperty(n, f, s);
        else n[f] = t[f];
      }

    n.default = t;
    if (o) o.set(t, n);
    return n;
  })(require('react')),
  ReactNative = require('react-native'),
  module681 = require('@babel/runtime/helpers/interopRequireDefault')(require('./681')),
  f = ['style', 'background', 'borderless', 'disabled', 'rippleColor', 'underlayColor', 'children', 'theme'];

function c(t) {
  if ('function' != typeof WeakMap) return null;
  var l = new WeakMap(),
    o = new WeakMap();
  return (c = function (t) {
    return t ? o : l;
  })(t);
}

var s = function c(s) {
  var b = s.style,
    y = s.background,
    h = s.borderless,
    v = undefined !== h && h,
    w = s.disabled,
    O = s.rippleColor,
    P = s.underlayColor,
    k = s.children,
    j = s.theme,
    C = module105.default(s, f),
    _ = j.dark,
    M = j.colors,
    H = w || !C.onPress,
    S =
      O ||
      module681
        .default(M.text)
        .alpha(_ ? 0.32 : 0.2)
        .rgb()
        .string(),
    T = 'android' === ReactNative.Platform.OS && ReactNative.Platform.Version >= 28 && v;
  return c.supported ? (
    <ReactNative.TouchableNativeFeedback>
      <ReactNative.View style={[v && p.overflowHidden, b]}>
        <k />
      </ReactNative.View>
    </ReactNative.TouchableNativeFeedback>
  ) : (
    <ReactNative.TouchableHighlight>
      <k />
    </ReactNative.TouchableHighlight>
  );
};

s.supported = 'android' === ReactNative.Platform.OS && ReactNative.Platform.Version >= 21;

var p = ReactNative.StyleSheet.create({
    overflowHidden: {
      overflow: 'hidden',
    },
  }),
  module679 = require('./679').withTheme(s);

exports.default = module679;
