exports.default = function (l) {
  var c = l.to,
    s = l.action,
    p = module105.default(l, f),
    P = module588.default({
      to: c,
      action: s,
    }),
    y = function (e) {
      if ('onPress' in p) null == p.onPress || p.onPress(e);
      P.onPress(e);
    };

  return <ReactNative.Text />;
};

var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (e, t) {
    if (!t && e && e.__esModule) return e;
    if (null === e || ('object' != typeof e && 'function' != typeof e))
      return {
        default: e,
      };
    var n = l(t);
    if (n && n.has(e)) return n.get(e);
    var o = {},
      u = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var f in e)
      if ('default' !== f && Object.prototype.hasOwnProperty.call(e, f)) {
        var c = u ? Object.getOwnPropertyDescriptor(e, f) : null;
        if (c && (c.get || c.set)) Object.defineProperty(o, f, c);
        else o[f] = e[f];
      }

    o.default = e;
    if (n) n.set(e, o);
    return o;
  })(require('react')),
  ReactNative = require('react-native'),
  module588 = require('@babel/runtime/helpers/interopRequireDefault')(require('./588')),
  f = ['to', 'action'];

function l(e) {
  if ('function' != typeof WeakMap) return null;
  var t = new WeakMap(),
    n = new WeakMap();
  return (l = function (e) {
    return e ? n : t;
  })(e);
}
