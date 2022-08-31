var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = u(n);
    if (o && o.has(t)) return o.get(t);
    var l = {},
      f = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var p in t)
      if ('default' !== p && Object.prototype.hasOwnProperty.call(t, p)) {
        var c = f ? Object.getOwnPropertyDescriptor(t, p) : null;
        if (c && (c.get || c.set)) Object.defineProperty(l, p, c);
        else l[p] = t[p];
      }

    l.default = t;
    if (o) o.set(t, l);
    return l;
  })(require('react')),
  ReactNative = require('react-native'),
  f = ['index', 'total', 'siblings', 'style'];

function u(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (u = function (t) {
    return t ? o : n;
  })(t);
}

var p = function (u) {
  var p,
    s,
    y,
    v = u.index,
    b = u.total,
    O = u.siblings,
    w = u.style,
    h = module105.default(u, f),
    j = 'withTheme(CardCover)',
    P = 'withTheme(CardTitle)';

  if ('number' == typeof v && O) {
    s = O[v - 1];
    y = O[v + 1];
  }

  if ((s === j && y === j) || (s === P && y === P) || 1 === b) p = c.only;
  else if (0 === v) p = y === j || y === P ? c.only : c.first;
  else if ('number' == typeof b && v === b - 1) p = s === j || s === P ? c.only : c.last;
  else if (s === j || s === P) p = c.first;
  else if (!(y !== j && y !== P)) p = c.last;
  return <ReactNative.View />;
};

p.displayName = 'Card.Content';
var c = ReactNative.StyleSheet.create({
    container: {
      paddingHorizontal: 16,
    },
    first: {
      paddingTop: 16,
    },
    last: {
      paddingBottom: 16,
    },
    only: {
      paddingVertical: 16,
    },
  }),
  s = p;
exports.default = s;
