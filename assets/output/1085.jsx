exports.default = function (u) {
  var o = u.children,
    l = module105.default(u, f);
  if (c && e) return <e>{o}</e>;
  return o;
};

var e,
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (e, t) {
    if (!t && e && e.__esModule) return e;
    if (null === e || ('object' != typeof e && 'function' != typeof e))
      return {
        default: e,
      };
    var n = o(t);
    if (n && n.has(e)) return n.get(e);
    var u = {},
      f = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in e)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(e, c)) {
        var l = f ? Object.getOwnPropertyDescriptor(e, c) : null;
        if (l && (l.get || l.set)) Object.defineProperty(u, c, l);
        else u[c] = e[c];
      }

    u.default = e;
    if (n) n.set(e, u);
    return u;
  })(require('react')),
  ReactNative = require('react-native'),
  f = ['children'];

function o(e) {
  if ('function' != typeof WeakMap) return null;
  var t = new WeakMap(),
    n = new WeakMap();
  return (o = function (e) {
    return e ? n : t;
  })(e);
}

try {
  e = require(d[4]).default;
} catch (e) {}

var c = null != ReactNative.UIManager.getViewManagerConfig('RNCMaskedView');
