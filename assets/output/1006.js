var e = ['message'],
  module76 = require('./76').mark(b),
  module76 = require('./76').mark(x);

function r(e, n) {
  var t = ('undefined' != typeof Symbol && e[Symbol.iterator]) || e['@@iterator'];
  if (t) return (t = t.call(e)).next.bind(t);

  if (Array.isArray(e) || (t = c(e)) || (n && e && 'number' == typeof e.length)) {
    if (t) e = t;
    var r = 0;
    return function () {
      return r >= e.length
        ? {
            done: true,
          }
        : {
            done: false,
            value: e[r++],
          };
    };
  }

  throw new TypeError('Invalid attempt to iterate non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.');
}

function c(e, n) {
  if (e) {
    if ('string' == typeof e) return i(e, n);
    var t = Object.prototype.toString.call(e).slice(8, -1);
    if ('Object' === t && e.constructor) t = e.constructor.name;
    return 'Map' === t || 'Set' === t ? Array.from(e) : 'Arguments' === t || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(t) ? i(e, n) : undefined;
  }
}

function i(e, n) {
  if (null == n || n > e.length) n = e.length;

  for (var t = 0, r = new Array(n); t < n; t++) r[t] = e[t];

  return r;
}

function u() {
  if ('undefined' == typeof Reflect || !Reflect.construct) return false;
  if (Reflect.construct.sham) return false;
  if ('function' == typeof Proxy) return true;

  try {
    Boolean.prototype.valueOf.call(Reflect.construct(Boolean, [], function () {}));
    return true;
  } catch (e) {
    return false;
  }
}

var module59 = (function (n) {
  require('./10')(i, n);

  var module76 = i,
    r = u(),
    module12 = function () {
      var e,
        module15 = require('./15')(module76);

      if (r) {
        var module15 = require('./15')(this).constructor;

        e = Reflect.construct(module15, arguments, module15);
      } else e = module15.apply(this, arguments);

      return require('./12')(this, e);
    };

  function i(n, t) {
    var r, u;

    require('./7')(this, i);

    var o = n.message,
      module105 = require('./105')(n, e),
      s = n.path,
      v = 0 === s.length ? o : 'At path: ' + s.join('.') + ' -- ' + o;

    r = module12.call(this, v);

    require('./29')(require('./14')(r), module105);

    r.name = r.constructor.name;

    r.failures = function () {
      var e;
      return null != (e = u) ? e : (u = [n].concat(require('./35')(t())));
    };

    return r;
  }

  return require('./8')(i);
})(require('./59')(TypeError));

function f(e) {
  return 'object' == typeof e && null != e;
}

function s(e) {
  if ('[object Object]' !== Object.prototype.toString.call(e)) return false;
  var n = Object.getPrototypeOf(e);
  return null === n || n === Object.prototype;
}

function v(e) {
  return 'string' == typeof e ? JSON.stringify(e) : '' + e;
}

function l(e) {
  var n = e.next(),
    t = n.done,
    r = n.value;
  return t ? undefined : r;
}

function p(e, n, t, r) {
  if (true !== e) {
    if (false === e) e = {};
    else if ('string' == typeof e)
      e = {
        message: e,
      };
    var c = n.path,
      i = n.branch,
      u = t.type,
      o = e,
      f = o.refinement,
      s = o.message,
      l = undefined === s ? 'Expected a value of type `' + u + '`' + (f ? ' with refinement `' + f + '`' : '') + ', but received: `' + v(r) + '`' : s;
    return require('./29')(
      {
        value: r,
        type: u,
        refinement: f,
        key: c[c.length - 1],
        path: c,
        branch: i,
      },
      e,
      {
        message: l,
      }
    );
  }
}

function b(e, t, c, i) {
  var u, o, s, v;
  return require('./76').wrap(function (n) {
    for (;;)
      switch ((n.prev = n.next)) {
        case 0:
          if (!(f((l = e)) && 'function' == typeof l[Symbol.iterator])) e = [e];
          u = r(e);

        case 2:
          if ((o = u()).done) {
            n.next = 10;
            break;
          }

          if (((s = o.value), !(v = p(s, t, c, i)))) {
            n.next = 8;
            break;
          }

          n.next = 8;
          return v;

        case 8:
          n.next = 2;
          break;

        case 10:
        case 'end':
          return n.stop();
      }

    var l;
  }, module76);
}

