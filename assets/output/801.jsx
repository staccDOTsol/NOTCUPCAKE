var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var c = l(n);
    if (c && c.has(t)) return c.get(t);
    var o = {},
      u = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var f in t)
      if ('default' !== f && Object.prototype.hasOwnProperty.call(t, f)) {
        var p = u ? Object.getOwnPropertyDescriptor(t, f) : null;
        if (p && (p.get || p.set)) Object.defineProperty(o, f, p);
        else o[f] = t[f];
      }

    o.default = t;
    if (c) c.set(t, o);
    return o;
  })(require('react')),
  module800 = require('@babel/runtime/helpers/interopRequireDefault')(require('./800')),
  module802 = require('@babel/runtime/helpers/interopRequireDefault')(require('./802')),
  f = ['accessibilityLabel'];

function l(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    c = new WeakMap();
  return (l = function (t) {
    return t ? c : n;
  })(t);
}

var p = function (l) {
  var p = l.accessibilityLabel,
    b = undefined === p ? 'Back' : p,
    s = module105.default(l, f);
  return <module800.default />;
};

exports.AppbarBackAction = p;
p.displayName = 'Appbar.BackAction';
var b = p;
exports.default = b;
