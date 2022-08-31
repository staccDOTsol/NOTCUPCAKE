exports.default = function (f) {
  var o = React.useState(f),
    c = module23.default(o, 1)[0],
    l = [false, undefined];
  c.then(function (t) {
    l = [true, t];
  });
  var s = React.useState(l),
    p = module23.default(s, 2),
    v = p[0],
    y = p[1],
    O = module23.default(v, 1)[0];
  React.useEffect(
    function () {
      var n,
        u = false;
      if (!O)
        module76.default.async(
          function (f) {
            for (;;)
              switch ((f.prev = f.next)) {
                case 0:
                  f.prev = 0;
                  f.next = 3;
                  return module76.default.awrap(c);

                case 3:
                  n = f.sent;

                case 4:
                  f.prev = 4;
                  if (!u) y([true, n]);
                  return f.finish(4);

                case 7:
                case 'end':
                  return f.stop();
              }
          },
          null,
          null,
          [[0, , 4, 7]],
          Promise
        );
      return function () {
        u = true;
      };
    },
    [c, O]
  );
  return v;
};

var module76 = require('@babel/runtime/helpers/interopRequireDefault')(require('./76')),
  module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
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
  })(require('react'));

function f(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    u = new WeakMap();
  return (f = function (t) {
    return t ? u : n;
  })(t);
}