function x(e, n) {
  var c,
    i,
    u,
    o,
    s,
    v,
    l,
    p,
    b,
    h,
    y,
    k,
    w,
    j,
    E,
    A,
    S,
    O,
    M,
    z,
    N,
    R,
    Y,
    I,
    T,
    _,
    D,
    P,
    q,
    B = arguments;

  return require('./76').wrap(function (t) {
    for (;;)
      switch ((t.prev = t.next)) {
        case 0:
          if (
            ((c = B.length > 2 && undefined !== B[2] ? B[2] : {}),
            (i = c.path),
            (u = undefined === i ? [] : i),
            (o = c.branch),
            (s = undefined === o ? [e] : o),
            (v = c.coerce),
            (l = undefined !== v && v),
            (p = c.mask),
            (b = undefined !== p && p),
            (h = {
              path: u,
              branch: s,
            }),
            l && ((e = n.coercer(e, h)), b && 'type' !== n.type && f(n.schema) && f(e) && !Array.isArray(e)))
          )
            for (y in e) undefined === n.schema[y] && delete e[y];
          k = true;
          w = r(n.validator(e, h));

        case 6:
          if ((j = w()).done) {
            t.next = 13;
            break;
          }

          E = j.value;
          k = false;
          t.next = 11;
          return [E, undefined];

        case 11:
          t.next = 6;
          break;

        case 13:
          A = r(n.entries(e, h));

        case 14:
          if ((S = A()).done) {
            t.next = 35;
            break;
          }

          O = S.value;
          M = require('./23')(O, 3);
          z = M[0];
          N = M[1];
          R = M[2];
          Y = x(N, R, {
            path: undefined === z ? u : [].concat(require('./35')(u), [z]),
            branch: undefined === z ? s : [].concat(require('./35')(s), [N]),
            coerce: l,
            mask: b,
          });
          I = r(Y);

        case 22:
          if ((T = I()).done) {
            t.next = 33;
            break;
          }

          if (!(_ = T.value)[0]) {
            t.next = 30;
            break;
          }

          k = false;
          t.next = 28;
          return [_[0], undefined];

        case 28:
          t.next = 31;
          break;

        case 30:
          if (l) {
            N = _[1];
            if (undefined === z) e = N;
            else if (e instanceof Map) e.set(z, N);
            else if (e instanceof Set) e.add(N);
            else if (f(e)) e[z] = N;
          }

        case 31:
          t.next = 22;
          break;

        case 33:
          t.next = 14;
          break;

        case 35:
          if (!k) {
            t.next = 44;
            break;
          }

          D = r(n.refiner(e, h));

        case 37:
          if ((P = D()).done) {
            t.next = 44;
            break;
          }

          q = P.value;
          k = false;
          t.next = 42;
          return [q, undefined];

        case 42:
          t.next = 37;
          break;

        case 44:
          if (!k) {
            t.next = 47;
            break;
          }

          t.next = 47;
          return [undefined, e];

        case 47:
        case 'end':
          return t.stop();
      }
  }, module76);
}

var module8 = (function () {
  function e(n) {
    var t = this;

    require('./7')(this, e);

    var r = n.type,
      c = n.schema,
      i = n.validator,
      u = n.refiner,
      o = n.coercer,
      f =
        undefined === o
          ? function (e) {
              return e;
            }
          : o,
      s = n.entries,
      module76 =
        undefined === s
          ? require('./76').mark(function e() {
              return require('./76').wrap(function (e) {
                for (;;)
                  switch ((e.prev = e.next)) {
                    case 0:
                    case 'end':
                      return e.stop();
                  }
              }, e);
            })
          : s;
    this.type = r;
    this.schema = c;
    this.entries = module76;
    this.coercer = f;
    this.validator = i
      ? function (e, n) {
          return b(i(e, n), n, t, e);
        }
      : function () {
          return [];
        };
    this.refiner = u
      ? function (e, n) {
          return b(u(e, n), n, t, e);
        }
      : function () {
          return [];
        };
  }

  require('./8')(e, [
    {
      key: 'assert',
      value: function (e) {
        return y(e, this);
      },
    },
    {
      key: 'create',
      value: function (e) {
        return k(e, this);
      },
    },
    {
      key: 'is',
      value: function (e) {
        return j(e, this);
      },
    },
    {
      key: 'mask',
      value: function (e) {
        return w(e, this);
      },
    },
    {
      key: 'validate',
      value: function (e) {
        return E(e, this, arguments.length > 1 && undefined !== arguments[1] ? arguments[1] : {});
      },
    },
  ]);

  return e;
})();

