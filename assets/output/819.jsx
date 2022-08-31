var React = (function (t, o) {
    if (!o && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var n = u(o);
    if (n && n.has(t)) return n.get(t);
    var l = {},
      i = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var f in t)
      if ('default' !== f && Object.prototype.hasOwnProperty.call(t, f)) {
        var c = i ? Object.getOwnPropertyDescriptor(t, f) : null;
        if (c && (c.get || c.set)) Object.defineProperty(l, f, c);
        else l[f] = t[f];
      }

    l.default = t;
    if (n) n.set(t, l);
    return l;
  })(require('react')),
  ReactNative = require('react-native'),
  module818 = require('@babel/runtime/helpers/interopRequireDefault')(require('./818')),
  module817 = require('@babel/runtime/helpers/interopRequireDefault')(require('./817'));

function u(t) {
  if ('function' != typeof WeakMap) return null;
  var o = new WeakMap(),
    n = new WeakMap();
  return (u = function (t) {
    return t ? n : o;
  })(t);
}

var i = function (u) {
  var i = u.value,
    c = u.onValueChange,
    p = u.children,
    s = u.style,
    y = React.Children.count(p);
  return (
    <module818.default value={i} onValueChange={c}>
      <ReactNative.View style={[f.row, s]}>
        <p />
      </ReactNative.View>
    </module818.default>
  );
};

exports.ToggleButtonRow = i;
i.displayName = 'ToggleButton.Row';
var f = ReactNative.StyleSheet.create({
    row: {
      flexDirection: 'row',
    },
    button: {
      borderWidth: ReactNative.StyleSheet.hairlineWidth,
    },
    first: {
      borderTopRightRadius: 0,
      borderBottomRightRadius: 0,
    },
    middle: {
      borderRadius: 0,
      borderLeftWidth: 0,
    },
    last: {
      borderLeftWidth: 0,
      borderTopLeftRadius: 0,
      borderBottomLeftRadius: 0,
    },
  }),
  c = i;
exports.default = c;
