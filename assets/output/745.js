exports.default = function () {
  var n = React.useState({
      height: 0,
      width: 0,
      measured: false,
    }),
    u = module23.default(n, 2),
    o = u[0],
    f = u[1],
    c = React.useCallback(
      function (e) {
        var t = e.nativeEvent.layout,
          n = t.height,
          u = t.width;
        if (!(n === o.height && u === o.width))
          f({
            height: n,
            width: u,
            measured: true,
          });
      },
      [o.height, o.width]
    );
  return [o, c];
};

var module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  React = (function (e, t) {
    if (!t && e && e.__esModule) return e;
    if (null === e || ('object' != typeof e && 'function' != typeof e))
      return {
        default: e,
      };
    var u = n(t);
    if (u && u.has(e)) return u.get(e);
    var o = {},
      f = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in e)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(e, c)) {
        var l = f ? Object.getOwnPropertyDescriptor(e, c) : null;
        if (l && (l.get || l.set)) Object.defineProperty(o, c, l);
        else o[c] = e[c];
      }

    o.default = e;
    if (u) u.set(e, o);
    return o;
  })(require('react'));

function n(e) {
  if ('function' != typeof WeakMap) return null;
  var t = new WeakMap(),
    u = new WeakMap();
  return (n = function (e) {
    return e ? u : t;
  })(e);
}
