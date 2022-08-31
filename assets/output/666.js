exports.default = function (n, u) {
  var o = u.independent,
    c = u.enabled,
    f = undefined === c || c,
    s = u.prefixes,
    l = u.filter,
    v = u.config,
    p = u.getInitialURL,
    h =
      undefined === p
        ? function () {
            return Promise.race([
              ReactNative.Linking.getInitialURL(),
              new Promise(function (e) {
                return setTimeout(e, 150);
              }),
            ]);
          }
        : p,
    y = u.subscribe,
    b =
      undefined === y
        ? function (e) {
            var r = function (t) {
                var r = t.url;
                return e(r);
              },
              n = ReactNative.Linking.addEventListener('url', r);

            return function () {
              if (null != n && n.remove) n.remove();
              else ReactNative.Linking.removeEventListener('url', r);
            };
          }
        : y,
    k = u.getStateFromPath,
    module591 = undefined === k ? require('./591').getStateFromPath : k,
    P = u.getActionFromState,
    module591 = undefined === P ? require('./591').getActionFromState : P;
  React.useEffect(function () {}, [f, o]);

  var O = React.useRef(f),
    j = React.useRef(s),
    L = React.useRef(l),
    S = React.useRef(v),
    _ = React.useRef(h),
    E = React.useRef(module591),
    M = React.useRef(module591);

  React.useEffect(function () {
    O.current = f;
    j.current = s;
    L.current = l;
    S.current = v;
    _.current = h;
    E.current = module591;
    M.current = module591;
  });
  var F = React.useCallback(function (e) {
      if (e && (!L.current || L.current(e))) {
        var t = module667.default(j.current, e);
        return t ? E.current(t, S.current) : undefined;
      }
    }, []),
    A = React.useCallback(
      function () {
        var e;

        if (O.current) {
          var t = _.current();

          if (null != t && 'string' != typeof t)
            return t.then(function (e) {
              var t = F(e);
              return t;
            });
          e = F(t);
        }

        var r = {
          then: function (t) {
            return Promise.resolve(t ? t(e) : e);
          },
          catch: function () {
            return r;
          },
        };
        return r;
      },
      [F]
    );
  React.useEffect(
    function () {
      return b(function (e) {
        if (f) {
          var t = n.current,
            r = t ? F(e) : undefined;

          if (t && r) {
            var u = t.getRootState();
            if (
              r.routes.some(function (e) {
                return !(null != u && u.routeNames.includes(e.name));
              })
            )
              return void console.warn(
                "The navigation state parsed from the URL contains routes not present in the root navigator. This usually means that the linking configuration doesn't match the navigation structure. See https://reactnavigation.org/docs/configuring-links for more details on how to specify a linking configuration."
              );
            var o = M.current(r, S.current);
            if (undefined !== o)
              try {
                t.dispatch(o);
              } catch (t) {
                console.warn("An error occurred when trying to handle the link '" + e + "': " + ('object' == typeof t && null != t && 'message' in t ? t.message : t));
              }
            else t.resetRoot(r);
          }
        }
      });
    },
    [f, F, n, b]
  );
  return {
    getInitialState: A,
  };
};

var React = (function (e, t) {
    if (!t && e && e.__esModule) return e;
    if (null === e || ('object' != typeof e && 'function' != typeof e))
      return {
        default: e,
      };
    var r = n(t);
    if (r && r.has(e)) return r.get(e);
    var u = {},
      o = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in e)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(e, c)) {
        var f = o ? Object.getOwnPropertyDescriptor(e, c) : null;
        if (f && (f.get || f.set)) Object.defineProperty(u, c, f);
        else u[c] = e[c];
      }

    u.default = e;
    if (r) r.set(e, u);
    return u;
  })(require('react')),
  ReactNative = require('react-native'),
  module667 = require('@babel/runtime/helpers/interopRequireDefault')(require('./667'));

function n(e) {
  if ('function' != typeof WeakMap) return null;
  var t = new WeakMap(),
    r = new WeakMap();
  return (n = function (e) {
    return e ? r : t;
  })(e);
}
