exports.default = y;

var React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var l = o(n);
    if (l && l.has(t)) return l.get(t);
    var f = {},
      u = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in t)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(t, c)) {
        var s = u ? Object.getOwnPropertyDescriptor(t, c) : null;
        if (s && (s.get || s.set)) Object.defineProperty(f, c, s);
        else f[c] = t[c];
      }

    f.default = t;
    if (l) l.set(t, f);
    return f;
  })(require('react')),
  ReactNative = require('react-native');

function o(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    l = new WeakMap();
  return (o = function (t) {
    return t ? l : n;
  })(t);
}

var l = ReactNative.Dimensions.get('window'),
  f = l.width,
  u = undefined === f ? 0 : f,
  c = l.height,
  s = undefined === c ? 0 : c,
  module1074 =
    'web' === ReactNative.Platform.OS || null == require('./1074').initialWindowMetrics
      ? {
          frame: {
            x: 0,
            y: 0,
            width: u,
            height: s,
          },
          insets: {
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
          },
        }
      : require('./1074').initialWindowMetrics;

function y(o) {
  var l = o.children,
    f = o.style;
  return React.createElement(require('./1074').SafeAreaInsetsContext.Consumer, null, function (o) {
    return o
      ? React.createElement(
          ReactNative.View,
          {
            style: [v.container, f],
          },
          l
        )
      : React.createElement(
          require('./1074').SafeAreaProvider,
          {
            initialMetrics: module1074,
            style: f,
          },
          l
        );
  });
}

y.initialMetrics = module1074;
var v = ReactNative.StyleSheet.create({
  container: {
    flex: 1,
  },
});
