exports.default = function (l) {
  var c = l.getState,
    s = l.getStateListeners,
    p = React.useContext(module597.default).addKeyedListener,
    y = React.useContext(module600.default),
    v = y ? y.key : 'root',
    O = React.useCallback(
      function () {
        var n = c(),
          o = n.routes.map(function (n) {
            var u,
              o = null == (u = s[n.key]) ? undefined : u.call(s);
            return n.state === o
              ? n
              : module29.default({}, n, {
                  state: o,
                });
          });
        return module641.default(n.routes, o)
          ? n
          : module29.default({}, n, {
              routes: o,
            });
      },
      [c, s]
    );
  React.useEffect(
    function () {
      return null == p ? undefined : p('getState', v, O);
    },
    [p, O, v]
  );
};

var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var u = l(n);
    if (u && u.has(t)) return u.get(t);
    var o = {},
      f = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in t)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(t, c)) {
        var s = f ? Object.getOwnPropertyDescriptor(t, c) : null;
        if (s && (s.get || s.set)) Object.defineProperty(o, c, s);
        else o[c] = t[c];
      }

    o.default = t;
    if (u) u.set(t, o);
    return o;
  })(require('react')),
  module641 = require('@babel/runtime/helpers/interopRequireDefault')(require('./641')),
  module597 = require('@babel/runtime/helpers/interopRequireDefault')(require('./597')),
  module600 = require('@babel/runtime/helpers/interopRequireDefault')(require('./600'));

function l(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    u = new WeakMap();
  return (l = function (t) {
    return t ? u : n;
  })(t);
}
