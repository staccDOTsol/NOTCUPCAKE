exports.default = function (l) {
  var c = l.onPressIn,
    y = l.onPressOut,
    O = l.android_ripple,
    P = l.pressColor,
    v = l.pressOpacity,
    b = undefined === v ? 0.3 : v,
    _ = l.style,
    j = module105.default(l, s),
    module586 = require('./586').useTheme().dark,
    M = React.useState(function () {
      return new ReactNative.Animated.Value(1);
    }),
    k = module23.default(M, 1)[0],
    A = function (e, t) {
      if (!p)
        ReactNative.Animated.timing(k, {
          toValue: e,
          duration: t,
          easing: ReactNative.Easing.inOut(ReactNative.Easing.quad),
          useNativeDriver: true,
        }).start();
    };

  return <f />;
};

var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (e, t) {
    if (!t && e && e.__esModule) return e;
    if (null === e || ('object' != typeof e && 'function' != typeof e))
      return {
        default: e,
      };
    var n = l(t);
    if (n && n.has(e)) return n.get(e);
    var o = {},
      u = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var s in e)
      if ('default' !== s && Object.prototype.hasOwnProperty.call(e, s)) {
        var f = u ? Object.getOwnPropertyDescriptor(e, s) : null;
        if (f && (f.get || f.set)) Object.defineProperty(o, s, f);
        else o[s] = e[s];
      }

    o.default = e;
    if (n) n.set(e, o);
    return o;
  })(require('react')),
  ReactNative = require('react-native'),
  s = ['onPressIn', 'onPressOut', 'android_ripple', 'pressColor', 'pressOpacity', 'style'];

function l(e) {
  if ('function' != typeof WeakMap) return null;
  var t = new WeakMap(),
    n = new WeakMap();
  return (l = function (e) {
    return e ? n : t;
  })(e);
}

var f = ReactNative.Animated.createAnimatedComponent(ReactNative.Pressable),
  p = 'android' === ReactNative.Platform.OS && ReactNative.Platform.Version >= 21;
