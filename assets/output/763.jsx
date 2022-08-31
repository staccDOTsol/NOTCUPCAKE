var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var l = v(n);
    if (l && l.has(t)) return l.get(t);
    var u = {},
      f = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var o in t)
      if ('default' !== o && Object.prototype.hasOwnProperty.call(t, o)) {
        var c = f ? Object.getOwnPropertyDescriptor(t, o) : null;
        if (c && (c.get || c.set)) Object.defineProperty(u, o, c);
        else u[o] = t[o];
      }

    u.default = t;
    if (l) l.set(t, u);
    return u;
  })(require('react')),
  ReactNative = require('react-native'),
  module764 = require('@babel/runtime/helpers/interopRequireDefault')(require('./764')),
  module765 = require('@babel/runtime/helpers/interopRequireDefault')(require('./765')),
  module766 = require('@babel/runtime/helpers/interopRequireDefault')(require('./766')),
  module767 = require('@babel/runtime/helpers/interopRequireDefault')(require('./767')),
  module775 = require('@babel/runtime/helpers/interopRequireDefault')(require('./775')),
  s = ['children', 'style'];

function v(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    l = new WeakMap();
  return (v = function (t) {
    return t ? l : n;
  })(t);
}

var O = function (f) {
  var o = f.children,
    c = f.style,
    p = module105.default(f, s);
  return <ReactNative.View>{o}</ReactNative.View>;
};

O.Header = module765.default;
O.Title = module766.default;
O.Row = module775.default;
O.Cell = module764.default;
O.Pagination = module767.default;
var w = ReactNative.StyleSheet.create({
    container: {
      width: '100%',
    },
  }),
  b = O;
exports.default = b;
