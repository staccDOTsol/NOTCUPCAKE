function t(o) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    p = new WeakMap();
  return (t = function (t) {
    return t ? p : n;
  })(o);
}

var module21 = (function (o, n) {
    if (!n && o && o.__esModule) return o;
    if (null === o || ('object' != typeof o && 'function' != typeof o))
      return {
        default: o,
      };
    var p = t(n);
    if (p && p.has(o)) return p.get(o);
    var c = {},
      f = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var u in o)
      if ('default' !== u && Object.prototype.hasOwnProperty.call(o, u)) {
        var s = f ? Object.getOwnPropertyDescriptor(o, u) : null;
        if (s && (s.get || s.set)) Object.defineProperty(c, u, s);
        else c[u] = o[u];
      }

    c.default = o;
    if (p) p.set(o, c);
    return c;
  })(require('./21')).getEnforcing('ExceptionsManager'),
  n = {
    reportFatalException: function (t, n, p) {
      module21.reportFatalException(t, n, p);
    },
    reportSoftException: function (t, n, p) {
      module21.reportSoftException(t, n, p);
    },
    updateExceptionMessage: function (t, n, p) {
      module21.updateExceptionMessage(t, n, p);
    },
    dismissRedbox: function () {
      if (module21.dismissRedbox) module21.dismissRedbox();
    },
    reportException: function (t) {
      if (module21.reportException) module21.reportException(t);
      else if (t.isFatal) n.reportFatalException(t.message, t.stack, t.id);
      else n.reportSoftException(t.message, t.stack, t.id);
    },
  },
  p = n;

exports.default = p;
