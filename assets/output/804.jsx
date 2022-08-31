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
      u = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var f in t)
      if ('default' !== f && Object.prototype.hasOwnProperty.call(t, f)) {
        var p = u ? Object.getOwnPropertyDescriptor(t, f) : null;
        if (p && (p.get || p.set)) Object.defineProperty(l, f, p);
        else l[f] = t[f];
      }

    l.default = t;
    if (o) o.set(t, l);
    return l;
  })(require('react')),
  ReactNative = require('react-native'),
  module712 = require('@babel/runtime/helpers/interopRequireDefault')(require('./712')),
  module711 = require('@babel/runtime/helpers/interopRequireDefault')(require('./711')),
  p = ['statusBarHeight', 'style', 'dark'],
  c = ['height', 'elevation', 'backgroundColor', 'zIndex'];

function s(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (s = function (t) {
    return t ? o : n;
  })(t);
}

var v = function (s) {
  var module798 = s.statusBarHeight,
    module774 = undefined === module798 ? require('./774').APPROX_STATUSBAR_HEIGHT : module798,
    h = s.style,
    k = s.dark,
    A = module105.default(s, p),
    H = A.theme,
    O = H.dark,
    P = H.colors,
    _ = H.mode,
    w = ReactNative.StyleSheet.flatten(h) || {},
    T = w.height,
    module798 = undefined === T ? require('./798').DEFAULT_APPBAR_HEIGHT : T,
    S = w.elevation,
    B = undefined === S ? 4 : S,
    E = w.backgroundColor,
    I = w.zIndex,
    M = undefined === I ? 0 : I,
    C = module105.default(w, c),
    x = E || (O && 'adaptive' === _ ? module712.default(B, P.surface) : P.primary),
    z = 'number' == typeof s.statusBarHeight ? ReactNative.View : ReactNative.SafeAreaView;
  return (
    <z
      style={[
        {
          backgroundColor: x,
          zIndex: M,
          elevation: B,
        },
        module711.default(B),
      ]}
    >
      {React.createElement(
        require('./798').Appbar,
        module29.default(
          {
            style: [
              {
                height: module798,
                backgroundColor: x,
                marginTop: module774,
              },
              y.appbar,
              C,
            ],
            dark: k,
          },
          A
        )
      )}
    </z>
  );
};

v.displayName = 'Appbar.Header';

var y = ReactNative.StyleSheet.create({
    appbar: {
      elevation: 0,
    },
  }),
  module679 = require('./679').withTheme(v);

exports.default = module679;

var module679 = require('./679').withTheme(v);

exports.AppbarHeader = module679;
