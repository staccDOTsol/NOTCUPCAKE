var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var f = l(n);
    if (f && f.has(t)) return f.get(t);
    var o = {},
      u = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in t)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(t, c)) {
        var p = u ? Object.getOwnPropertyDescriptor(t, c) : null;
        if (p && (p.get || p.set)) Object.defineProperty(o, c, p);
        else o[c] = t[c];
      }

    o.default = t;
    if (f) f.set(t, o);
    return o;
  })(require('react')),
  module1079 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1079')),
  u = ['edges'];

function l(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    f = new WeakMap();
  return (l = function (t) {
    return t ? f : n;
  })(t);
}

var c = React.forwardRef(function (l, c) {
  var p = l.edges,
    s = module105.default(l, u);
  return <module1079.default />;
});
exports.SafeAreaView = c;
