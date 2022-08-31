var React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var u = o(n);
    if (u && u.has(t)) return u.get(t);
    var l = {},
      f = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in t)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(t, c)) {
        var p = f ? Object.getOwnPropertyDescriptor(t, c) : null;
        if (p && (p.get || p.set)) Object.defineProperty(l, c, p);
        else l[c] = t[c];
      }

    l.default = t;
    if (u) u.set(t, l);
    return l;
  })(require('react')),
  ReactNative = require('react-native');

function o(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    u = new WeakMap();
  return (o = function (t) {
    return t ? u : n;
  })(t);
}

var u = React.createContext(null);
exports.RadioButtonContext = u;

var l = function (o) {
  var l = o.value,
    f = o.onValueChange,
    c = o.children;
  return (
    <u.Provider
      value={{
        value: l,
        onValueChange: f,
      }}
    >
      <ReactNative.View accessibilityRole="radiogroup">{c}</ReactNative.View>
    </u.Provider>
  );
};

exports.RadioButtonGroup = l;
l.displayName = 'RadioButton.Group';
var f = l;
exports.default = f;
