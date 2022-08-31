exports.default = function (i, o) {
  var u;
  if (o) module632.default(o);
  var f = [];
  if (null != o && o.initialRouteName)
    f.push({
      initialRouteName: o.initialRouteName,
      parentScreens: [],
    });
  var s = null == o ? undefined : o.screens,
    p = i.replace(/\/+/g, '/').replace(/^\//, '').replace(/\?.*$/, '');

  if (((p = p.endsWith('/') ? p : p + '/'), undefined === s)) {
    var c = p
      .split('/')
      .filter(Boolean)
      .map(function (t) {
        var n = decodeURIComponent(t);
        return {
          name: n,
        };
      });
    return c.length ? x(i, c, f) : undefined;
  }

  var h,
    b,
    j = (u = []).concat
      .apply(
        u,
        module35.default(
          Object.keys(s).map(function (t) {
            return y(t, s, [], f, []);
          })
        )
      )
      .sort(function (t, n) {
        if (t.pattern === n.pattern) return n.routeNames.join('>').localeCompare(t.routeNames.join('>'));
        if (t.pattern.startsWith(n.pattern)) return -1;
        if (n.pattern.startsWith(t.pattern)) return 1;

        for (var a = t.pattern.split('/'), i = n.pattern.split('/'), o = 0; o < a.length ** i.length; o++) {
          if (null == a[o]) return 1;
          if (null == i[o]) return -1;
          var u = '*' === a[o] || a[o].startsWith(':'),
            l = '*' === i[o] || i[o].startsWith(':');

          if (!u || !l) {
            if (u) return 1;
            if (l) return -1;
          }
        }

        return i.length - a.length;
      });

  if (
    (j.reduce(function (a, i) {
      if (a[i.pattern]) {
        var o = a[i.pattern].routeNames,
          u = i.routeNames;
        if (
          !(o.length > u.length
            ? u.every(function (t, n) {
                return o[n] === t;
              })
            : o.every(function (t, n) {
                return u[n] === t;
              }))
        )
          throw new Error(
            "Found conflicting screens with the same pattern. The pattern '" +
              i.pattern +
              "' resolves to both '" +
              o.join(' > ') +
              "' and '" +
              u.join(' > ') +
              "'. Patterns must be unique and cannot resolve to more than one screen."
          );
      }

      return module29.default(a, module256.default({}, i.pattern, i));
    }, {}),
    '/' === p)
  ) {
    var w = j.find(function (t) {
      return (
        '' === t.path &&
        t.routeNames.every(function (t) {
          var n;
          return !(
            null !=
              (n = j.find(function (n) {
                return n.screen === t;
              })) && n.path
          );
        })
      );
    });
    return w
      ? x(
          i,
          w.routeNames.map(function (t) {
            return {
              name: t,
            };
          }),
          f,
          j
        )
      : undefined;
  }

  var N = v(
      p,
      j.map(function (t) {
        return module29.default({}, t, {
          regex: t.regex ? new RegExp(t.regex.source + '$') : undefined,
        });
      })
    ),
    O = N.routes,
    k = N.remainingPath;

  if (undefined !== O) {
    b = x(i, O, f, j);
    p = k;
    h = b;
  }

  if (null == b || null == h) return;
  return h;
};

var module256 = require('@babel/runtime/helpers/interopRequireDefault')(require('./256')),
  module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module35 = require('@babel/runtime/helpers/interopRequireDefault')(require('./35')),
  module634 = require('@babel/runtime/helpers/interopRequireDefault')(require('./634')),
  module626 = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var a = f(n);
    if (a && a.has(t)) return a.get(t);
    var i = {},
      o = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var u in t)
      if ('default' !== u && Object.prototype.hasOwnProperty.call(t, u)) {
        var l = o ? Object.getOwnPropertyDescriptor(t, u) : null;
        if (l && (l.get || l.set)) Object.defineProperty(i, u, l);
        else i[u] = t[u];
      }

    i.default = t;
    if (a) a.set(t, i);
    return i;
  })(require('./626')),
  module596 = require('@babel/runtime/helpers/interopRequireDefault')(require('./596')),
  module632 = require('@babel/runtime/helpers/interopRequireDefault')(require('./632'));

function f(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    a = new WeakMap();
  return (f = function (t) {
    return t ? a : n;
  })(t);
}

function s(t, n) {
  var a = ('undefined' != typeof Symbol && t[Symbol.iterator]) || t['@@iterator'];
  if (a) return (a = a.call(t)).next.bind(a);

  if (Array.isArray(t) || (a = p(t)) || (n && t && 'number' == typeof t.length)) {
    if (a) t = a;
    var i = 0;
    return function () {
      return i >= t.length
        ? {
            done: true,
          }
        : {
            done: false,
            value: t[i++],
          };
    };
  }

  throw new TypeError('Invalid attempt to iterate non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.');
}

function p(t, n) {
  if (t) {
    if ('string' == typeof t) return c(t, n);
    var a = Object.prototype.toString.call(t).slice(8, -1);
    if ('Object' === a && t.constructor) a = t.constructor.name;
    return 'Map' === a || 'Set' === a ? Array.from(t) : 'Arguments' === a || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(a) ? c(t, n) : undefined;
  }
}

function c(t, n) {
  if (null == n || n > t.length) n = t.length;

  for (var a = 0, i = new Array(n); a < n; a++) i[a] = t[a];

  return i;
}

