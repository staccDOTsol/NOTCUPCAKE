var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, o) {
    if (!o && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var n = l(o);
    if (n && n.has(t)) return n.get(t);
    var u = {},
      f = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var s in t)
      if ('default' !== s && Object.prototype.hasOwnProperty.call(t, s)) {
        var c = f ? Object.getOwnPropertyDescriptor(t, s) : null;
        if (c && (c.get || c.set)) Object.defineProperty(u, s, c);
        else u[s] = t[s];
      }

    u.default = t;
    if (n) n.set(t, u);
    return u;
  })(require('react')),
  ReactNative = require('react-native'),
  f = ['size', 'source', 'style', 'onError', 'onLayout', 'onLoad', 'onLoadEnd', 'onLoadStart', 'onProgress', 'theme'];

function l(t) {
  if ('function' != typeof WeakMap) return null;
  var o = new WeakMap(),
    n = new WeakMap();
  return (l = function (t) {
    return t ? n : o;
  })(t);
}

var s = function (l) {
  var s = l.size,
    c = undefined === s ? 64 : s,
    y = l.source,
    p = l.style,
    v = l.onError,
    h = l.onLayout,
    L = l.onLoad,
    b = l.onLoadEnd,
    w = l.onLoadStart,
    O = l.onProgress,
    P = l.theme,
    E = module105.default(l, f),
    j = P.colors,
    _ = (ReactNative.StyleSheet.flatten(p) || {}).backgroundColor,
    k = undefined === _ ? j.primary : _;
  return (
    <ReactNative.View>
      {'function' == typeof y &&
        y({
          size: c,
        })}
      {'function' != typeof y && (
        <ReactNative.Image
          source={y}
          style={{
            width: c,
            height: c,
            borderRadius: c / 2,
          }}
          onError={v}
          onLayout={h}
          onLoad={L}
          onLoadEnd={b}
          onLoadStart={w}
          onProgress={O}
        />
      )}
    </ReactNative.View>
  );
};

s.displayName = 'Avatar.Image';

var module679 = require('./679').withTheme(s);

exports.default = module679;
