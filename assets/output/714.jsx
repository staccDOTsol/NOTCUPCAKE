var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = p(n);
    if (o && o.has(t)) return o.get(t);
    var l = {},
      u = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in t)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(t, c)) {
        var f = u ? Object.getOwnPropertyDescriptor(t, c) : null;
        if (f && (f.get || f.set)) Object.defineProperty(l, c, f);
        else l[c] = t[c];
      }

    l.default = t;
    if (o) o.set(t, l);
    return l;
  })(require('react')),
  ReactNative = require('react-native'),
  module715 = require('@babel/runtime/helpers/interopRequireDefault')(require('./715')),
  module716 = require('@babel/runtime/helpers/interopRequireDefault')(require('./716')),
  f = ['icon', 'size', 'style', 'theme'],
  s = ['backgroundColor'];

function p(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (p = function (t) {
    return t ? o : n;
  })(t);
}

var y = function (p) {
  var y,
    b = p.icon,
    h = p.size,
    w = undefined === h ? 64 : h,
    O = p.style,
    j = p.theme,
    k = module105.default(p, f),
    P = ReactNative.StyleSheet.flatten(O) || {},
    _ = P.backgroundColor,
    M = undefined === _ ? j.colors.primary : _,
    C = module105.default(P, s),
    module691 = null != (y = k.color) ? y : module716.default(M, require('./691').white, 'rgba(0, 0, 0, .54)');
  return (
    <ReactNative.View>
      <module715.default source={b} color={module691} size={0.6 * w} />
    </ReactNative.View>
  );
};

y.displayName = 'Avatar.Icon';

var v = ReactNative.StyleSheet.create({
    container: {
      justifyContent: 'center',
      alignItems: 'center',
    },
  }),
  module679 = require('./679').withTheme(y);

exports.default = module679;
