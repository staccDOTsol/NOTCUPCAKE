var React = (function (t, n) {
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
  module698 = require('@babel/runtime/helpers/interopRequireDefault')(require('./698'));

function c(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (c = function (t) {
    return t ? o : n;
  })(t);
}

var l = function (c) {
  var module803 = c.size,
    u = c.color,
    p = module803 - 3;
  return 'ios' === ReactNative.Platform.OS ? (
    <ReactNative.View
      style={[
        f.wrapper,
        {
          width: module803,
          height: module803,
          transform: [
            {
              scaleX: ReactNative.I18nManager.isRTL ? -1 : 1,
            },
          ],
        },
      ]}
    >
      <ReactNative.Image
        source={require('./803')}
        style={[
          f.icon,
          {
            tintColor: u,
            width: p,
            height: p,
          },
        ]}
      />
    </ReactNative.View>
  ) : (
    <module698.default name="arrow-left" color={u} size={module803} direction={ReactNative.I18nManager.isRTL ? 'rtl' : 'ltr'} />
  );
};

exports.AppbarBackIcon = l;
var f = ReactNative.StyleSheet.create({
    wrapper: {
      alignItems: 'center',
      justifyContent: 'center',
    },
    icon: {
      resizeMode: 'contain',
    },
  }),
  u = l;
exports.default = u;
