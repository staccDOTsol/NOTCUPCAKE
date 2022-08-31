exports.default = function (n, f) {
  function c(u) {
    return (
      <module539.default style={[l.container, f]}>
        <n />
      </module539.default>
    );
  }

  c.displayName = 'gestureHandlerRootHOC(' + (n.displayName || n.name) + ')';
  module536.default(c, n);
  return c;
};

var React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var u = f(n);
    if (u && u.has(t)) return u.get(t);
    var o = {},
      l = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in t)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(t, c)) {
        var p = l ? Object.getOwnPropertyDescriptor(t, c) : null;
        if (p && (p.get || p.set)) Object.defineProperty(o, c, p);
        else o[c] = t[c];
      }

    o.default = t;
    if (u) u.set(t, o);
    return o;
  })(require('react')),
  ReactNative = require('react-native'),
  module536 = require('@babel/runtime/helpers/interopRequireDefault')(require('./536')),
  module539 = require('@babel/runtime/helpers/interopRequireDefault')(require('./539'));

function f(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    u = new WeakMap();
  return (f = function (t) {
    return t ? u : n;
  })(t);
}

var l = ReactNative.StyleSheet.create({
  container: {
    flex: 1,
  },
});
