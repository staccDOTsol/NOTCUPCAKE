var React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = f(n);
    if (o && o.has(t)) return o.get(t);
    var u = {},
      c = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var l in t)
      if ('default' !== l && Object.prototype.hasOwnProperty.call(t, l)) {
        var p = c ? Object.getOwnPropertyDescriptor(t, l) : null;
        if (p && (p.get || p.set)) Object.defineProperty(u, l, p);
        else u[l] = t[l];
      }

    u.default = t;
    if (o) o.set(t, u);
    return u;
  })(require('react')),
  ReactNative = require('react-native'),
  module759 = require('@babel/runtime/helpers/interopRequireDefault')(require('./759')),
  module760 = require('@babel/runtime/helpers/interopRequireDefault')(require('./760'));

function f(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (f = function (t) {
    return t ? o : n;
  })(t);
}

var c = function (f) {
    return 'ios' === ReactNative.Platform.OS ? <module759.default /> : <module760.default />;
  },
  module679 = require('./679').withTheme(c);

exports.default = module679;

var module679 = require('./679').withTheme(c);

exports.Checkbox = module679;
