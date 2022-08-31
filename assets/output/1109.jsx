var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = c(n);
    if (o && o.has(t)) return o.get(t);
    var u = {},
      f = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var l in t)
      if ('default' !== l && Object.prototype.hasOwnProperty.call(t, l)) {
        var y = f ? Object.getOwnPropertyDescriptor(t, l) : null;
        if (y && (y.get || y.set)) Object.defineProperty(u, l, y);
        else u[l] = t[l];
      }

    u.default = t;
    if (o) o.set(t, u);
    return u;
  })(require('react')),
  ReactNative = require('react-native'),
  l = ['enabled', 'layout', 'style'];

function c(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (c = function (t) {
    return t ? o : n;
  })(t);
}

var y = React.forwardRef(function (c, y) {
  var h = c.enabled,
    s = c.layout,
    v = c.style,
    b = module105.default(c, l),
    w = React.useState(false),
    O = module23.default(w, 2),
    j = O[0],
    P = O[1];
  React.useEffect(
    function () {
      if ('undefined' != typeof document && document.body) {
        var t = document.body.clientWidth,
          n = document.body.clientHeight;
        P(t === s.width && n === s.height);
      }
    },
    [s.height, s.width]
  );
  return <ReactNative.View />;
});
exports.default = y;
var p = ReactNative.StyleSheet.create({
  page: {
    minHeight: '100%',
  },
  card: {
    flex: 1,
    overflow: 'hidden',
  },
});
