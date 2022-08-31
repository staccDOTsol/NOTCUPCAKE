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
    var u = {},
      o = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var f in t)
      if ('default' !== f && Object.prototype.hasOwnProperty.call(t, f)) {
        var y = o ? Object.getOwnPropertyDescriptor(t, f) : null;
        if (y && (y.get || y.set)) Object.defineProperty(u, f, y);
        else u[f] = t[f];
      }

    u.default = t;
    if (l) l.set(t, u);
    return u;
  })(require('react')),
  ReactNative = require('react-native'),
  module727 = require('@babel/runtime/helpers/interopRequireDefault')(require('./727')),
  f = ['children', 'title', 'titleStyle', 'style'];

function c(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    l = new WeakMap();
  return (c = function (t) {
    return t ? l : n;
  })(t);
}

var y = function (c) {
  var y = c.children,
    s = c.title,
    v = c.titleStyle,
    O = c.style,
    b = module105.default(c, f);
  return (
    <ReactNative.View>
      {s ? <module727.default style={v}>{s}</module727.default> : null}
      {y}
    </ReactNative.View>
  );
};

y.displayName = 'List.Section';

var p = ReactNative.StyleSheet.create({
    container: {
      marginVertical: 8,
    },
  }),
  module679 = require('./679').withTheme(y);

exports.default = module679;
