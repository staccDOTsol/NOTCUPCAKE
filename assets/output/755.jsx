var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  module681 = require('@babel/runtime/helpers/interopRequireDefault')(require('./681')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var l = p(n);
    if (l && l.has(t)) return l.get(t);
    var f = {},
      o = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var u in t)
      if ('default' !== u && Object.prototype.hasOwnProperty.call(t, u)) {
        var c = o ? Object.getOwnPropertyDescriptor(t, u) : null;
        if (c && (c.get || c.set)) Object.defineProperty(f, u, c);
        else f[u] = t[u];
      }

    f.default = t;
    if (l) l.set(t, f);
    return f;
  })(require('react')),
  ReactNative = require('react-native'),
  module719 = require('@babel/runtime/helpers/interopRequireDefault')(require('./719')),
  c = ['theme', 'alpha', 'family', 'style'];

function p(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    l = new WeakMap();
  return (p = function (t) {
    return t ? l : n;
  })(t);
}

var y = ReactNative.StyleSheet.create({
    text: {
      textAlign: 'left',
    },
  }),
  module679 = require('./679').withTheme(function (p) {
    var s = p.theme,
      h = p.alpha,
      v = p.family,
      O = p.style,
      b = module105.default(p, c),
      j = module681.default(s.colors.text).alpha(h).rgb().string(),
      w = s.fonts[v],
      M = ReactNative.I18nManager.isRTL ? 'rtl' : 'ltr';
    return <module719.default />;
  });

exports.default = module679;
