var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var l = y(n);
    if (l && l.has(t)) return l.get(t);
    var u = {},
      f = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var o in t)
      if ('default' !== o && Object.prototype.hasOwnProperty.call(t, o)) {
        var c = f ? Object.getOwnPropertyDescriptor(t, o) : null;
        if (c && (c.get || c.set)) Object.defineProperty(u, o, c);
        else u[o] = t[o];
      }

    u.default = t;
    if (l) l.set(t, u);
    return u;
  })(require('react')),
  ReactNative = require('react-native'),
  module719 = require('@babel/runtime/helpers/interopRequireDefault')(require('./719')),
  module722 = require('@babel/runtime/helpers/interopRequireDefault')(require('./722')),
  c = ['children', 'textStyle', 'style', 'numeric'];

function y(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    l = new WeakMap();
  return (y = function (t) {
    return t ? l : n;
  })(t);
}

var p = function (u) {
  var y = u.children,
    p = u.textStyle,
    v = u.style,
    O = u.numeric,
    b = module105.default(u, c);
  return (
    <module722.default>
      <module719.default style={p} numberOfLines={1}>
        {y}
      </module719.default>
    </module722.default>
  );
};

p.displayName = 'DataTable.Cell';
var s = ReactNative.StyleSheet.create({
    container: {
      flex: 1,
      flexDirection: 'row',
      alignItems: 'center',
    },
    right: {
      justifyContent: 'flex-end',
    },
  }),
  v = p;
exports.default = v;
