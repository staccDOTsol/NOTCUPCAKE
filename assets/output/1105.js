exports.default = function (u) {
  var o = React.useRef(undefined),
    c = React.useRef(0),
    f = React.useRef(),
    l = React.useCallback(function () {
      if (undefined !== f.current) {
        clearTimeout(f.current);
        f.current = undefined;
      }
    }, []),
    s = React.useCallback(
      function () {
        if (u()) {
          l();
          var t = ReactNative.TextInput.State.currentlyFocusedInput();
          if (!(null == t)) t.blur();
          o.current = t;
          c.current = Date.now();
        }
      },
      [l, u]
    ),
    p = React.useCallback(
      function (t) {
        if (u()) {
          if ((l(), t)) ReactNative.Keyboard.dismiss();
          else {
            var c = o.current;
            if (!(null == c)) c.blur();
          }
          o.current = undefined;
        }
      },
      [l, u]
    ),
    v = React.useCallback(
      function () {
        if (u()) {
          l();
          var t = o.current;
          if (t)
            Date.now() - c.current < 100
              ? (f.current = setTimeout(function () {
                  if (!(null == t)) t.focus();
                  o.current = undefined;
                }, 100))
              : (null == t || t.focus(), (o.current = undefined));
        }
      },
      [l, u]
    );
  React.useEffect(
    function () {
      return function () {
        return l();
      };
    },
    [l]
  );
  return {
    onPageChangeStart: s,
    onPageChangeConfirm: p,
    onPageChangeCancel: v,
  };
};

var React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = u(n);
    if (o && o.has(t)) return o.get(t);
    var c = {},
      f = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var l in t)
      if ('default' !== l && Object.prototype.hasOwnProperty.call(t, l)) {
        var s = f ? Object.getOwnPropertyDescriptor(t, l) : null;
        if (s && (s.get || s.set)) Object.defineProperty(c, l, s);
        else c[l] = t[l];
      }

    c.default = t;
    if (o) o.set(t, c);
    return c;
  })(require('react')),
  ReactNative = require('react-native');

function u(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (u = function (t) {
    return t ? o : n;
  })(t);
}
