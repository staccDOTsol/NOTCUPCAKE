exports.default = function (n) {
  var l = n.onShow,
    u = n.onHide;
  React.useEffect(
    function () {
      var o, n, f, y;

      if ('ios' === ReactNative.Platform.OS) {
        o = ReactNative.Keyboard.addListener('keyboardWillShow', l);
        n = ReactNative.Keyboard.addListener('keyboardWillHide', u);
      } else {
        f = ReactNative.Keyboard.addListener('keyboardDidShow', l);
        y = ReactNative.Keyboard.addListener('keyboardDidHide', u);
      }

      return function () {
        var b, v, c, s;

        if ('ios' === ReactNative.Platform.OS) {
          if (null != (b = o) && b.remove) o.remove();
          else ReactNative.Keyboard.removeListener('keyboardWillShow', l);
          if (null != (v = n) && v.remove) n.remove();
          else ReactNative.Keyboard.removeListener('keyboardWillHide', u);
        } else {
          if (null != (c = f) && c.remove) f.remove();
          else ReactNative.Keyboard.removeListener('keyboardDidShow', l);
          if (null != (s = y) && s.remove) y.remove();
          else ReactNative.Keyboard.removeListener('keyboardDidHide', u);
        }
      };
    },
    [u, l]
  );
};

var React = (function (o, t) {
    if (!t && o && o.__esModule) return o;
    if (null === o || ('object' != typeof o && 'function' != typeof o))
      return {
        default: o,
      };
    var l = n(t);
    if (l && l.has(o)) return l.get(o);
    var u = {},
      f = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var y in o)
      if ('default' !== y && Object.prototype.hasOwnProperty.call(o, y)) {
        var b = f ? Object.getOwnPropertyDescriptor(o, y) : null;
        if (b && (b.get || b.set)) Object.defineProperty(u, y, b);
        else u[y] = o[y];
      }

    u.default = o;
    if (l) l.set(o, u);
    return u;
  })(require('react')),
  ReactNative = require('react-native');

function n(o) {
  if ('function' != typeof WeakMap) return null;
  var t = new WeakMap(),
    l = new WeakMap();
  return (n = function (o) {
    return o ? l : t;
  })(o);
}