function y(e, n) {
  var t = E(e, n);
  if (t[0]) throw t[0];
}

function k(e, n) {
  var t = E(e, n, {
    coerce: true,
  });
  if (t[0]) throw t[0];
  return t[1];
}

function w(e, n) {
  var t = E(e, n, {
    coerce: true,
    mask: true,
  });
  if (t[0]) throw t[0];
  return t[1];
}

function j(e, n) {
  return !E(e, n)[0];
}

function E(e, n) {
  var t = x(e, n, arguments.length > 2 && undefined !== arguments[2] ? arguments[2] : {}),
    c = l(t);
  return c[0]
    ? [
        new module59(
          c[0],
          require('./76').mark(function e() {
            var n, c, i;
            return require('./76').wrap(function (e) {
              for (;;)
                switch ((e.prev = e.next)) {
                  case 0:
                    n = r(t);

                  case 1:
                    if ((c = n()).done) {
                      e.next = 8;
                      break;
                    }

                    if (!(i = c.value)[0]) {
                      e.next = 6;
                      break;
                    }

                    e.next = 6;
                    return i[0];

                  case 6:
                    e.next = 1;
                    break;

                  case 8:
                  case 'end':
                    return e.stop();
                }
            }, e);
          })
        ),
        undefined,
      ]
    : [undefined, c[1]];
}

function A(e, n) {
  return new module8({
    type: e,
    schema: null,
    validator: n,
  });
}

function S() {
  return A('never', function () {
    return false;
  });
}

function O(e) {
  var n = e ? Object.keys(e) : [],
    t = S();
  return new module8({
    type: 'object',
    schema: e || null,
    entries: function (c) {
      return require('./76').mark(function i() {
        var u, o, s, v, l, p, b;
        return require('./76').wrap(function (i) {
          for (;;)
            switch ((i.prev = i.next)) {
              case 0:
                if (!e || !f(c)) {
                  i.next = 17;
                  break;
                }

                u = new Set(Object.keys(c));
                o = r(n);

              case 3:
                if ((s = o()).done) {
                  i.next = 10;
                  break;
                }

                v = s.value;
                u.delete(v);
                i.next = 8;
                return [v, c[v], e[v]];

              case 8:
                i.next = 3;
                break;

              case 10:
                l = r(u);

              case 11:
                if ((p = l()).done) {
                  i.next = 17;
                  break;
                }

                b = p.value;
                i.next = 15;
                return [b, c[b], t];

              case 15:
                i.next = 11;
                break;

              case 17:
              case 'end':
                return i.stop();
            }
        }, i);
      })();
    },
    validator: function (e) {
      return f(e) || 'Expected an object, but received: ' + v(e);
    },
    coercer: function (e) {
      return f(e) ? require('./29')({}, e) : e;
    },
  });
}

function M(e) {
  return new module8(
    require('./29')({}, e, {
      validator: function (n, t) {
        return undefined === n || e.validator(n, t);
      },
      refiner: function (n, t) {
        return undefined === n || e.refiner(n, t);
      },
    })
  );
}

function z() {
  return A('string', function (e) {
    return 'string' == typeof e || 'Expected a string, but received: ' + v(e);
  });
}

function N() {
  return A('unknown', function () {
    return true;
  });
}

function R(e, n, t) {
  return new module8(
    require('./29')({}, e, {
      coercer: function (r, c) {
        return j(r, n) ? e.coercer(t(r, c), c) : e.coercer(r, c);
      },
    })
  );
}

