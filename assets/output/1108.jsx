exports.default = function (o) {
  var l,
    f,
    c = o.dark,
    s = o.layout,
    v = o.insets,
    p = o.style,
    module586 = require('./586').useTheme().dark,
    O = React.useState(true),
    b = module23.default(O, 2),
    j = b[0],
    h = b[1],
    k = 1 - 20 / s.width,
    w = (v.top - 34) * k,
    P = ReactNative.StyleSheet.flatten(p),
    _ =
      null == P
        ? undefined
        : null == (l = P.transform)
        ? undefined
        : null ==
          (f = l.find(function (t) {
            return undefined !== t.translateY;
          }))
        ? undefined
        : f.translateY;

  React.useEffect(
    function () {
      var t =
        null == _
          ? undefined
          : _.addListener(function (t) {
              var n = t.value;
              h(n < w);
            });
      return function () {
        return null == _ ? undefined : _.removeListener(t);
      };
    },
    [w, _]
  );
  var M = null != c ? c : !module586;
  return <ReactNative.StatusBar animated barStyle={j && M ? 'dark-content' : 'light-content'} />;
};

var module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var u = o(n);
    if (u && u.has(t)) return u.get(t);
    var l = {},
      f = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in t)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(t, c)) {
        var s = f ? Object.getOwnPropertyDescriptor(t, c) : null;
        if (s && (s.get || s.set)) Object.defineProperty(l, c, s);
        else l[c] = t[c];
      }

    l.default = t;
    if (u) u.set(t, l);
    return l;
  })(require('react')),
  ReactNative = require('react-native');

function o(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    u = new WeakMap();
  return (o = function (t) {
    return t ? u : n;
  })(t);
}
