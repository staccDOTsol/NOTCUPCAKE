exports.default = function (f) {
  var s = f.style,
    h = module105.default(f, u),
    module586 = require('./586').useTheme().colors;

  return React.createElement(
    ReactNative.Animated.View,
    module29.default(
      {
        style: [
          c.container,
          {
            backgroundColor: module586.card,
            borderBottomColor: module586.border,
            shadowColor: module586.border,
          },
          s,
        ],
      },
      h
    )
  );
};

var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, o) {
    if (!o && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var n = f(o);
    if (n && n.has(t)) return n.get(t);
    var l = {},
      u = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in t)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(t, c)) {
        var s = u ? Object.getOwnPropertyDescriptor(t, c) : null;
        if (s && (s.get || s.set)) Object.defineProperty(l, c, s);
        else l[c] = t[c];
      }

    l.default = t;
    if (n) n.set(t, l);
    return l;
  })(require('react')),
  ReactNative = require('react-native'),
  u = ['style'];

function f(t) {
  if ('function' != typeof WeakMap) return null;
  var o = new WeakMap(),
    n = new WeakMap();
  return (f = function (t) {
    return t ? n : o;
  })(t);
}

var c = ReactNative.StyleSheet.create({
  container: module29.default(
    {
      flex: 1,
    },
    ReactNative.Platform.select({
      android: {
        elevation: 4,
      },
      ios: {
        shadowOpacity: 0.85,
        shadowRadius: 0,
        shadowOffset: {
          width: 0,
          height: ReactNative.StyleSheet.hairlineWidth,
        },
      },
      default: {
        borderBottomWidth: ReactNative.StyleSheet.hairlineWidth,
      },
    })
  ),
});
