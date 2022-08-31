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
      c = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var a in t)
      if ('default' !== a && Object.prototype.hasOwnProperty.call(t, a)) {
        var f = c ? Object.getOwnPropertyDescriptor(t, a) : null;
        if (f && (f.get || f.set)) Object.defineProperty(u, a, f);
        else u[a] = t[a];
      }

    u.default = t;
    if (n) n.set(t, u);
    return u;
  })(require('react')),
  ReactNative = require('react-native'),
  c = ['source', 'color', 'size', 'theme'];

function l(t) {
  if ('function' != typeof WeakMap) return null;
  var o = new WeakMap(),
    n = new WeakMap();
  return (l = function (t) {
    return t ? n : o;
  })(t);
}

var a = function (t) {
    return (
      ('object' == typeof t && null !== t && Object.prototype.hasOwnProperty.call(t, 'uri') && 'string' == typeof t.uri) ||
      'number' == typeof t ||
      ('web' === ReactNative.Platform.OS && 'string' == typeof t && (t.startsWith('data:image') || /\.(bmp|jpg|jpeg|png|gif|svg)$/.test(t)))
    );
  },
  f = function (t) {
    return 'object' == typeof t && null !== t && Object.prototype.hasOwnProperty.call(t, 'uri') && 'string' == typeof t.uri ? t.uri : t;
  };

exports.isValidIcon = function (t) {
  return 'string' == typeof t || 'function' == typeof t || a(t);
};

exports.isEqualIcon = function (t, o) {
  return t === o || f(t) === f(o);
};

var module710 = require('./679').withTheme(function (l) {
  var f = l.source,
    s = l.color,
    p = l.size,
    y = l.theme,
    b = module105.default(l, c),
    j = 'object' == typeof f && f.direction && f.source ? ('auto' === f.direction ? (ReactNative.I18nManager.isRTL ? 'rtl' : 'ltr') : f.direction) : null,
    O = 'object' == typeof f && f.direction && f.source ? f.source : f,
    h = s || y.colors.text;
  return a(O) ? (
    <ReactNative.Image />
  ) : 'string' == typeof O ? (
    React.createElement(require('./710').Consumer, null, function (t) {
      return t.icon({
        name: O,
        color: h,
        size: p,
        direction: j,
      });
    })
  ) : 'function' == typeof O ? (
    O({
      color: h,
      size: p,
      direction: j,
    })
  ) : null;
});

exports.default = module710;
