var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = s(n);
    if (o && o.has(t)) return o.get(t);
    var l = {},
      u = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var f in t)
      if ('default' !== f && Object.prototype.hasOwnProperty.call(t, f)) {
        var c = u ? Object.getOwnPropertyDescriptor(t, f) : null;
        if (c && (c.get || c.set)) Object.defineProperty(l, f, c);
        else l[f] = t[f];
      }

    l.default = t;
    if (o) o.set(t, l);
    return l;
  })(require('react')),
  ReactNative = require('react-native'),
  module716 = require('@babel/runtime/helpers/interopRequireDefault')(require('./716')),
  f = ['children', 'size', 'style', 'theme', 'visible'],
  c = ['backgroundColor'];

function s(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (s = function (t) {
    return t ? o : n;
  })(t);
}

var module679 = require('./679').withTheme(function (s) {
  var v = s.children,
    h = s.size,
    y = undefined === h ? 20 : h,
    b = s.style,
    O = s.theme,
    w = s.visible,
    j = undefined === w || w,
    k = module105.default(s, f),
    P = React.useRef(new ReactNative.Animated.Value(j ? 1 : 0)).current,
    S = React.useRef(true),
    _ = O.animation.scale;
  React.useEffect(
    function () {
      if (S.current) S.current = false;
      else
        ReactNative.Animated.timing(P, {
          toValue: j ? 1 : 0,
          duration: 150 * _,
          useNativeDriver: true,
        }).start();
    },
    [j, P, _]
  );
  var A = ReactNative.StyleSheet.flatten(b) || {},
    M = A.backgroundColor,
    x = undefined === M ? O.colors.notification : M,
    z = module105.default(A, c),
    module691 = module716.default(x, require('./691').white, require('./691').black),
    C = y / 2;
  return React.createElement(
    ReactNative.Animated.Text,
    module29.default(
      {
        numberOfLines: 1,
        style: [
          module29.default(
            {
              opacity: P,
              backgroundColor: x,
              color: module691,
              fontSize: 0.5 * y,
            },
            O.fonts.regular,
            {
              lineHeight: y,
              height: y,
              minWidth: y,
              borderRadius: C,
            }
          ),
          p.container,
          z,
        ],
      },
      k
    ),
    v
  );
});

exports.default = module679;
var p = ReactNative.StyleSheet.create({
  container: {
    alignSelf: 'flex-end',
    textAlign: 'center',
    textAlignVertical: 'center',
    paddingHorizontal: 4,
    overflow: 'hidden',
  },
});