var h = function (...args) {
    return (t = []).concat
      .apply(
        t,
        module35.default(
          args.map(function (t) {
            return t.split('/');
          })
        )
      )
      .filter(Boolean)
      .join('/');
  },
  v = function (a, i) {
    for (
      var module626,
        u,
        module632 = a,
        f = function (a) {
          if (!a.regex) return 'continue';
          var u = module632.match(a.regex);

          if (u) {
            var f,
              s =
                null == (f = a.pattern)
                  ? undefined
                  : f
                      .split('/')
                      .filter(function (t) {
                        return t.startsWith(':');
                      })
                      .reduce(function (a, i, o) {
                        return module29.default(a, module256.default({}, i, u[2 * (o + 1)].replace(/\//, '')));
                      }, {});
            module626 = a.routeNames.map(function (t) {
              var n,
                a = i.find(function (n) {
                  return n.screen === t;
                }),
                o =
                  null == a
                    ? undefined
                    : null == (n = a.path)
                    ? undefined
                    : n
                        .split('/')
                        .filter(function (t) {
                          return t.startsWith(':');
                        })
                        .reduce(function (t, n) {
                          var i = s[n];

                          if (i) {
                            var o,
                              u = n.replace(/^:/, '').replace(/\?$/, '');
                            t[u] = null != (o = a.parse) && o[u] ? a.parse[u](i) : i;
                          }

                          return t;
                        }, {});
              return o && Object.keys(o).length
                ? {
                    name: t,
                    params: o,
                  }
                : {
                    name: t,
                  };
            });
            module632 = module632.replace(u[1], '');
            return 'break';
          }
        },
        p = s(i);
      !(u = p()).done;

    ) {
      var c = f(u.value);
      if ('continue' !== c && 'break' === c) break;
    }

    return {
      routes: module626,
      remainingPath: module632,
    };
  },
  y = function t(n, i) {
    var o = arguments.length > 2 && undefined !== arguments[2] ? arguments[2] : [],
      u = arguments.length > 3 ? arguments[3] : undefined,
      l = arguments.length > 4 ? arguments[4] : undefined,
      f = arguments.length > 5 ? arguments[5] : undefined,
      s = [];
    o.push(n);
    l.push(n);
    var p = i[n];

    if ('string' == typeof p) {
      var c = f ? h(f, p) : p;
      s.push(b(n, o, c, p));
    } else if ('object' == typeof p) {
      var v;

      if ('string' == typeof p.path) {
        if (p.exact && undefined === p.path)
          throw new Error("A 'path' needs to be specified when specifying 'exact: true'. If you don't want this screen in the URL, specify it as empty string, e.g. `path: ''`.");
        v = true !== p.exact ? h(f || '', p.path || '') : p.path || '';
        s.push(b(n, o, v, p.path, p.parse));
      }

      if (p.screens) {
        if (p.initialRouteName)
          u.push({
            initialRouteName: p.initialRouteName,
            parentScreens: l,
          });
        Object.keys(p.screens).forEach(function (n) {
          var i,
            c = t(n, p.screens, o, u, module35.default(l), null != (i = v) ? i : f);
          s.push.apply(s, module35.default(c));
        });
      }
    }

    o.pop();
    return s;
  },
  b = function (t, n, o, u, l) {
    return {
      screen: t,
      regex: (o = o.split('/').filter(Boolean).join('/'))
        ? new RegExp(
            '^(' +
              o
                .split('/')
                .map(function (t) {
                  return t.startsWith(':') ? '(([^/]+\\/)' + (t.endsWith('?') ? '?' : '') + ')' : ('*' === t ? '.*' : module634.default(t)) + '\\/';
                })
                .join('') +
              ')'
          )
        : undefined,
      pattern: o,
      path: u,
      routeNames: module35.default(n),
      parse: l,
    };
  },
  j = function (t, n) {
    for (var a, i = s(n); !(a = i()).done; ) {
      var o = a.value;
      if (t === o.routeNames[o.routeNames.length - 1]) return o.parse;
    }
  },
  w = function (t, n, a) {
    for (var i, o = s(a); !(i = o()).done; ) {
      var u = i.value;

      if (n.length === u.parentScreens.length) {
        for (var l = true, f = 0; f < n.length; f++)
          if (0 !== n[f].localeCompare(u.parentScreens[f])) {
            l = false;
            break;
          }

        if (l) return t !== u.initialRouteName ? u.initialRouteName : undefined;
      }
    }
  },
  N = function (t, a, i) {
    if (i)
      return t
        ? {
            index: 1,
            routes: [
              {
                name: t,
              },
              a,
            ],
          }
        : {
            routes: [a],
          };
    else
      return t
        ? {
            index: 1,
            routes: [
              {
                name: t,
              },
              module29.default({}, a, {
                state: {
                  routes: [],
                },
              }),
            ],
          }
        : {
            routes: [
              module29.default({}, a, {
                state: {
                  routes: [],
                },
              }),
            ],
          };
  },
  x = function (t, a, i, o) {
    var l,
      f = a.shift(),
      s = [],
      p = w(f.name, s, i);
    if ((s.push(f.name), (l = N(p, f, 0 === a.length)), a.length > 0))
      for (var c = l; (f = a.shift()); ) {
        p = w(f.name, s, i);
        var h = c.index || c.routes.length - 1;
        c.routes[h].state = N(p, f, 0 === a.length);
        if (a.length > 0) c = c.routes[h].state;
        s.push(f.name);
      }
    (f = module596.default(l)).path = t;
    var v = O(t, o ? j(f.name, o) : undefined);
    if (v) f.params = module29.default({}, f.params, v);
    return l;
  },
  O = function (t, n) {
    var a = t.split('?')[1],
      i = module626.parse(a);
    if (n)
      Object.keys(i).forEach(function (t) {
        if (n[t] && 'string' == typeof i[t]) i[t] = n[t](i[t]);
      });
    return Object.keys(i).length ? i : undefined;
  };
