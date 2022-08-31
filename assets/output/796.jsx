var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, o) {
    if (!o && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var n = c(o);
    if (n && n.has(t)) return n.get(t);
    var l = {},
      u = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var f in t)
      if ('default' !== f && Object.prototype.hasOwnProperty.call(t, f)) {
        var s = u ? Object.getOwnPropertyDescriptor(t, f) : null;
        if (s && (s.get || s.set)) Object.defineProperty(l, f, s);
        else l[f] = t[f];
      }

    l.default = t;
    if (n) n.set(t, l);
    return l;
  })(require('react')),
  ReactNative = require('react-native'),
  module681 = require('@babel/runtime/helpers/interopRequireDefault')(require('./681')),
  f = ['value', 'disabled', 'onValueChange', 'color', 'theme'];

function c(t) {
  if ('function' != typeof WeakMap) return null;
  var o = new WeakMap(),
    n = new WeakMap();
  return (c = function (t) {
    return t ? n : o;
  })(t);
}

var s = ReactNative.NativeModules.PlatformConstants ? ReactNative.NativeModules.PlatformConstants.reactNativeVersion : undefined,
  module679 = require('./679').withTheme(function (c) {
    var v = c.value,
      b = c.disabled,
      p = c.onValueChange,
      h = c.color,
      y = c.theme,
      C = module105.default(c, f),
      O = h || y.colors.accent,
      module691 =
        'ios' === ReactNative.Platform.OS
          ? O
          : b
          ? y.dark
            ? module681.default(require('./691').white).alpha(0.1).rgb().string()
            : module681.default(require('./691').black).alpha(0.12).rgb().string()
          : module681.default(O).alpha(0.5).rgb().string(),
      module691 =
        'ios' === ReactNative.Platform.OS
          ? undefined
          : b
          ? y.dark
            ? require('./691').grey800
            : require('./691').grey400
          : v
          ? O
          : y.dark
          ? require('./691').grey400
          : require('./691').grey50,
      w =
        s && 0 === s.major && s.minor <= 56
          ? {
              onTintColor: module691,
              thumbTintColor: module691,
            }
          : 'web' === ReactNative.Platform.OS
          ? {
              activeTrackColor: module691,
              thumbColor: module691,
              activeThumbColor: O,
            }
          : {
              thumbColor: module691,
              trackColor: {
                true: module691,
                false: '',
              },
            };
    return <ReactNative.Switch />;
  });

exports.default = module679;
