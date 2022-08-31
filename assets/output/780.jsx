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
  module756 = require('@babel/runtime/helpers/interopRequireDefault')(require('./756')),
  c = ['children', 'theme', 'style'];

function f(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    l = new WeakMap();
  return (f = function (t) {
    return t ? l : n;
  })(t);
}

var p = function (o) {
  var f = o.children,
    p = o.theme,
    y = o.style,
    h = module105.default(o, c);
  return <module756.default>{f}</module756.default>;
};

exports.DialogTitle = p;
p.displayName = 'Dialog.Title';

var s = ReactNative.StyleSheet.create({
    text: {
      marginTop: 22,
      marginBottom: 18,
      marginHorizontal: 24,
    },
  }),
  module679 = require('./679').withTheme(p);

exports.default = module679;
