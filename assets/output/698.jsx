var e,
  module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (e, t) {
    if (!t && e && e.__esModule) return e;
    if (null === e || ('object' != typeof e && 'function' != typeof e))
      return {
        default: e,
      };
    var n = s(t);
    if (n && n.has(e)) return n.get(e);
    var o = {},
      c = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var l in e)
      if ('default' !== l && Object.prototype.hasOwnProperty.call(e, l)) {
        var u = c ? Object.getOwnPropertyDescriptor(e, l) : null;
        if (u && (u.get || u.set)) Object.defineProperty(o, l, u);
        else o[l] = e[l];
      }

    o.default = e;
    if (n) n.set(e, o);
    return o;
  })(require('react')),
  ReactNative = require('react-native'),
  l = ['name', 'color', 'size'];

function s(e) {
  if ('function' != typeof WeakMap) return null;
  var t = new WeakMap(),
    n = new WeakMap();
  return (s = function (e) {
    return e ? n : t;
  })(e);
}

try {
  e = require('./699').default;
} catch (s) {
  var u = false;

  e = function (e) {
    var f = e.name,
      v = e.color,
      y = e.size,
      b = module105.default(e, l);

    if (!u) {
      if (!/(Cannot find module|Module not found|Cannot resolve module)/.test(s.message)) console.error(s);
      console.warn(
        "Tried to use the icon '" + f + "' in a component from 'react-native-paper', but 'react-native-vector-icons/MaterialCommunityIcons' could not be loaded.",
        "To remove this warning, try installing 'react-native-vector-icons' or use another method to specify icon: https://callstack.github.io/react-native-paper/icons.html."
      );
      u = true;
    }

    return <ReactNative.Text>□</ReactNative.Text>;
  };
}

var f =
  'web' === ReactNative.Platform.OS
    ? {
        role: 'img',
        focusable: false,
      }
    : {
        accessibilityElementsHidden: true,
        importantForAccessibility: 'no-hide-descendants',
      };
exports.accessibilityProps = f;

var p = ReactNative.StyleSheet.create({
    icon: {
      backgroundColor: 'transparent',
    },
  }),
  v = function (n) {
    var c = n.name,
      l = n.color,
      s = n.size,
      u = n.direction,
      v = n.allowFontScaling;
    return <e />;
  };

exports.default = v;
