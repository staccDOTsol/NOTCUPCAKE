function t(t, o) {
  var i = ('undefined' != typeof Symbol && t[Symbol.iterator]) || t['@@iterator'];
  if (i) return (i = i.call(t)).next.bind(i);

  if (Array.isArray(t) || (i = n(t)) || (o && t && 'number' == typeof t.length)) {
    if (i) t = i;
    var l = 0;
    return function () {
      return l >= t.length
        ? {
            done: true,
          }
        : {
            done: false,
            value: t[l++],
          };
    };
  }

  throw new TypeError('Invalid attempt to iterate non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.');
}

function n(t, n) {
  if (t) {
    if ('string' == typeof t) return o(t, n);
    var i = Object.prototype.toString.call(t).slice(8, -1);
    if ('Object' === i && t.constructor) i = t.constructor.name;
    return 'Map' === i || 'Set' === i ? Array.from(t) : 'Arguments' === i || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(i) ? o(t, n) : undefined;
  }
}

function o(t, n) {
  if (null == n || n > t.length) n = t.length;

  for (var o = 0, i = new Array(n); o < n; o++) i[o] = t[o];

  return i;
}

var module1018 = Object.create(
    require('./1018').IteratorPrototype,
    require('./256')(
      {
        next: {
          value: function () {
            var module1018 = this[require('./1018').iterInternalSymbol],
              n = module1018.target,
              o = module1018.kind,
              i = module1018.index,
              module1018 = Array.from(n[require('./1018').implSymbol]);

            if (i >= module1018.length)
              return {
                value: undefined,
                done: true,
              };
            var s = module1018[i];
            module1018.index = i + 1;

            var c,
              module1018 = s.map(require('./1018').tryWrapperForImpl),
              module23 = require('./23')(module1018, 2),
              h = module23[0],
              y = module23[1];

            switch (o) {
              case 'key':
                c = h;
                break;

              case 'value':
                c = y;
                break;

              case 'key+value':
                c = [h, y];
            }

            return {
              value: c,
              done: false,
            };
          },
          writable: true,
          enumerable: true,
          configurable: true,
        },
      },
      Symbol.toStringTag,
      {
        value: 'URLSearchParams Iterator',
        configurable: true,
      }
    )
  ),
  module1018 = {
    _mixedIntoPredicates: [],
    is: function (n) {
      if (n) {
        if (require('./1018').hasOwn(n, require('./1018').implSymbol) && n[require('./1018').implSymbol] instanceof require('./1026').implementation) return true;

        for (var o, i = t(module.exports._mixedIntoPredicates); !(o = i()).done; ) {
          if (o.value(n)) return true;
        }
      }

      return false;
    },
    isImpl: function (n) {
      if (n) {
        if (n instanceof require('./1026').implementation) return true;

        for (var o, module1018 = require('./1018').wrapperForImpl(n), l = t(module.exports._mixedIntoPredicates); !(o = l()).done; ) {
          if (o.value(module1018)) return true;
        }
      }

      return false;
    },
    convert: function (t) {
      var n = (arguments.length > 1 && undefined !== arguments[1] ? arguments[1] : {}).context,
        o = undefined === n ? 'The provided value' : n;
      if (module.exports.is(t)) return require('./1018').implForWrapper(t);
      throw new TypeError(o + " is not of type 'URLSearchParams'.");
    },
    createDefaultIterator: function (t, n) {
      var o = Object.create(module1018);
      Object.defineProperty(o, require('./1018').iterInternalSymbol, {
        value: {
          target: t,
          kind: n,
          index: 0,
        },
        configurable: true,
      });
      return o;
    },
    create: function (t, n, o) {
      if (undefined === t[require('./1018').ctorRegistrySymbol]) throw new Error('Internal error: invalid global object');

      var module1018 = t[require('./1018').ctorRegistrySymbol].URLSearchParams;

      if (undefined === module1018) throw new Error('Internal error: constructor URLSearchParams is not installed on the passed global object');
      var s = Object.create(module1018.prototype);
      s = module1018.setup(s, t, n, o);
      return s;
    },
    createImpl: function (t, n, o) {
      var i = module1018.create(t, n, o);
      return require('./1018').implForWrapper(i);
    },
    _internalSetup: function (t) {},
    setup: function (t, n) {
      var o = arguments.length > 2 && undefined !== arguments[2] ? arguments[2] : [],
        i = arguments.length > 3 && undefined !== arguments[3] ? arguments[3] : {};
      i.wrapper = t;

      module1018._internalSetup(t);

      Object.defineProperty(t, require('./1018').implSymbol, {
        value: new (require('./1026').implementation)(n, o, i),
        configurable: true,
      });
      t[require('./1018').implSymbol][require('./1018').wrapperSymbol] = t;
      if (require('./1026').init) require('./1026').init(t[require('./1018').implSymbol], i);
      return t;
    },
    install: function (n) {
      var o,
        module1018 = (function () {
          function o() {
            require('./7')(this, o);

            var module7 = [],
              s = arguments[0];
            if (undefined !== s) {
              if (require('./1018').isObject(s)) {
                if (undefined !== s[Symbol.iterator]) {
                  if (!require('./1018').isObject(s)) throw new TypeError("Failed to construct 'URLSearchParams': parameter 1 sequence is not an iterable object.");

                  for (var c, u = [], p = t(s); !(c = p()).done; ) {
                    var h = c.value;
                    if (!require('./1018').isObject(h)) throw new TypeError("Failed to construct 'URLSearchParams': parameter 1 sequence's element is not an iterable object.");

                    for (var y, f = [], v = t(h); !(y = v()).done; ) {
                      var b = y.value;
                      b = require('./1027').USVString(b, {
                        context: "Failed to construct 'URLSearchParams': parameter 1 sequence's element's element",
                      });
                      f.push(b);
                    }

                    h = f;
                    u.push(h);
                  }

                  s = u;
                } else {
                  if (!require('./1018').isObject(s)) throw new TypeError("Failed to construct 'URLSearchParams': parameter 1 record is not an object.");

                  for (var S, w = Object.create(null), x = t(Reflect.ownKeys(s)); !(S = x()).done; ) {
                    var U = S.value,
                      P = Object.getOwnPropertyDescriptor(s, U);

                    if (P && P.enumerable) {
                      var I = U;
                      I = require('./1027').USVString(I, {
                        context: "Failed to construct 'URLSearchParams': parameter 1 record's key",
                      });
                      var R = s[U];
                      R = require('./1027').USVString(R, {
                        context: "Failed to construct 'URLSearchParams': parameter 1 record's value",
                      });
                      w[I] = R;
                    }
                  }

                  s = w;
                }
              } else
                s = require('./1027').USVString(s, {
                  context: "Failed to construct 'URLSearchParams': parameter 1",
                });
            } else s = '';
            module7.push(s);
            return module1018.setup(Object.create(this.constructor.prototype), n, module7);
          }

          require('./8')(o, [
            {
              key: 'append',
              value: function (t, n) {
                var o;
                if (!this || !module.exports.is(this)) throw new TypeError('Illegal invocation');
                if (arguments.length < 2) throw new TypeError("Failed to execute 'append' on 'URLSearchParams': 2 arguments required, but only " + arguments.length + ' present.');
                var i = [],
                  l = arguments[0];
                l = require('./1027').USVString(l, {
                  context: "Failed to execute 'append' on 'URLSearchParams': parameter 1",
                });
                i.push(l);
                var s = arguments[1];
                s = require('./1027').USVString(s, {
                  context: "Failed to execute 'append' on 'URLSearchParams': parameter 2",
                });
                i.push(s);
                return (o = this[require('./1018').implSymbol]).append.apply(o, i);
              },
            },
            {
              key: 'delete',
              value: function (t) {
                var n;
                if (!this || !module.exports.is(this)) throw new TypeError('Illegal invocation');
                if (arguments.length < 1) throw new TypeError("Failed to execute 'delete' on 'URLSearchParams': 1 argument required, but only " + arguments.length + ' present.');
                var o = [],
                  module1018 = arguments[0];
                module1018 = require('./1027').USVString(module1018, {
                  context: "Failed to execute 'delete' on 'URLSearchParams': parameter 1",
                });
                o.push(module1018);
                return (n = this[require('./1018').implSymbol]).delete.apply(n, o);
              },
            },
            {
              key: 'get',
              value: function (t) {
                var n;
                if (!this || !module.exports.is(this)) throw new TypeError('Illegal invocation');
                if (arguments.length < 1) throw new TypeError("Failed to execute 'get' on 'URLSearchParams': 1 argument required, but only " + arguments.length + ' present.');
                var o = [],
                  module1018 = arguments[0];
                module1018 = require('./1027').USVString(module1018, {
                  context: "Failed to execute 'get' on 'URLSearchParams': parameter 1",
                });
                o.push(module1018);
                return (n = this[require('./1018').implSymbol]).get.apply(n, o);
              },
            },
            {
              key: 'getAll',
              value: function (t) {
                var n;
                if (!this || !module.exports.is(this)) throw new TypeError('Illegal invocation');
                if (arguments.length < 1) throw new TypeError("Failed to execute 'getAll' on 'URLSearchParams': 1 argument required, but only " + arguments.length + ' present.');
                var o = [],
                  module1018 = arguments[0];
                module1018 = require('./1027').USVString(module1018, {
                  context: "Failed to execute 'getAll' on 'URLSearchParams': parameter 1",
                });
                o.push(module1018);
                return require('./1018').tryWrapperForImpl((n = this[require('./1018').implSymbol]).getAll.apply(n, o));
              },
            },
            {
              key: 'has',
              value: function (t) {
                var n;
                if (!this || !module.exports.is(this)) throw new TypeError('Illegal invocation');
                if (arguments.length < 1) throw new TypeError("Failed to execute 'has' on 'URLSearchParams': 1 argument required, but only " + arguments.length + ' present.');
                var o = [],
                  module1018 = arguments[0];
                module1018 = require('./1027').USVString(module1018, {
                  context: "Failed to execute 'has' on 'URLSearchParams': parameter 1",
                });
                o.push(module1018);
                return (n = this[require('./1018').implSymbol]).has.apply(n, o);
              },
            },
            {
              key: 'set',
              value: function (t, n) {
                var o;
                if (!this || !module.exports.is(this)) throw new TypeError('Illegal invocation');
                if (arguments.length < 2) throw new TypeError("Failed to execute 'set' on 'URLSearchParams': 2 arguments required, but only " + arguments.length + ' present.');
                var i = [],
                  l = arguments[0];
                l = require('./1027').USVString(l, {
                  context: "Failed to execute 'set' on 'URLSearchParams': parameter 1",
                });
                i.push(l);
                var s = arguments[1];
                s = require('./1027').USVString(s, {
                  context: "Failed to execute 'set' on 'URLSearchParams': parameter 2",
                });
                i.push(s);
                return (o = this[require('./1018').implSymbol]).set.apply(o, i);
              },
            },
            {
              key: 'sort',
              value: function () {
                if (!this || !module.exports.is(this)) throw new TypeError('Illegal invocation');
                return this[require('./1018').implSymbol].sort();
              },
            },
            {
              key: 'toString',
              value: function () {
                if (!this || !module.exports.is(this)) throw new TypeError('Illegal invocation');
                return this[require('./1018').implSymbol].toString();
              },
            },
            {
              key: 'keys',
              value: function () {
                if (!this || !module.exports.is(this)) throw new TypeError('Illegal invocation');
                return module.exports.createDefaultIterator(this, 'key');
              },
            },
            {
              key: 'values',
              value: function () {
                if (!this || !module.exports.is(this)) throw new TypeError('Illegal invocation');
                return module.exports.createDefaultIterator(this, 'value');
              },
            },
            {
              key: 'entries',
              value: function () {
                if (!this || !module.exports.is(this)) throw new TypeError('Illegal invocation');
                return module.exports.createDefaultIterator(this, 'key+value');
              },
            },
            {
              key: 'forEach',
              value: function (t) {
                if (!this || !module.exports.is(this)) throw new TypeError('Illegal invocation');
                if (arguments.length < 1) throw new TypeError("Failed to execute 'forEach' on 'iterable': 1 argument required, but only 0 present.");
                if ('function' != typeof t) throw new TypeError("Failed to execute 'forEach' on 'iterable': The callback provided as parameter 1 is not a function.");

                for (var n = arguments[1], module1018 = Array.from(this[require('./1018').implSymbol]), i = 0; i < module1018.length; ) {
                  var module1018 = module1018[i].map(require('./1018').tryWrapperForImpl),
                    module23 = require('./23')(module1018, 2),
                    c = module23[0],
                    u = module23[1];

                  t.call(n, u, c, this);
                  module1018 = Array.from(this[require('./1018').implSymbol]);
                  i++;
                }
              },
            },
          ]);

          return o;
        })();

      Object.defineProperties(
        module1018.prototype,
        ((o = {
          append: {
            enumerable: true,
          },
          delete: {
            enumerable: true,
          },
          get: {
            enumerable: true,
          },
          getAll: {
            enumerable: true,
          },
          has: {
            enumerable: true,
          },
          set: {
            enumerable: true,
          },
          sort: {
            enumerable: true,
          },
          toString: {
            enumerable: true,
          },
          keys: {
            enumerable: true,
          },
          values: {
            enumerable: true,
          },
          entries: {
            enumerable: true,
          },
          forEach: {
            enumerable: true,
          },
        }),
        require('./256')(o, Symbol.toStringTag, {
          value: 'URLSearchParams',
          configurable: true,
        }),
        require('./256')(o, Symbol.iterator, {
          value: module1018.prototype.entries,
          configurable: true,
          writable: true,
        }),
        o)
      );
      if (undefined === n[require('./1018').ctorRegistrySymbol]) n[require('./1018').ctorRegistrySymbol] = Object.create(null);
      n[require('./1018').ctorRegistrySymbol].URLSearchParams = module1018;
      Object.defineProperty(n, 'URLSearchParams', {
        configurable: true,
        writable: true,
        value: module1018,
      });
    },
  };
module.exports = module1018;
