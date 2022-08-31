var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var l = c(n);
    if (l && l.has(t)) return l.get(t);
    var u = {},
      o = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var f in t)
      if ('default' !== f && Object.prototype.hasOwnProperty.call(t, f)) {
        var h = o ? Object.getOwnPropertyDescriptor(t, f) : null;
        if (h && (h.get || h.set)) Object.defineProperty(u, f, h);
        else u[f] = t[f];
      }

    u.default = t;
    if (l) l.set(t, u);
    return u;
  })(require('react')),
  module681 = require('@babel/runtime/helpers/interopRequireDefault')(require('./681')),
  ReactNative = require('react-native'),
  f = ['inset', 'style', 'theme'];

function c(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    l = new WeakMap();
  return (c = function (t) {
    return t ? l : n;
  })(t);
}

var module691 = ReactNative.StyleSheet.create({
    light: {
      backgroundColor: module681.default(require('./691').black).alpha(0.12).rgb().string(),
      height: ReactNative.StyleSheet.hairlineWidth,
    },
    dark: {
      backgroundColor: module681.default(require('./691').white).alpha(0.12).rgb().string(),
      height: ReactNative.StyleSheet.hairlineWidth,
    },
    inset: {
      marginLeft: 72,
    },
  }),
  module679 = require('./679').withTheme(function (u) {
    var c = u.inset,
      p = u.style,
      s = u.theme,
      y = module105.default(u, f),
      b = s.dark;
    return <ReactNative.View />;
  });

exports.default = module679;