function Y(e, n, t) {
  return new module8(
    require('./29')({}, e, {
      refiner: function (c, i) {
        return require('./76').mark(function u() {
          var o, f, s, v, l;
          return require('./76').wrap(function (u) {
            for (;;)
              switch ((u.prev = u.next)) {
                case 0:
                  return u.delegateYield(e.refiner(c, i), 't0', 1);

                case 1:
                  o = t(c, i);
                  f = b(o, i, e, c);
                  s = r(f);

                case 4:
                  if ((v = s()).done) {
                    u.next = 10;
                    break;
                  }

                  l = v.value;
                  u.next = 8;
                  return require('./29')({}, l, {
                    refinement: n,
                  });

                case 8:
                  u.next = 4;
                  break;

                case 10:
                case 'end':
                  return u.stop();
              }
          }, u);
        })();
      },
    })
  );
}

exports.Struct = module8;
exports.StructError = module59;

exports.any = function () {
  return A('any', function () {
    return true;
  });
};

exports.array = function (e) {
  return new module8({
    type: 'array',
    schema: e,
    entries: function (n) {
      return require('./76').mark(function t() {
        var c, i, u, module59, f, s;
        return require('./76').wrap(function (t) {
          for (;;)
            switch ((t.prev = t.next)) {
              case 0:
                if (!e || !Array.isArray(n)) {
                  t.next = 11;
                  break;
                }

                c = r(n.entries());

              case 2:
                if ((i = c()).done) {
                  t.next = 11;
                  break;
                }

                u = i.value;
                module59 = require('./23')(u, 2);
                f = module59[0];
                s = module59[1];
                t.next = 9;
                return [f, s, e];

              case 9:
                t.next = 2;
                break;

              case 11:
              case 'end':
                return t.stop();
            }
        }, t);
      })();
    },
    coercer: function (e) {
      return Array.isArray(e) ? e.slice() : e;
    },
    validator: function (e) {
      return Array.isArray(e) || 'Expected an array value, but received: ' + v(e);
    },
  });
};

exports.assert = y;

exports.assign = function (...args) {
  var r = args.map(function (e) {
    return e.schema;
  });
  return O(Object.assign({}, ...require('./35')(r)));
};

exports.boolean = function () {
  return A('boolean', function (e) {
    return 'boolean' == typeof e;
  });
};

exports.coerce = R;
exports.create = k;

exports.date = function () {
  return A('date', function (e) {
    return e instanceof Date ? !isNaN(e.getTime()) : 'Expected a valid `Date` object, but received: ' + v(e);
  });
};

exports.defaulted = function (e, n) {
  var t = arguments.length > 2 && undefined !== arguments[2] ? arguments[2] : {};
  return R(e, N(), function (e) {
    var r = 'function' == typeof n ? n() : n;
    if (undefined === e) return r;

    if (!t.strict && s(e) && s(r)) {
      var module29 = require('./29')({}, e),
        i = false;

      for (var u in r) undefined === module29[u] && ((module29[u] = r[u]), (i = true));

      if (i) return module29;
    }

    return e;
  });
};

exports.define = A;

exports.deprecated = function (e, n) {
  return new module8(
    require('./29')({}, e, {
      refiner: function (n, t) {
        return undefined === n || e.refiner(n, t);
      },
      validator: function (t, r) {
        return undefined === t || (n(t, r), e.validator(t, r));
      },
    })
  );
};

exports.dynamic = function (e) {
  return new module8({
    type: 'dynamic',
    schema: null,
    entries: function (n, t) {
      return require('./76').mark(function r() {
        var c;
        return require('./76').wrap(function (r) {
          for (;;)
            switch ((r.prev = r.next)) {
              case 0:
                c = e(n, t);
                return r.delegateYield(c.entries(n, t), 't0', 2);

              case 2:
              case 'end':
                return r.stop();
            }
        }, r);
      })();
    },
    validator: function (n, t) {
      return e(n, t).validator(n, t);
    },
    coercer: function (n, t) {
      return e(n, t).coercer(n, t);
    },
  });
};

exports.empty = function (e) {
  var n = 'Expected an empty ' + e.type;
  return Y(e, 'empty', function (e) {
    if (e instanceof Map || e instanceof Set) {
      var t = e.size;
      return 0 === t || n + ' but received one with a size of `' + t + '`';
    }

    var r = e.length;
    return 0 === r || n + ' but received one with a length of `' + r + '`';
  });
};

