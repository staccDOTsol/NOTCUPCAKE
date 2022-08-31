var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = s(n);
    if (o && o.has(t)) return o.get(t);
    var l = {},
      f = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var u in t)
      if ('default' !== u && Object.prototype.hasOwnProperty.call(t, u)) {
        var c = f ? Object.getOwnPropertyDescriptor(t, u) : null;
        if (c && (c.get || c.set)) Object.defineProperty(l, u, c);
        else l[u] = t[u];
      }

    l.default = t;
    if (o) o.set(t, l);
    return l;
  })(require('react')),
  module681 = require('@babel/runtime/helpers/interopRequireDefault')(require('./681')),
  ReactNative = require('react-native'),
  module722 = require('@babel/runtime/helpers/interopRequireDefault')(require('./722')),
  c = ['onPress', 'style', 'theme', 'children', 'pointerEvents'];

function s(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (s = function (t) {
    return t ? o : n;
  })(t);
}

var p = function (s) {
  var p = s.onPress,
    h = s.style,
    b = s.theme,
    v = s.children,
    w = s.pointerEvents,
    O = module105.default(s, c),
    module691 = module681
      .default(b.dark ? require('./691').white : require('./691').black)
      .alpha(0.12)
      .rgb()
      .string();
  return (
    <module722.default>
      <ReactNative.View style={y.content} pointerEvents={w}>
        {v}
      </ReactNative.View>
    </module722.default>
  );
};

exports.DataTableRow = p;
p.displayName = 'DataTable.Row';

var y = ReactNative.StyleSheet.create({
    container: {
      borderStyle: 'solid',
      borderBottomWidth: ReactNative.StyleSheet.hairlineWidth,
      minHeight: 48,
      paddingHorizontal: 16,
    },
    content: {
      flex: 1,
      flexDirection: 'row',
    },
  }),
  module679 = require('./679').withTheme(p);

exports.default = module679;
