var React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = l(n);
    if (o && o.has(t)) return o.get(t);
    var u = {},
      f = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in t)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(t, c)) {
        var s = f ? Object.getOwnPropertyDescriptor(t, c) : null;
        if (s && (s.get || s.set)) Object.defineProperty(u, c, s);
        else u[c] = t[c];
      }

    u.default = t;
    if (o) o.set(t, u);
    return u;
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

var o = React.memo(function (l) {
  var o = l.loading,
    u = l.message,
    f = l.ActivityIndicatorComponent,
    c = l.listMessageContainerStyle,
    s = l.listMessageTextStyle;
  return React.default.createElement(
    ReactNative.View,
    {
      style: c,
    },
    o
      ? React.default.createElement(f, null)
      : React.default.createElement(
          ReactNative.Text,
          {
            style: s,
          },
          u
        )
  );
});
exports.default = o;
