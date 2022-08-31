var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var l = s(n);
    if (l && l.has(t)) return l.get(t);
    var o = {},
      u = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in t)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(t, c)) {
        var f = u ? Object.getOwnPropertyDescriptor(t, c) : null;
        if (f && (f.get || f.set)) Object.defineProperty(o, c, f);
        else o[c] = t[c];
      }

    o.default = t;
    if (l) l.set(t, o);
    return o;
  })(require('react')),
  ReactNative = require('react-native'),
  module719 = require('@babel/runtime/helpers/interopRequireDefault')(require('./719')),
  module716 = require('@babel/runtime/helpers/interopRequireDefault')(require('./716')),
  f = ['label', 'size', 'style', 'theme', 'labelStyle', 'color'],
  y = ['backgroundColor'];

function s(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    l = new WeakMap();
  return (s = function (t) {
    return t ? l : n;
  })(t);
}

var p = function (s) {
  var p = s.label,
    v = s.size,
    h = undefined === v ? 64 : v,
    O = s.style,
    w = s.theme,
    j = s.labelStyle,
    S = s.color,
    k = module105.default(s, f),
    P = ReactNative.StyleSheet.flatten(O) || {},
    _ = P.backgroundColor,
    x = undefined === _ ? w.colors.primary : _,
    M = module105.default(P, y),
    module691 = null != S ? S : module716.default(x, require('./691').white, 'rgba(0, 0, 0, .54)');
  return (
    <ReactNative.View>
      <module719.default
        style={[
          b.text,
          {
            color: module691,
            fontSize: h / 2,
            lineHeight: h,
          },
          j,
        ]}
        numberOfLines={1}
      >
        {p}
      </module719.default>
    </ReactNative.View>
  );
};

p.displayName = 'Avatar.Text';

var b = ReactNative.StyleSheet.create({
    container: {
      justifyContent: 'center',
      alignItems: 'center',
    },
    text: {
      textAlign: 'center',
      textAlignVertical: 'center',
    },
  }),
  module679 = require('./679').withTheme(p);

exports.default = module679;
