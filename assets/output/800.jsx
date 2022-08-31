var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = f(n);
    if (o && o.has(t)) return o.get(t);
    var l = {},
      c = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var u in t)
      if ('default' !== u && Object.prototype.hasOwnProperty.call(t, u)) {
        var s = c ? Object.getOwnPropertyDescriptor(t, u) : null;
        if (s && (s.get || s.set)) Object.defineProperty(l, u, s);
        else l[u] = t[u];
      }

    l.default = t;
    if (o) o.set(t, l);
    return l;
  })(require('react')),
  module681 = require('@babel/runtime/helpers/interopRequireDefault')(require('./681')),
  module768 = require('@babel/runtime/helpers/interopRequireDefault')(require('./768')),
  u = ['size', 'color', 'icon', 'disabled', 'onPress', 'accessibilityLabel'];

function f(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (f = function (t) {
    return t ? o : n;
  })(t);
}

var s = function (f) {
  var s = f.size,
    p = undefined === s ? 24 : s,
    b = f.color,
    module691 = undefined === b ? module681.default(require('./691').black).alpha(0.54).rgb().string() : b,
    v = f.icon,
    O = f.disabled,
    P = f.onPress,
    j = f.accessibilityLabel,
    A = module105.default(f, u);
  return <module768.default />;
};

exports.AppbarAction = s;
s.displayName = 'Appbar.Action';
var p = s;
exports.default = p;
