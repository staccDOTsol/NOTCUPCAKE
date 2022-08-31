exports.default = function (c) {
  var p = c.visible,
    s = c.children,
    v = c.style,
    y = module105.default(c, f);
  if ('web' === ReactNative.Platform.OS) return <ReactNative.View>{s}</ReactNative.View>;
  return (
    <ReactNative.View style={[u.container, v]} pointerEvents={p ? 'auto' : 'none'}>
      <ReactNative.View
        collapsable={false}
        removeClippedSubviews={('ios' !== ReactNative.Platform.OS && 'macos' !== ReactNative.Platform.OS) || !p}
        pointerEvents={p ? 'auto' : 'none'}
        style={p ? u.attached : u.detached}
      >
        {s}
      </ReactNative.View>
    </ReactNative.View>
  );
};

var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = c(n);
    if (o && o.has(t)) return o.get(t);
    var l = {},
      f = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var u in t)
      if ('default' !== u && Object.prototype.hasOwnProperty.call(t, u)) {
        var p = f ? Object.getOwnPropertyDescriptor(t, u) : null;
        if (p && (p.get || p.set)) Object.defineProperty(l, u, p);
        else l[u] = t[u];
      }

    l.default = t;
    if (o) o.set(t, l);
    return l;
  })(require('react')),
  ReactNative = require('react-native'),
  f = ['visible', 'children', 'style'];

function c(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (c = function (t) {
    return t ? o : n;
  })(t);
}

var u = ReactNative.StyleSheet.create({
  container: {
    flex: 1,
    overflow: 'hidden',
  },
  attached: {
    flex: 1,
  },
  detached: {
    flex: 1,
    top: 3e4,
  },
});
