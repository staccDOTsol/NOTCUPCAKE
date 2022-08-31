exports.default = function (t) {
  var module591 = require('./591').useNavigation(),
    module591 = require('./591').useRoute();

  React.useEffect(
    function () {
      for (var e = module591; e && 'tab' !== e.getState().type; ) e = e.getParent();

      if (e) {
        var c = e.addListener('tabPress', function (c) {
          var u = module591.isFocused(),
            f = module591 === e || module591.getState().routes[0].key === module591.key;
          requestAnimationFrame(function () {
            var e = n(t);
            if (u && f && e && !c.defaultPrevented)
              'scrollToTop' in e
                ? e.scrollToTop()
                : 'scrollTo' in e
                ? e.scrollTo({
                    x: 0,
                    y: 0,
                    animated: true,
                  })
                : 'scrollToOffset' in e
                ? e.scrollToOffset({
                    offset: 0,
                    animated: true,
                  })
                : 'scrollResponderScrollTo' in e &&
                  e.scrollResponderScrollTo({
                    y: 0,
                    animated: true,
                  });
          });
        });
        return c;
      }
    },
    [module591, t, module591.key]
  );
};

var React = (function (e, n) {
  if (!n && e && e.__esModule) return e;
  if (null === e || ('object' != typeof e && 'function' != typeof e))
    return {
      default: e,
    };
  var o = t(n);
  if (o && o.has(e)) return o.get(e);
  var l = {},
    c = Object.defineProperty && Object.getOwnPropertyDescriptor;

  for (var u in e)
    if ('default' !== u && Object.prototype.hasOwnProperty.call(e, u)) {
      var f = c ? Object.getOwnPropertyDescriptor(e, u) : null;
      if (f && (f.get || f.set)) Object.defineProperty(l, u, f);
      else l[u] = e[u];
    }

  l.default = e;
  if (o) o.set(e, l);
  return l;
})(require('react'));

function t(e) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (t = function (e) {
    return e ? o : n;
  })(e);
}

function n(e) {
  return null == e.current
    ? null
    : 'scrollToTop' in e.current || 'scrollTo' in e.current || 'scrollToOffset' in e.current || 'scrollResponderScrollTo' in e.current
    ? e.current
    : 'getScrollResponder' in e.current
    ? e.current.getScrollResponder()
    : 'getNode' in e.current
    ? e.current.getNode()
    : e.current;
}
