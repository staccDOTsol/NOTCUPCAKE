var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module35 = require('@babel/runtime/helpers/interopRequireDefault')(require('./35')),
  React = (function (t, o) {
    if (!o && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var l = u(o);
    if (l && l.has(t)) return l.get(t);
    var n = {},
      f = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in t)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(t, c)) {
        var s = f ? Object.getOwnPropertyDescriptor(t, c) : null;
        if (s && (s.get || s.set)) Object.defineProperty(n, c, s);
        else n[c] = t[c];
      }

    n.default = t;
    if (l) l.set(t, n);
    return n;
  })(require('react')),
  ReactNative = require('react-native');

function u(t) {
  if ('function' != typeof WeakMap) return null;
  var o = new WeakMap(),
    l = new WeakMap();
  return (u = function (t) {
    return t ? l : o;
  })(t);
}

var f = React.memo(
  function (u) {
    var f = u.rtl,
      c = u.label,
      s = u.props,
      y = u.value,
      b = u.textStyle,
      p = u.badgeStyle,
      v = u.badgeTextStyle,
      O = u.badgeDotStyle,
      w = u.getBadgeColor,
      D = u.getBadgeDotColor,
      M = u.showBadgeDot,
      h = u.onPress,
      P = u.THEME,
      T = React.useCallback(
        function () {
          return h(y);
        },
        [h, y]
      ),
      module847 = React.useMemo(
        function () {
          return [require('./847').RTL_DIRECTION(f, P.badgeStyle)].concat(module35.default([p].flat()), [
            {
              backgroundColor: w(y),
            },
          ]);
        },
        [P, f, p, w]
      ),
      module847 = React.useMemo(
        function () {
          return [require('./847').RTL_STYLE(f, P.badgeDotStyle)].concat(module35.default([O].flat()), [
            {
              backgroundColor: D(y),
            },
          ]);
        },
        [P, f, O, D]
      ),
      E = React.useMemo(
        function () {
          return [].concat(module35.default([b].flat()), module35.default([v].flat()));
        },
        [b, v]
      );
    return React.default.createElement(
      ReactNative.TouchableOpacity,
      module29.default(
        {
          style: module847,
        },
        s,
        {
          onPress: T,
        }
      ),
      M &&
        React.default.createElement(ReactNative.View, {
          style: module847,
        }),
      React.default.createElement(
        ReactNative.Text,
        {
          style: E,
        },
        c
      )
    );
  },
  function (t, o) {
    return t.label === o.label && t.value === o.value && t.showBadgeDot === o.showBadgeDot && t.rtl === o.rtl && t.theme === o.theme;
  }
);
exports.default = f;
