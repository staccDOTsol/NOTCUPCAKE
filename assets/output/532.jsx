var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var f = u(n);
    if (f && f.has(t)) return f.get(t);
    var o = {},
      l = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in t)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(t, c)) {
        var p = l ? Object.getOwnPropertyDescriptor(t, c) : null;
        if (p && (p.get || p.set)) Object.defineProperty(o, c, p);
        else o[c] = t[c];
      }

    o.default = t;
    if (f) f.set(t, o);
    return o;
  })(require('react')),
  module531 = require('@babel/runtime/helpers/interopRequireDefault')(require('./531'));

function u(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    f = new WeakMap();
  return (u = function (t) {
    return t ? f : n;
  })(t);
}

var o = React.forwardRef(function (u, o) {
  return <module531.default />;
});
o.defaultProps = module531.default.defaultProps;
var l = o;
exports.default = l;
