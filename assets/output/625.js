exports.default = function (t, l) {
  if (null == t) throw Error("Got 'undefined' for the navigation state. You must pass a valid state object.");
  if (l) module632.default(l);

  var v = null != l && l.screens ? h(null == l ? undefined : l.screens) : {},
    y = '/',
    b = t,
    j = {},
    w = function () {
      for (var s = 'number' == typeof b.index ? b.index : 0, l = b.routes[s], h = undefined, w = undefined, O = c(t), x = v, P = [], W = true; l.name in x && W; )
        if (
          ((h = x[l.name].pattern),
          P.push(l.name),
          l.params &&
            (function () {
              var t,
                u,
                s = null == (t = x[l.name]) ? undefined : t.stringify,
                c = module631.default(
                  Object.entries(l.params).map(function (t) {
                    var n = module23.default(t, 2),
                      u = n[0],
                      f = n[1];
                    return [u, null != s && s[u] ? s[u](f) : String(f)];
                  })
                );

              if ((h && module29.default(j, c), O === l)) {
                w = module29.default({}, c);
                if (!(null == (u = h)))
                  u.split('/')
                    .filter(function (t) {
                      return t.startsWith(':');
                    })
                    .forEach(function (t) {
                      var n = p(t);
                      if (w) delete w[n];
                    });
              }
            })(),
          x[l.name].screens && undefined !== l.state)
        ) {
          s = 'number' == typeof l.state.index ? l.state.index : l.state.routes.length - 1;
          var _ = l.state.routes[s],
            M = x[l.name].screens;

          if (M && _.name in M) {
            l = _;
            x = M;
          } else W = false;
        } else W = false;

      if (
        (undefined === h && (h = P.join('/')),
        undefined !== x[l.name]
          ? (y += h
              .split('/')
              .map(function (t) {
                var n = p(t);
                if ('*' === t) return l.name;

                if (t.startsWith(':')) {
                  var o = j[n];
                  return undefined === o && t.endsWith('?') ? '' : encodeURIComponent(o);
                }

                return encodeURIComponent(t);
              })
              .join('/'))
          : (y += encodeURIComponent(l.name)),
        w || (w = O.params),
        l.state)
      )
        y += '/';
      else if (w) {
        for (var I in w) 'undefined' === w[I] && delete w[I];

        var R = module626.stringify(w, {
          sort: false,
        });
        if (R) y += '?' + R;
      }
      b = l.state;
    };

  for (; b; ) w();

  y = (y = y.replace(/\/+/g, '/')).length > 1 ? y.replace(/\/$/, '') : y;
  return y;
};

var module35 = require('@babel/runtime/helpers/interopRequireDefault')(require('./35')),
  module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  module626 = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = l(n);
    if (o && o.has(t)) return o.get(t);
    var u = {},
      f = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var s in t)
      if ('default' !== s && Object.prototype.hasOwnProperty.call(t, s)) {
        var c = f ? Object.getOwnPropertyDescriptor(t, s) : null;
        if (c && (c.get || c.set)) Object.defineProperty(u, s, c);
        else u[s] = t[s];
      }

    u.default = t;
    if (o) o.set(t, u);
    return u;
  })(require('./626')),
  module631 = require('@babel/runtime/helpers/interopRequireDefault')(require('./631')),
  module632 = require('@babel/runtime/helpers/interopRequireDefault')(require('./632'));

function l(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (l = function (t) {
    return t ? o : n;
  })(t);
}

var c = function t(n) {
  var o = 'number' == typeof n.index ? n.routes[n.index] : n.routes[n.routes.length - 1];
  return o.state ? t(o.state) : o;
};

var p = function (t) {
    return t.replace(/^:/, '').replace(/\?$/, '');
  },
  v = function (...args) {
    return (n = []).concat
      .apply(
        n,
        module35.default(
          args.map(function (t) {
            return t.split('/');
          })
        )
      )
      .filter(Boolean)
      .join('/');
  },
  y = function (t, n) {
    var o, u;
    if ('string' == typeof t)
      return {
        pattern: n ? v(n, t) : t,
      };
    if (t.exact && undefined === t.path)
      throw new Error("A 'path' needs to be specified when specifying 'exact: true'. If you don't want this screen in the URL, specify it as empty string, e.g. `path: ''`.");
    u = true !== t.exact ? v(n || '', t.path || '') : t.path || '';
    var f = t.screens ? h(t.screens, u) : undefined;
    return {
      pattern: null == (o = u) ? undefined : o.split('/').filter(Boolean).join('/'),
      stringify: t.stringify,
      screens: f,
    };
  },
  h = function (t, n) {
    return module631.default(
      Object.entries(t).map(function (t) {
        var u = module23.default(t, 2),
          f = u[0],
          s = u[1];
        return [f, y(s, n)];
      })
    );
  };
