var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = p(n);
    if (o && o.has(t)) return o.get(t);
    var u = {},
      l = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var f in t)
      if ('default' !== f && Object.prototype.hasOwnProperty.call(t, f)) {
        var c = l ? Object.getOwnPropertyDescriptor(t, f) : null;
        if (c && (c.get || c.set)) Object.defineProperty(u, f, c);
        else u[f] = t[f];
      }

    u.default = t;
    if (o) o.set(t, u);
    return u;
  })(require('react')),
  ReactNative = require('react-native'),
  module681 = require('@babel/runtime/helpers/interopRequireDefault')(require('./681')),
  module719 = require('@babel/runtime/helpers/interopRequireDefault')(require('./719')),
  c = ['style', 'theme'];

function p(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (p = function (t) {
    return t ? o : n;
  })(t);
}

var s = function (u) {
  var p = u.style,
    s = u.theme,
    v = module105.default(u, c),
    b = s.colors,
    O = s.fonts.medium,
    h = module681.default(b.text).alpha(0.54).rgb().string();
  return <module719.default />;
};

s.displayName = 'List.Subheader';

var y = ReactNative.StyleSheet.create({
    container: {
      paddingHorizontal: 16,
      paddingVertical: 13,
    },
  }),
  module679 = require('./679').withTheme(s);

exports.default = module679;
