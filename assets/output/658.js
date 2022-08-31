exports.default = function (u) {
  var f = module638.default(),
    o = React.useState(function () {
      return u(f.getState());
    }),
    c = module23.default(o, 2)[1],
    l = React.useRef(u);
  React.useEffect(function () {
    l.current = u;
  });
  React.useEffect(
    function () {
      return f.addListener('state', function (e) {
        c(l.current(e.data.state));
      });
    },
    [f]
  );
  return u(f.getState());
};

var module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  React = (function (e, t) {
    if (!t && e && e.__esModule) return e;
    if (null === e || ('object' != typeof e && 'function' != typeof e))
      return {
        default: e,
      };
    var n = u(t);
    if (n && n.has(e)) return n.get(e);
    var f = {},
      o = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in e)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(e, c)) {
        var l = o ? Object.getOwnPropertyDescriptor(e, c) : null;
        if (l && (l.get || l.set)) Object.defineProperty(f, c, l);
        else f[c] = e[c];
      }

    f.default = e;
    if (n) n.set(e, f);
    return f;
  })(require('react')),
  module638 = require('@babel/runtime/helpers/interopRequireDefault')(require('./638'));

function u(e) {
  if ('function' != typeof WeakMap) return null;
  var t = new WeakMap(),
    n = new WeakMap();
  return (u = function (e) {
    return e ? n : t;
  })(e);
}
