var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var u = p(n);
    if (u && u.has(t)) return u.get(t);
    var o = {},
      f = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var l in t)
      if ('default' !== l && Object.prototype.hasOwnProperty.call(t, l)) {
        var c = f ? Object.getOwnPropertyDescriptor(t, l) : null;
        if (c && (c.get || c.set)) Object.defineProperty(o, l, c);
        else o[l] = t[l];
      }

    o.default = t;
    if (u) u.set(t, o);
    return o;
  })(require('react')),
  ReactNative = require('react-native'),
  module711 = require('@babel/runtime/helpers/interopRequireDefault')(require('./711')),
  module712 = require('@babel/runtime/helpers/interopRequireDefault')(require('./712')),
  c = ['style', 'theme'];

function p(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    u = new WeakMap();
  return (p = function (t) {
    return t ? u : n;
  })(t);
}

var module679 = require('./679').withTheme(function (p) {
  var s = p.style,
    y = p.theme,
    v = module105.default(p, c),
    O = (ReactNative.StyleSheet.flatten(s) || {}).elevation,
    b = undefined === O ? 4 : O,
    h = y.dark,
    j = y.mode,
    w = y.colors;
  return React.createElement(
    ReactNative.Animated.View,
    module29.default({}, v, {
      style: [
        {
          backgroundColor: h && 'adaptive' === j ? module712.default(b, w.surface) : w.surface,
        },
        b ? module711.default(b) : null,
        s,
      ],
    })
  );
});

exports.default = module679;
