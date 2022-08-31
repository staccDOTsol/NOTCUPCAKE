var module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var u = v(n);
    if (u && u.has(t)) return u.get(t);
    var o = {},
      f = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var l in t)
      if ('default' !== l && Object.prototype.hasOwnProperty.call(t, l)) {
        var c = f ? Object.getOwnPropertyDescriptor(t, l) : null;
        if (c && (c.get || c.set)) Object.defineProperty(o, l, c);
        else o[l] = t[l];
      }

    o.default = t;
    if (u) u.set(t, o);
    return o;
  })(require('react')),
  ReactNative = require('react-native'),
  module698 = require('@babel/runtime/helpers/interopRequireDefault')(require('./698')),
  module706 = require('@babel/runtime/helpers/interopRequireDefault')(require('./706')),
  module680 = require('@babel/runtime/helpers/interopRequireDefault')(require('./680')),
  module708 = require('@babel/runtime/helpers/interopRequireDefault')(require('./708'));

function v(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    u = new WeakMap();
  return (v = function (t) {
    return t ? u : n;
  })(t);
}

var module679 = function (v) {
  var module709 = module29.default({}, v),
    h = (!module709.theme && (null == ReactNative.Appearance ? undefined : ReactNative.Appearance.getColorScheme())) || 'light',
    y = React.useState(false),
    O = module23.default(y, 2),
    b = O[0],
    P = O[1],
    j = React.useState(h),
    A = module23.default(j, 2),
    E = A[0],
    M = A[1],
    _ = function (t) {
      var n = t.colorScheme;
      M(n);
    };

  React.useEffect(
    function () {
      var t;
      if (!module709.theme) t = require('./709').addEventListener(ReactNative.AccessibilityInfo, 'reduceMotionChanged', P);
      return function () {
        var n;
        if (!(module709.theme || null == (n = t))) n.remove();
      };
    },
    [module709.theme]
  );
  React.useEffect(
    function () {
      var t;
      if (!module709.theme) t = null == ReactNative.Appearance ? undefined : ReactNative.Appearance.addChangeListener(_);
      return function () {
        if (!module709.theme) t ? t.remove() : null == ReactNative.Appearance || ReactNative.Appearance.removeChangeListener(_);
      };
    },
    [module709.theme]
  );
  var w = module709.children,
    k = module709.settings;
  return (
    <module706.default>
      {React.createElement(
        require('./710').Provider,
        {
          value: k || {
            icon: module698.default,
          },
        },
        React.createElement(
          require('./679').ThemeProvider,
          {
            theme: (function () {
              var t = module709.theme;
              if (t) return t;
              var u = 'dark' === E ? module708.default : module680.default;
              return module29.default({}, u, {
                animation: module29.default({}, u.animation, {
                  scale: b ? 0 : 1,
                }),
              });
            })(),
          },
          w
        )
      )}
    </module706.default>
  );
};

exports.default = module679;
