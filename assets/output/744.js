exports.default = function (u) {
  var f = React.useRef([]);
  f.current.length = u.length;
  u.forEach(function (t, u) {
    var o;
    f.current[u] = null != (o = f.current[u]) ? o : new ReactNative.Animated.Value(t);
  });
  return f.current;
};

var React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var f = u(n);
    if (f && f.has(t)) return f.get(t);
    var o = {},
      c = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var i in t)
      if ('default' !== i && Object.prototype.hasOwnProperty.call(t, i)) {
        var l = c ? Object.getOwnPropertyDescriptor(t, i) : null;
        if (l && (l.get || l.set)) Object.defineProperty(o, i, l);
        else o[i] = t[i];
      }

    o.default = t;
    if (f) f.set(t, o);
    return o;
  })(require('react')),
  ReactNative = require('react-native');

function u(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    f = new WeakMap();
  return (u = function (t) {
    return t ? f : n;
  })(t);
}
