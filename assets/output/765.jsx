var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var l = c(n);
    if (l && l.has(t)) return l.get(t);
    var o = {},
      u = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var f in t)
      if ('default' !== f && Object.prototype.hasOwnProperty.call(t, f)) {
        var h = u ? Object.getOwnPropertyDescriptor(t, f) : null;
        if (h && (h.get || h.set)) Object.defineProperty(o, f, h);
        else o[f] = t[f];
      }

    o.default = t;
    if (l) l.set(t, o);
    return o;
  })(require('react')),
  module681 = require('@babel/runtime/helpers/interopRequireDefault')(require('./681')),
  ReactNative = require('react-native'),
  f = ['children', 'style', 'theme'];

function c(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    l = new WeakMap();
  return (c = function (t) {
    return t ? l : n;
  })(t);
}

var h = function (c) {
  var h = c.children,
    y = c.style,
    b = c.theme,
    s = module105.default(c, f),
    module691 = module681
      .default(b.dark ? require('./691').white : require('./691').black)
      .alpha(0.12)
      .rgb()
      .string();
  return <ReactNative.View>{h}</ReactNative.View>;
};

exports.DataTableHeader = h;
h.displayName = 'DataTable.Header';

var p = ReactNative.StyleSheet.create({
    header: {
      flexDirection: 'row',
      height: 48,
      paddingHorizontal: 16,
      borderBottomWidth: 2 * ReactNative.StyleSheet.hairlineWidth,
    },
  }),
  module679 = require('./679').withTheme(h);

exports.default = module679;
