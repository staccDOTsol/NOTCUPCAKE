exports.default = function () {
  var u = React.useRef(null);
  if (null == u.current) u.current = module608.default();
  return u.current;
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

    for (var l in t)
      if ('default' !== l && Object.prototype.hasOwnProperty.call(t, l)) {
        var p = c ? Object.getOwnPropertyDescriptor(t, l) : null;
        if (p && (p.get || p.set)) Object.defineProperty(o, l, p);
        else o[l] = t[l];
      }

    o.default = t;
    if (f) f.set(t, o);
    return o;
  })(require('react')),
  module608 = require('@babel/runtime/helpers/interopRequireDefault')(require('./608'));

function u(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    f = new WeakMap();
  return (u = function (t) {
    return t ? f : n;
  })(t);
}
