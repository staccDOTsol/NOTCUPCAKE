exports.default = function () {
  var module591 = React.useContext(require('./591').NavigationContainerRefContext),
    u = React.useContext(module589.default);
  return React.useCallback(
    function (t) {
      if (undefined === module591) throw new Error("Couldn't find a navigation object. Is your component inside NavigationContainer?");

      if ('string' == typeof t) {
        if (!t.startsWith('/')) throw new Error("The path must start with '/' (" + t + ').');
        var n = u.options,
          module591 = null != n && n.getStateFromPath ? n.getStateFromPath(t, n.config) : require('./591').getStateFromPath(t, null == n ? undefined : n.config);
        if (!module591) throw new Error('Failed to parse the path to a navigation state.');

        var module591 = require('./591').getActionFromState(module591, null == n ? undefined : n.config);

        if (undefined !== module591) module591.dispatch(module591);
        else module591.reset(module591);
      } else module591.navigate(t.screen, t.params);
    },
    [u, module591]
  );
};

var React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var u = o(n);
    if (u && u.has(t)) return u.get(t);
    var f = {},
      c = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var l in t)
      if ('default' !== l && Object.prototype.hasOwnProperty.call(t, l)) {
        var s = c ? Object.getOwnPropertyDescriptor(t, l) : null;
        if (s && (s.get || s.set)) Object.defineProperty(f, l, s);
        else f[l] = t[l];
      }

    f.default = t;
    if (u) u.set(t, f);
    return f;
  })(require('react')),
  module589 = require('@babel/runtime/helpers/interopRequireDefault')(require('./589'));

function o(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    u = new WeakMap();
  return (o = function (t) {
    return t ? u : n;
  })(t);
}
