var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var u = l(n);
    if (u && u.has(t)) return u.get(t);
    var o = {},
      f = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in t)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(t, c)) {
        var p = f ? Object.getOwnPropertyDescriptor(t, c) : null;
        if (p && (p.get || p.set)) Object.defineProperty(o, c, p);
        else o[c] = t[c];
      }

    o.default = t;
    if (u) u.set(t, o);
    return o;
  })(require('react')),
  ReactNative = require('react-native'),
  f = ['style', 'theme'];

function l(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    u = new WeakMap();
  return (l = function (t) {
    return t ? u : n;
  })(t);
}

var c = ReactNative.StyleSheet.create({
    text: {
      textAlign: 'left',
    },
  }),
  module679 = require('./679').withTheme(
    React.forwardRef(function (l, p) {
      var s = l.style,
        v = l.theme,
        y = module105.default(l, f),
        O = React.useRef(null);
      React.useImperativeHandle(p, function () {
        return {
          setNativeProps: function (t) {
            var n;
            return null == (n = O.current) ? undefined : n.setNativeProps(t);
          },
        };
      });
      return <ReactNative.Text />;
    })
  );

exports.default = module679;