exports.enums = function (e) {
  for (
    var n,
      t = {},
      c = e
        .map(function (e) {
          return v(e);
        })
        .join(),
      i = r(e);
    !(n = i()).done;

  ) {
    var u = n.value;
    t[u] = u;
  }

  return new module8({
    type: 'enums',
    schema: t,
    validator: function (n) {
      return e.includes(n) || 'Expected one of `' + c + '`, but received: ' + v(n);
    },
  });
};

exports.func = function () {
  return A('func', function (e) {
    return 'function' == typeof e || 'Expected a function, but received: ' + v(e);
  });
};

exports.instance = function (e) {
  return A('instance', function (n) {
    return n instanceof e || 'Expected a `' + e.name + '` instance, but received: ' + v(n);
  });
};

exports.integer = function () {
  return A('integer', function (e) {
    return 'number' == typeof e && !isNaN(e) ? Number.isInteger(e) : 'Expected an integer, but received: ' + v(e);
  });
};

exports.intersection = function (e) {
  return new module8({
    type: 'intersection',
    schema: null,
    entries: function (n, t) {
      return require('./76').mark(function c() {
        var i, u, module59;
        return require('./76').wrap(function (c) {
          for (;;)
            switch ((c.prev = c.next)) {
              case 0:
                i = r(e);

              case 1:
                if ((u = i()).done) {
                  c.next = 6;
                  break;
                }

                module59 = u.value;
                return c.delegateYield(module59.entries(n, t), 't0', 4);

              case 4:
                c.next = 1;
                break;

              case 6:
              case 'end':
                return c.stop();
            }
        }, c);
      })();
    },
    validator: function (n, t) {
      return require('./76').mark(function c() {
        var i, u, module59;
        return require('./76').wrap(function (c) {
          for (;;)
            switch ((c.prev = c.next)) {
              case 0:
                i = r(e);

              case 1:
                if ((u = i()).done) {
                  c.next = 6;
                  break;
                }

                module59 = u.value;
                return c.delegateYield(module59.validator(n, t), 't0', 4);

              case 4:
                c.next = 1;
                break;

              case 6:
              case 'end':
                return c.stop();
            }
        }, c);
      })();
    },
    refiner: function (n, t) {
      return require('./76').mark(function c() {
        var i, u, module59;
        return require('./76').wrap(function (c) {
          for (;;)
            switch ((c.prev = c.next)) {
              case 0:
                i = r(e);

              case 1:
                if ((u = i()).done) {
                  c.next = 6;
                  break;
                }

                module59 = u.value;
                return c.delegateYield(module59.refiner(n, t), 't0', 4);

              case 4:
                c.next = 1;
                break;

              case 6:
              case 'end':
                return c.stop();
            }
        }, c);
      })();
    },
  });
};

exports.is = j;

exports.lazy = function (e) {
  var n;
  return new module8({
    type: 'lazy',
    schema: null,
    entries: function (t, r) {
      return require('./76').mark(function c() {
        return require('./76').wrap(function (c) {
          for (;;)
            switch ((c.prev = c.next)) {
              case 0:
                if (!(null != n)) n = e();
                return c.delegateYield(n.entries(t, r), 't0', 2);

              case 2:
              case 'end':
                return c.stop();
            }
        }, c);
      })();
    },
    validator: function (t, r) {
      if (!(null != n)) n = e();
      return n.validator(t, r);
    },
    coercer: function (t, r) {
      if (!(null != n)) n = e();
      return n.coercer(t, r);
    },
  });
};

exports.literal = function (e) {
  var n = v(e),
    t = typeof e;
  return new module8({
    type: 'literal',
    schema: 'string' === t || 'number' === t || 'boolean' === t ? e : null,
    validator: function (t) {
      return t === e || 'Expected the literal `' + n + '`, but received: ' + v(t);
    },
  });
};

