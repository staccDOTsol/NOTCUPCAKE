var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  React = (function (t, o) {
    if (!o && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var n = c(o);
    if (n && n.has(t)) return n.get(t);
    var u = {},
      l = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var f in t)
      if ('default' !== f && Object.prototype.hasOwnProperty.call(t, f)) {
        var s = l ? Object.getOwnPropertyDescriptor(t, f) : null;
        if (s && (s.get || s.set)) Object.defineProperty(u, f, s);
        else u[f] = t[f];
      }

    u.default = t;
    if (n) n.set(t, u);
    return u;
  })(require('react')),
  module1062 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1062')),
  module1059 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1059')),
  module1063 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1063'));

function c(t) {
  if ('function' != typeof WeakMap) return null;
  var o = new WeakMap(),
    n = new WeakMap();
  return (c = function (t) {
    return t ? n : o;
  })(t);
}

var f = React.memo(function (c) {
  var module1065,
    s = c.back,
    p = c.layout,
    v = c.progress,
    y = c.options,
    h = c.route,
    k = c.navigation,
    B = c.styleInterpolator,
    module1074 = require('./1074').useSafeAreaInsets();

  if (undefined !== y.headerBackTitle) module1065 = y.headerBackTitle;
  else if (s) module1065 = s.title;
  var module586 = React.useCallback(
      module1062.default(function () {
        if (k.isFocused() && k.canGoBack())
          k.dispatch(
            module29.default({}, require('./586').StackActions.pop(), {
              source: h.key,
            })
          );
      }, 50),
      [k, h.key]
    ),
    j = React.useContext(module1059.default),
    module1065 = React.useContext(require('./1065').HeaderShownContext),
    P = undefined !== y.headerStatusBarHeight ? y.headerStatusBarHeight : j || module1065 ? 0 : module1074.top;
  return <module1063.default />;
});
exports.default = f;
