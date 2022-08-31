var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, o) {
    if (!o && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var n = p(o);
    if (n && n.has(t)) return n.get(t);
    var l = {},
      s = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in t)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(t, c)) {
        var u = s ? Object.getOwnPropertyDescriptor(t, c) : null;
        if (u && (u.get || u.set)) Object.defineProperty(l, c, u);
        else l[c] = t[c];
      }

    l.default = t;
    if (n) n.set(t, l);
    return l;
  })(require('react')),
  ReactNative = require('react-native'),
  module681 = require('@babel/runtime/helpers/interopRequireDefault')(require('./681')),
  module722 = require('@babel/runtime/helpers/interopRequireDefault')(require('./722')),
  module715 = require('@babel/runtime/helpers/interopRequireDefault')(require('./715')),
  module769 = require('@babel/runtime/helpers/interopRequireDefault')(require('./769')),
  b = ['icon', 'color', 'size', 'accessibilityLabel', 'disabled', 'onPress', 'animated', 'theme', 'style'];

function p(t) {
  if ('function' != typeof WeakMap) return null;
  var o = new WeakMap(),
    n = new WeakMap();
  return (p = function (t) {
    return t ? n : o;
  })(t);
}

var y = ReactNative.StyleSheet.create({
    container: {
      alignItems: 'center',
      justifyContent: 'center',
      overflow: 'hidden',
      margin: 6,
    },
    disabled: {
      opacity: 0.32,
    },
  }),
  module679 = require('./679').withTheme(function (p) {
    var h = p.icon,
      v = p.color,
      w = p.size,
      O = undefined === w ? 24 : w,
      P = p.accessibilityLabel,
      j = p.disabled,
      _ = p.onPress,
      M = p.animated,
      S = undefined !== M && M,
      k = p.theme,
      z = p.style,
      C = module105.default(p, b),
      E = undefined !== v ? v : k.colors.text,
      L = module681.default(E).alpha(0.32).rgb().string(),
      T = S ? module769.default : module715.default,
      W = 1.5 * O;
    return (
      <module722.default>
        <ReactNative.View>
          <T color={E} source={h} size={O} />
        </ReactNative.View>
      </module722.default>
    );
  });

exports.default = module679;
