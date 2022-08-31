exports.default = function (o) {
  var u = o.router,
    f = o.getState,
    c = o.key,
    l = o.setState,
    p = React.useContext(module597.default).onRouteFocus;
  return React.useCallback(
    function (t) {
      var n = f(),
        o = u.getStateForRouteFocus(n, t);
      if (o !== n) l(o);
      if (undefined !== p && undefined !== c) p(c);
    },
    [f, p, u, l, c]
  );
};

var React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var u = o(n);
    if (u && u.has(t)) return u.get(t);
    var f = {},
      c = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var l in t)
      if ('default' !== l && Object.prototype.hasOwnProperty.call(t, l)) {
        var p = c ? Object.getOwnPropertyDescriptor(t, l) : null;
        if (p && (p.get || p.set)) Object.defineProperty(f, l, p);
        else f[l] = t[l];
      }

    f.default = t;
    if (u) u.set(t, f);
    return f;
  })(require('react')),
  module597 = require('@babel/runtime/helpers/interopRequireDefault')(require('./597'));

function o(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    u = new WeakMap();
  return (o = function (t) {
    return t ? u : n;
  })(t);
}
