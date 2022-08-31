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
  module670 = require('@babel/runtime/helpers/interopRequireDefault')(require('./670'));

function o(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    u = new WeakMap();
  return (o = function (t) {
    return t ? u : n;
  })(t);
}

var u = React.forwardRef(function (o, module591) {
  var f = o.children,
    c = o.location;
  React.useEffect(function () {
    console.error("'ServerContainer' should only be used on the server with 'react-dom/server' for SSR.");
  }, []);
  var l = {};

  if (module591) {
    var p = {
      getCurrentOptions: function () {
        return l.options;
      },
    };
    if ('function' == typeof module591) module591(p);
    else module591.current = p;
  }

  return React.createElement(
    module670.default.Provider,
    {
      value: {
        location: c,
      },
    },
    React.createElement(
      require('./591').CurrentRenderContext.Provider,
      {
        value: l,
      },
      f
    )
  );
});
exports.default = u;
