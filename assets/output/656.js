exports.default = function () {
  var module612 = React.useState(function () {
      return require('./612').nanoid();
    }),
    u = module23.default(module612, 1)[0],
    module595 = React.useContext(require('./595').SingleNavigatorContext);
  if (undefined === module595)
    throw new Error(
      "Couldn't register the navigator. Have you wrapped your app with 'NavigationContainer'?\n\nThis can also happen if there are multiple copies of '@react-navigation' packages installed."
    );
  React.useEffect(
    function () {
      var t = module595.register,
        n = module595.unregister;
      t(u);
      return function () {
        return n(u);
      };
    },
    [module595, u]
  );
  return u;
};

var module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var u = o(n);
    if (u && u.has(t)) return u.get(t);
    var f = {},
      c = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var p in t)
      if ('default' !== p && Object.prototype.hasOwnProperty.call(t, p)) {
        var l = c ? Object.getOwnPropertyDescriptor(t, p) : null;
        if (l && (l.get || l.set)) Object.defineProperty(f, p, l);
        else f[p] = t[p];
      }

    f.default = t;
    if (u) u.set(t, f);
    return f;
  })(require('react'));

function o(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    u = new WeakMap();
  return (o = function (t) {
    return t ? u : n;
  })(t);
}