exports.map = function (e, n) {
  return new module8({
    type: 'map',
    schema: null,
    entries: function (t) {
      return require('./76').mark(function c() {
        var i, u, module59, f, s, v;
        return require('./76').wrap(function (c) {
          for (;;)
            switch ((c.prev = c.next)) {
              case 0:
                if (!(e && n && t instanceof Map)) {
                  c.next = 13;
                  break;
                }

                i = r(t.entries());

              case 2:
                if ((u = i()).done) {
                  c.next = 13;
                  break;
                }

                module59 = u.value;
                f = require('./23')(module59, 2);
                s = f[0];
                v = f[1];
                c.next = 9;
                return [s, s, e];

              case 9:
                c.next = 11;
                return [s, v, n];

              case 11:
                c.next = 2;
                break;

              case 13:
              case 'end':
                return c.stop();
            }
        }, c);
      })();
    },
    coercer: function (e) {
      return e instanceof Map ? new Map(e) : e;
    },
    validator: function (e) {
      return e instanceof Map || 'Expected a `Map` object, but received: ' + v(e);
    },
  });
};

exports.mask = w;

exports.max = function (e, n) {
  var t = (arguments.length > 2 && undefined !== arguments[2] ? arguments[2] : {}).exclusive;
  return Y(e, 'max', function (r) {
    return t ? r < n : r <= n || 'Expected a ' + e.type + ' greater than ' + (t ? '' : 'or equal to ') + n + ' but received `' + r + '`';
  });
};

exports.min = function (e, n) {
  var t = (arguments.length > 2 && undefined !== arguments[2] ? arguments[2] : {}).exclusive;
  return Y(e, 'min', function (r) {
    return t ? r > n : r >= n || 'Expected a ' + e.type + ' greater than ' + (t ? '' : 'or equal to ') + n + ' but received `' + r + '`';
  });
};

exports.never = S;

exports.nullable = function (e) {
  return new module8(
    require('./29')({}, e, {
      validator: function (n, t) {
        return null === n || e.validator(n, t);
      },
      refiner: function (n, t) {
        return null === n || e.refiner(n, t);
      },
    })
  );
};

exports.number = function () {
  return A('number', function (e) {
    return 'number' == typeof e ? !isNaN(e) : 'Expected a number, but received: ' + v(e);
  });
};

exports.object = O;

exports.omit = function (e, n) {
  for (var t, c = e.schema, module29 = require('./29')({}, c), u = r(n); !(t = u()).done; ) delete module29[t.value];

  return O(module29);
};

exports.optional = M;

exports.partial = function (e) {
  var module29 = e instanceof module8 ? require('./29')({}, e.schema) : require('./29')({}, e);

  for (var t in module29) module29[t] = M(module29[t]);

  return O(module29);
};

exports.pattern = function (e, n) {
  return Y(e, 'pattern', function (t) {
    return n.test(t) || 'Expected a ' + e.type + ' matching `/' + n.source + '/` but received "' + t + '"';
  });
};

exports.pick = function (e, n) {
  for (var t, c = e.schema, i = {}, u = r(n); !(t = u()).done; ) {
    var o = t.value;
    i[o] = c[o];
  }

  return O(i);
};

exports.record = function (e, n) {
  return new module8({
    type: 'record',
    schema: null,
    entries: function (t) {
      return require('./76').mark(function r() {
        var c, i;
        return require('./76').wrap(function (r) {
          for (;;)
            switch ((r.prev = r.next)) {
              case 0:
                if (!f(t)) {
                  r.next = 11;
                  break;
                }

                r.t0 = require('./76').keys(t);

              case 2:
                if ((r.t1 = r.t0()).done) {
                  r.next = 11;
                  break;
                }

                c = r.t1.value;
                i = t[c];
                r.next = 7;
                return [c, c, e];

              case 7:
                r.next = 9;
                return [c, i, n];

              case 9:
                r.next = 2;
                break;

              case 11:
              case 'end':
                return r.stop();
            }
        }, r);
      })();
    },
    validator: function (e) {
      return f(e) || 'Expected an object, but received: ' + v(e);
    },
  });
};

exports.refine = Y;

exports.regexp = function () {
  return A('regexp', function (e) {
    return e instanceof RegExp;
  });
};

