var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var l = h(n);
    if (l && l.has(t)) return l.get(t);
    var o = {},
      i = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var u in t)
      if ('default' !== u && Object.prototype.hasOwnProperty.call(t, u)) {
        var f = i ? Object.getOwnPropertyDescriptor(t, u) : null;
        if (f && (f.get || f.set)) Object.defineProperty(o, u, f);
        else o[u] = t[u];
      }

    o.default = t;
    if (l) l.set(t, o);
    return o;
  })(require('react')),
  ReactNative = require('react-native'),
  module681 = require('@babel/runtime/helpers/interopRequireDefault')(require('./681')),
  module799 = require('@babel/runtime/helpers/interopRequireDefault')(require('./799')),
  module800 = require('@babel/runtime/helpers/interopRequireDefault')(require('./800')),
  module801 = require('@babel/runtime/helpers/interopRequireDefault')(require('./801')),
  module734 = require('@babel/runtime/helpers/interopRequireDefault')(require('./734')),
  module712 = require('@babel/runtime/helpers/interopRequireDefault')(require('./712')),
  y = ['children', 'dark', 'style', 'theme'],
  v = ['backgroundColor', 'elevation'];

function h(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    l = new WeakMap();
  return (h = function (t) {
    return t ? l : n;
  })(t);
}

exports.DEFAULT_APPBAR_HEIGHT = 56;

var b = function (h) {
    var b,
      E = h.children,
      P = h.dark,
      k = h.style,
      O = h.theme,
      _ = module105.default(h, y),
      A = O.colors,
      j = O.dark,
      T = O.mode,
      C = ReactNative.StyleSheet.flatten(k) || {},
      D = C.backgroundColor,
      H = C.elevation,
      M = undefined === H ? 4 : H,
      S = module105.default(C, v),
      I = D || (j && 'adaptive' === T ? module712.default(M, A.surface) : A.primary);

    b = 'boolean' == typeof P ? P : 'transparent' !== I && ('string' != typeof I || !module681.default(I).isLight());
    var L = false,
      V = false,
      W = false;

    if ('ios' === ReactNative.Platform.OS) {
      var B = false,
        F = 0,
        G = 0;
      React.Children.forEach(E, function (t) {
        if (React.isValidElement(t)) t.type === module799.default ? (B = true) : B ? G++ : F++;
      });
      V = (L = B && F < 2 && G < 2) && 0 === F;
      W = L && 0 === G;
    }

    return (
      <module734.default>
        {V ? <ReactNative.View style={w.spacing} /> : null}
        {React.Children.toArray(E)
          .filter(function (t) {
            return null != t && 'boolean' != typeof t;
          })
          .map(function (t, n) {
            if (!React.isValidElement(t) || ![module799.default, module800.default, module801.default].includes(t.type)) return t;
            var module691 = {
              color: undefined !== t.props.color ? t.props.color : b ? require('./691').white : require('./691').black,
            };
            if (t.type === module799.default)
              module691.style = [
                0 !== n && {
                  marginLeft: 8,
                },
                L && {
                  alignItems: 'center',
                },
                t.props.style,
              ];
            return React.cloneElement(t, module691);
          })}
        {W ? <ReactNative.View style={w.spacing} /> : null}
      </module734.default>
    );
  },
  w = ReactNative.StyleSheet.create({
    appbar: {
      height: 56,
      flexDirection: 'row',
      alignItems: 'center',
      paddingHorizontal: 4,
      elevation: 4,
    },
    spacing: {
      width: 48,
    },
  }),
  module679 = require('./679').withTheme(b);

exports.default = module679;

var module679 = require('./679').withTheme(b);

exports.Appbar = module679;
