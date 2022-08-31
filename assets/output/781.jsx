var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = l(n);
    if (o && o.has(t)) return o.get(t);
    var f = {},
      u = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in t)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(t, c)) {
        var p = u ? Object.getOwnPropertyDescriptor(t, c) : null;
        if (p && (p.get || p.set)) Object.defineProperty(f, c, p);
        else f[c] = t[c];
      }

    f.default = t;
    if (o) o.set(t, f);
    return f;
  })(require('react')),
  ReactNative = require('react-native');

function l(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (l = function (t) {
    return t ? o : n;
  })(t);
}

var f = function (l) {
  return <ReactNative.View>{l.children}</ReactNative.View>;
};

f.displayName = 'Dialog.ScrollArea';
var u = ReactNative.StyleSheet.create({
    container: {
      borderColor: 'rgba(0, 0, 0, .12)',
      borderTopWidth: ReactNative.StyleSheet.hairlineWidth,
      borderBottomWidth: ReactNative.StyleSheet.hairlineWidth,
      paddingHorizontal: 24,
      flexGrow: 1,
      flexShrink: 1,
    },
  }),
  c = f;
exports.default = c;
