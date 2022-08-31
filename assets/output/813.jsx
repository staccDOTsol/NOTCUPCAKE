var module35 = require("@babel/runtime/helpers/interopRequireDefault")(require("./35")),
    React = function (t, n) {
  if (!n && t && t.__esModule) return t;
  if (null === t || "object" != typeof t && "function" != typeof t) return {
    default: t
  };
  var l = u(n);
  if (l && l.has(t)) return l.get(t);
  var o = {},
      p = Object.defineProperty && Object.getOwnPropertyDescriptor;

  for (var c in t) if ("default" !== c && Object.prototype.hasOwnProperty.call(t, c)) {
    var f = p ? Object.getOwnPropertyDescriptor(t, c) : null;
    if (f && (f.get || f.set)) Object.defineProperty(o, c, f);else o[c] = t[c];
  }

  o.default = t;
  if (l) l.set(t, o);
  return o;
}(require("react")),
    ReactNative = require("react-native"),
    module735 = require("@babel/runtime/helpers/interopRequireDefault")(require("./735"));

function u(t) {
  if ("function" != typeof WeakMap) return null;
  var n = new WeakMap(),
      l = new WeakMap();
  return (u = function (t) {
    return t ? l : n;
  })(t);
}

var p = function (u) {
  var p = u.parentState,
      f = u.labelProps,
      s = f.placeholderStyle,
      b = f.baseLabelTranslateX,
      y = f.topPosition,
      v = f.hasActiveOutline,
      h = f.label,
      w = f.backgroundColor,
      O = f.roundness,
      k = u.labelStyle,
      M = u.maxFontSizeMultiplier,
      S = v || p.value,
      P = p.labeled.interpolate({
    inputRange: [0, 1],
    outputRange: [S ? 1 : 0, 0]
  }),
      j = {
    transform: [{
      translateX: p.labeled.interpolate({
        inputRange: [0, 1],
        outputRange: [-b, 0]
      })
    }]
  };
  return h ? [{React.createElement(ReactNative.Animated.View, {
    key: "labelBackground-view",
    pointerEvents: "none",
    style: [ReactNative.StyleSheet.absoluteFill, c.view, {
      backgroundColor: w,
      maxHeight: (O / 3) ** 2,
      opacity: P,
      bottom: O ** 2
    }, j]
  })}, React.createElement(module735.default, {
    key: "labelBackground-text",
    style: [s, k, c.outlinedLabel, {
      top: y + 1,
      backgroundColor: w,
      opacity: P,
      transform: [].concat(module35.default(k.transform), [{
        scaleY: p.labeled.interpolate({
          inputRange: [0, 1],
          outputRange: [.2, 1]
        })
      }]),
      maxWidth: p.labelLayout.width - 2 * s.paddingHorizontal
    }],
    numberOfLines: 1,
    maxFontSizeMultiplier: M
  }, h)] : null;
};

exports.default = p;
var c = ReactNative.StyleSheet.create({
  view: {
    position: 'absolute',
    top: 6,
    left: 10,
    width: 12
  },
  outlinedLabel: {
    position: 'absolute',
    left: 18,
    paddingHorizontal: 0,
    color: 'transparent'
  }
});