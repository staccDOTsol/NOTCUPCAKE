exports.default = function () {
  var f = module638.default(),
    o = React.useState(f.isFocused),
    c = module23.default(o, 2),
    l = c[0],
    s = c[1],
    p = f.isFocused();
  if (l !== p) s(p);
  React.useEffect(
    function () {
      var t = f.addListener('focus', function () {
          return s(true);
        }),
        n = f.addListener('blur', function () {
          return s(false);
        });
      return function () {
        t();
        n();
      };
    },
    [f]
  );
  React.useDebugValue(p);
  return p;
};

var module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var u = f(n);
    if (u && u.has(t)) return u.get(t);
    var o = {},
      c = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var l in t)
      if ('default' !== l && Object.prototype.hasOwnProperty.call(t, l)) {
        var s = c ? Object.getOwnPropertyDescriptor(t, l) : null;
        if (s && (s.get || s.set)) Object.defineProperty(o, l, s);
        else o[l] = t[l];
      }

    o.default = t;
    if (u) u.set(t, o);
    return o;
  })(require('react')),
  module638 = require('@babel/runtime/helpers/interopRequireDefault')(require('./638'));

function f(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    u = new WeakMap();
  return (f = function (t) {
    return t ? u : n;
  })(t);
}
