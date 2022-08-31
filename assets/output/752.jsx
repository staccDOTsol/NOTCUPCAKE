var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = l(n);
    if (o && o.has(t)) return o.get(t);
    var u = {},
      f = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in t)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(t, c)) {
        var p = f ? Object.getOwnPropertyDescriptor(t, c) : null;
        if (p && (p.get || p.set)) Object.defineProperty(u, c, p);
        else u[c] = t[c];
      }

    u.default = t;
    if (o) o.set(t, u);
    return u;
  })(require('react')),
  ReactNative = require('react-native'),
  f = ['index', 'total', 'style', 'theme'];

function l(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (l = function (t) {
    return t ? o : n;
  })(t);
}

var c = function (l) {
  var c,
    s = l.index,
    y = l.total,
    v = l.style,
    h = l.theme,
    b = module105.default(l, f),
    w = h.roundness;
  if (0 === s)
    c =
      1 === y
        ? {
            borderRadius: w,
          }
        : {
            borderTopLeftRadius: w,
            borderTopRightRadius: w,
          };
  else if ('number' == typeof y && s === y - 1)
    c = {
      borderBottomLeftRadius: w,
    };
  return (
    <ReactNative.View style={[module691.container, c, v]}>
      <ReactNative.Image />
    </ReactNative.View>
  );
};

exports.CardCover = c;
c.displayName = 'Card.Cover';

var module691 = ReactNative.StyleSheet.create({
    container: {
      height: 195,
      backgroundColor: require('./691').grey200,
      overflow: 'hidden',
    },
    image: {
      flex: 1,
      height: undefined,
      width: undefined,
      padding: 16,
      justifyContent: 'flex-end',
    },
  }),
  module679 = require('./679').withTheme(c);

exports.default = module679;