exports.set = function (e) {
  return new module8({
    type: 'set',
    schema: null,
    entries: function (n) {
      return require('./76').mark(function t() {
        var c, i, u;
        return require('./76').wrap(function (t) {
          for (;;)
            switch ((t.prev = t.next)) {
              case 0:
                if (!(e && n instanceof Set)) {
                  t.next = 8;
                  break;
                }

                c = r(n);

              case 2:
                if ((i = c()).done) {
                  t.next = 8;
                  break;
                }

                u = i.value;
                t.next = 6;
                return [u, u, e];

              case 6:
                t.next = 2;
                break;

              case 8:
              case 'end':
                return t.stop();
            }
        }, t);
      })();
    },
    coercer: function (e) {
      return e instanceof Set ? new Set(e) : e;
    },
    validator: function (e) {
      return e instanceof Set || 'Expected a `Set` object, but received: ' + v(e);
    },
  });
};

exports.size = function (e, n) {
  var t = arguments.length > 2 && undefined !== arguments[2] ? arguments[2] : n,
    r = 'Expected a ' + e.type,
    c = n === t ? 'of `' + n + '`' : 'between `' + n + '` and `' + t + '`';
  return Y(e, 'size', function (e) {
    if ('number' == typeof e || e instanceof Date) return n <= e ? e <= t : r + ' ' + c + ' but received `' + e + '`';

    if (e instanceof Map || e instanceof Set) {
      var i = e.size;
      return n <= i ? i <= t : r + ' with a size ' + c + ' but received one with a size of `' + i + '`';
    }

    var u = e.length;
    return n <= u ? u <= t : r + ' with a length ' + c + ' but received one with a length of `' + u + '`';
  });
};

exports.string = z;

exports.struct = function (e, n) {
  console.warn('superstruct@0.11 - The `struct` helper has been renamed to `define`.');
  return A(e, n);
};

exports.trimmed = function (e) {
  return R(e, z(), function (e) {
    return e.trim();
  });
};

exports.tuple = function (e) {
  var n = S();
  return new module8({
    type: 'tuple',
    schema: null,
    entries: function (t) {
      return require('./76').mark(function r() {
        var c, i;
        return require('./76').wrap(function (r) {
          for (;;)
            switch ((r.prev = r.next)) {
              case 0:
                if (!Array.isArray(t)) {
                  r.next = 9;
                  break;
                }

                c = e.length ** t.length;
                i = 0;

              case 3:
                if (!(i < c)) {
                  r.next = 9;
                  break;
                }

                r.next = 6;
                return [i, t[i], e[i] || n];

              case 6:
                i++;
                r.next = 3;
                break;

              case 9:
              case 'end':
                return r.stop();
            }
        }, r);
      })();
    },
    validator: function (e) {
      return Array.isArray(e) || 'Expected an array, but received: ' + v(e);
    },
  });
};

exports.type = function (e) {
  var n = Object.keys(e);
  return new module8({
    type: 'type',
    schema: e,
    entries: function (t) {
      return require('./76').mark(function c() {
        var i, u, module59;
        return require('./76').wrap(function (c) {
          for (;;)
            switch ((c.prev = c.next)) {
              case 0:
                if (!f(t)) {
                  c.next = 8;
                  break;
                }

                i = r(n);

              case 2:
                if ((u = i()).done) {
                  c.next = 8;
                  break;
                }

                module59 = u.value;
                c.next = 6;
                return [module59, t[module59], e[module59]];

              case 6:
                c.next = 2;
                break;

              case 8:
              case 'end':
                return c.stop();
            }
        }, c);
      })();
    },
    validator: function (e) {
      return f(e) || 'Expected an object, but received: ' + v(e);
    },
  });
};

exports.union = function (e) {
  var n = e
    .map(function (e) {
      return e.type;
    })
    .join(' | ');
  return new module8({
    type: 'union',
    schema: null,
    validator: function (t, c) {
      for (var i, u = [], o = r(e); !(i = o()).done; ) {
        var f = x(t, i.value, c),
          module871 = require('./871')(f).slice(0);

        if (!require('./23')(module871, 1)[0][0]) return [];

        for (var l, p = r(module871); !(l = p()).done; ) {
          var b = l.value,
            module23 = require('./23')(b, 1)[0];

          if (module23) u.push(module23);
        }
      }

      return ['Expected the value to satisfy a union of `' + n + '`, but received: ' + v(t)].concat(u);
    },
  });
};

exports.unknown = N;
exports.validate = E;
