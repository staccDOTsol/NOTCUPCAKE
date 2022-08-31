var React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var u = o(n);
    if (u && u.has(t)) return u.get(t);
    var f = {},
      c = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var p in t)
      if ('default' !== p && Object.prototype.hasOwnProperty.call(t, p)) {
        var l = c ? Object.getOwnPropertyDescriptor(t, p) : null;
        if (l && (l.get || l.set)) Object.defineProperty(f, p, l);
        else f[p] = t[p];
      }

    f.default = t;
    if (u) u.set(t, f);
    return f;
  })(require('react')),
  module698 = require('@babel/runtime/helpers/interopRequireDefault')(require('./698'));

function o(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    u = new WeakMap();
  return (o = function (t) {
    return t ? u : n;
  })(t);
}

var u = React.createContext({
    icon: module698.default,
  }),
  f = u.Provider,
  c = u.Consumer;
exports.Consumer = c;
exports.Provider = f;
