var React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = u(n);
    if (o && o.has(t)) return o.get(t);
    var c = {},
      f = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var l in t)
      if ('default' !== l && Object.prototype.hasOwnProperty.call(t, l)) {
        var p = f ? Object.getOwnPropertyDescriptor(t, l) : null;
        if (p && (p.get || p.set)) Object.defineProperty(c, l, p);
        else c[l] = t[l];
      }

    c.default = t;
    if (o) o.set(t, c);
    return c;
  })(require('react')),
  ReactNative = require('react-native'),
  module715 = require('@babel/runtime/helpers/interopRequireDefault')(require('./715'));

function u(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (u = function (t) {
    return t ? o : n;
  })(t);
}

var c = function (u) {
    var c = u.icon,
      l = u.color,
      p = u.style;
    return (
      <ReactNative.View style={[f.item, p]} pointerEvents="box-none">
        <module715.default source={c} size={24} color={l} />
      </ReactNative.View>
    );
  },
  f = ReactNative.StyleSheet.create({
    item: {
      margin: 8,
      height: 40,
      width: 40,
      alignItems: 'center',
      justifyContent: 'center',
    },
  });

c.displayName = 'List.Icon';
var l = c;
exports.default = l;
