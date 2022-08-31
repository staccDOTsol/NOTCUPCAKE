var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, n) {
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
        var p = u ? Object.getOwnPropertyDescriptor(t, c) : null;
        if (p && (p.get || p.set)) Object.defineProperty(o, c, p);
        else o[c] = t[c];
      }

    o.default = t;
    if (l) l.set(t, o);
    return o;
  })(require('react')),
  ReactNative = require('react-native'),
  u = ['style', 'theme'];

function f(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    l = new WeakMap();
  return (f = function (t) {
    return t ? l : n;
  })(t);
}

var c = ReactNative.StyleSheet.create({
    text: {
      textAlign: 'left',
    },
  }),
  module679 = require('./679').withTheme(function (f) {
    var p = f.style,
      s = f.theme,
      y = module105.default(f, u),
      v = ReactNative.I18nManager.isRTL ? 'rtl' : 'ltr';
    return React.createElement(
      ReactNative.Animated.Text,
      module29.default({}, y, {
        style: [
          c.text,
          module29.default({}, s.fonts.regular, {
            color: s.colors.text,
            writingDirection: v,
          }),
          p,
        ],
      })
    );
  });

exports.default = module679;
