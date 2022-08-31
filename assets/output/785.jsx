var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (e, t) {
    if (!t && e && e.__esModule) return e;
    if (null === e || ('object' != typeof e && 'function' != typeof e))
      return {
        default: e,
      };
    var n = p(t);
    if (n && n.has(e)) return n.get(e);
    var o = {},
      u = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var l in e)
      if ('default' !== l && Object.prototype.hasOwnProperty.call(e, l)) {
        var f = u ? Object.getOwnPropertyDescriptor(e, l) : null;
        if (f && (f.get || f.set)) Object.defineProperty(o, l, f);
        else o[l] = e[l];
      }

    o.default = e;
    if (n) n.set(e, o);
    return o;
  })(require('react')),
  module681 = require('@babel/runtime/helpers/interopRequireDefault')(require('./681')),
  ReactNative = require('react-native'),
  module735 = require('@babel/runtime/helpers/interopRequireDefault')(require('./735')),
  f = ['style', 'type', 'visible', 'theme', 'onLayout', 'padding'];

function p(e) {
  if ('function' != typeof WeakMap) return null;
  var t = new WeakMap(),
    n = new WeakMap();
  return (p = function (e) {
    return e ? n : t;
  })(e);
}

var c = ReactNative.StyleSheet.create({
    text: {
      fontSize: 12,
      paddingVertical: 4,
    },
    padding: {
      paddingHorizontal: 12,
    },
  }),
  module679 = require('./679').withTheme(function (p) {
    var s = p.style,
      v = p.type,
      y = undefined === v ? 'info' : v,
      h = p.visible,
      b = undefined === h || h,
      O = p.theme,
      j = p.onLayout,
      w = p.padding,
      M = undefined === w ? 'normal' : w,
      P = module105.default(p, f),
      _ = React.useRef(new ReactNative.Animated.Value(b ? 1 : 0)).current,
      x = React.useRef(0).current,
      S = O.animation.scale,
      k = P.maxFontSizeMultiplier,
      z = undefined === k ? 1.5 : k;
    React.useEffect(
      function () {
        if (b)
          ReactNative.Animated.timing(_, {
            toValue: 1,
            duration: 150 * S,
            useNativeDriver: true,
          }).start();
        else
          ReactNative.Animated.timing(_, {
            toValue: 0,
            duration: 180 * S,
            useNativeDriver: true,
          }).start();
      },
      [b, S, _]
    );
    var D = O.colors,
      R = O.dark,
      V =
        'error' === y
          ? D.error
          : module681
              .default(D.text)
              .alpha(R ? 0.7 : 0.54)
              .rgb()
              .string();
    return <module735.default>{P.children}</module735.default>;
  });

exports.default = module679;
