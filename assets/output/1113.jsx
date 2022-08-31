var e,
  module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (e, t) {
    if (!t && e && e.__esModule) return e;
    if (null === e || ('object' != typeof e && 'function' != typeof e))
      return {
        default: e,
      };
    var n = f(t);
    if (n && n.has(e)) return n.get(e);
    var c = {},
      l = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var u in e)
      if ('default' !== u && Object.prototype.hasOwnProperty.call(e, u)) {
        var o = l ? Object.getOwnPropertyDescriptor(e, u) : null;
        if (o && (o.get || o.set)) Object.defineProperty(c, u, o);
        else c[u] = e[u];
      }

    c.default = e;
    if (n) n.set(e, c);
    return c;
  })(require('react')),
  ReactNative = require('react-native'),
  u = ['enabled'],
  o = ['enabled', 'active'];

function f(e) {
  if ('function' != typeof WeakMap) return null;
  var t = new WeakMap(),
    n = new WeakMap();
  return (f = function (e) {
    return e ? n : t;
  })(e);
}

try {
  e = require('./1114');
} catch (e) {}

exports.MaybeScreenContainer = function (o) {
  var f = o.enabled,
    b = module105.default(o, u);
  return null != e ? <e.ScreenContainer /> : <ReactNative.View />;
};

exports.MaybeScreen = function (u) {
  var f = u.enabled,
    b = u.active,
    p = module105.default(u, o);
  return null != e ? <e.Screen /> : <ReactNative.View />;
};
