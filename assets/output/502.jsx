var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = f(n);
    if (o && o.has(t)) return o.get(t);
    var u = {},
      l = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in t)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(t, c)) {
        var p = l ? Object.getOwnPropertyDescriptor(t, c) : null;
        if (p && (p.get || p.set)) Object.defineProperty(u, c, p);
        else u[c] = t[c];
      }

    u.default = t;
    if (o) o.set(t, u);
    return u;
  })(require('react')),
  ReactNative = require('react-native'),
  module400 = require('@babel/runtime/helpers/interopRequireDefault')(require('./400'));

function f(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (f = function (t) {
    return t ? o : n;
  })(t);
}

var c = module400.default(ReactNative.ScrollView, {
  disallowInterruption: true,
  shouldCancelWhenOutside: false,
});
exports.ScrollView = c;
var p = module400.default(ReactNative.Switch, {
  shouldCancelWhenOutside: false,
  shouldActivateOnStart: true,
  disallowInterruption: true,
});
exports.Switch = p;
var s = module400.default(ReactNative.TextInput);
exports.TextInput = s;
var w = module400.default(ReactNative.DrawerLayoutAndroid, {
  disallowInterruption: true,
});
exports.DrawerLayoutAndroid = w;
var v = React.forwardRef(function (l, f) {
  for (var p = {}, s = {}, w = 0, module401 = Object.entries(l); w < module401.length; w++) {
    var y = module401[w],
      O = module23.default(y, 2),
      h = O[0],
      b = O[1];
    if (require('./401').nativeViewProps.includes(h)) s[h] = b;
    else p[h] = b;
  }

  return <ReactNative.FlatList />;
});
exports.FlatList = v;
