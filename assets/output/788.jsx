var React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = f(n);
    if (o && o.has(t)) return o.get(t);
    var u = {},
      l = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in t)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(t, c)) {
        var p = l ? Object.getOwnPropertyDescriptor(t, c) : null;
        if (p && (p.get || p.set)) Object.defineProperty(u, c, p);
        else u[c] = t[c];
      }

    u.default = t;
    if (o) o.set(t, u);
    return u;
  })(require('react')),
  ReactNative = require('react-native'),
  module789 = require('@babel/runtime/helpers/interopRequireDefault')(require('./789')),
  module792 = require('@babel/runtime/helpers/interopRequireDefault')(require('./792'));

function f(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (f = function (t) {
    return t ? o : n;
  })(t);
}

var l = function (f) {
    var l = ReactNative.Platform.select({
      default: module789.default,
      ios: module792.default,
    });
    return <l />;
  },
  module679 = require('./679').withTheme(l);

exports.default = module679;

var module679 = require('./679').withTheme(l);

exports.RadioButton = module679;
