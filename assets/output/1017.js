function t(t, i) {
  var n = ('undefined' != typeof Symbol && t[Symbol.iterator]) || t['@@iterator'];
  if (n) return (n = n.call(t)).next.bind(n);

  if (Array.isArray(t) || (n = o(t)) || (i && t && 'number' == typeof t.length)) {
    if (n) t = n;
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

function o(t, o) {
  if (t) {
    if ('string' == typeof t) return i(t, o);
    var n = Object.prototype.toString.call(t).slice(8, -1);
    if ('Object' === n && t.constructor) n = t.constructor.name;
    return 'Map' === n || 'Set' === n ? Array.from(t) : 'Arguments' === n || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(n) ? i(t, o) : undefined;
  }
}

function i(t, o) {
  if (null == o || o > t.length) o = t.length;

  for (var i = 0, n = new Array(o); i < o; i++) n[i] = t[i];

  return n;
}

var module1018 = {
  _mixedIntoPredicates: [],
  is: function (o) {
    if (o) {
      if (require('./1018').hasOwn(o, require('./1018').implSymbol) && o[require('./1018').implSymbol] instanceof require('./1019').implementation) return true;

      for (var i, module1019 = t(module.exports._mixedIntoPredicates); !(i = module1019()).done; ) {
        if (i.value(o)) return true;
      }
    }

    return false;
  },
  isImpl: function (o) {
    if (o) {
      if (o instanceof require('./1019').implementation) return true;

      for (var i, module1018 = require('./1018').wrapperForImpl(o), l = t(module.exports._mixedIntoPredicates); !(i = l()).done; ) {
        if (i.value(module1018)) return true;
      }
    }

    return false;
  },
  convert: function (t) {
    var o = (arguments.length > 1 && undefined !== arguments[1] ? arguments[1] : {}).context,
      i = undefined === o ? 'The provided value' : o;
    if (module.exports.is(t)) return require('./1018').implForWrapper(t);
    throw new TypeError(i + " is not of type 'URL'.");
  },
  create: function (t, o, i) {
    if (undefined === t[require('./1018').ctorRegistrySymbol]) throw new Error('Internal error: invalid global object');

    var module1018 = t[require('./1018').ctorRegistrySymbol].URL;

    if (undefined === module1018) throw new Error('Internal error: constructor URL is not installed on the passed global object');
    var s = Object.create(module1018.prototype);
    s = module1018.setup(s, t, o, i);
    return s;
  },
  createImpl: function (t, o, i) {
    var l = module1018.create(t, o, i);
    return require('./1018').implForWrapper(l);
  },
  _internalSetup: function (t) {},
  setup: function (t, o) {
    var i = arguments.length > 2 && undefined !== arguments[2] ? arguments[2] : [],
      l = arguments.length > 3 && undefined !== arguments[3] ? arguments[3] : {};
    l.wrapper = t;

    module1018._internalSetup(t);

    Object.defineProperty(t, require('./1018').implSymbol, {
      value: new (require('./1019').implementation)(o, i, l),
      configurable: true,
    });
    t[require('./1018').implSymbol][require('./1018').wrapperSymbol] = t;
    if (require('./1019').init) require('./1019').init(t[require('./1018').implSymbol], l);
    return t;
  },
  install: function (t) {
    var module256 = (function () {
      function module7(i) {
        if ((require('./7')(this, module7), arguments.length < 1))
          throw new TypeError("Failed to construct 'URL': 1 argument required, but only " + arguments.length + ' present.');
        var l = [],
          s = arguments[0];
        s = require('./1027').USVString(s, {
          context: "Failed to construct 'URL': parameter 1",
        });
        l.push(s);
        var p = arguments[1];
        if (undefined !== p)
          p = require('./1027').USVString(p, {
            context: "Failed to construct 'URL': parameter 2",
          });
        l.push(p);
        return module256.setup(Object.create(this.constructor.prototype), t, l);
      }

      require('./8')(module7, [
        {
          key: 'toJSON',
          value: function () {
            if (!this || !module.exports.is(this)) throw new TypeError('Illegal invocation');
            return this[require('./1018').implSymbol].toJSON();
          },
        },
        {
          key: 'href',
          get: function () {
            if (!this || !module.exports.is(this)) throw new TypeError('Illegal invocation');
            return this[require('./1018').implSymbol].href;
          },
          set: function (t) {
            if (!this || !module.exports.is(this)) throw new TypeError('Illegal invocation');
            t = require('./1027').USVString(t, {
              context: "Failed to set the 'href' property on 'URL': The provided value",
            });
            this[require('./1018').implSymbol].href = t;
          },
        },
        {
          key: 'toString',
          value: function () {
            if (!this || !module.exports.is(this)) throw new TypeError('Illegal invocation');
            return this[require('./1018').implSymbol].href;
          },
        },
        {
          key: 'origin',
          get: function () {
            if (!this || !module.exports.is(this)) throw new TypeError('Illegal invocation');
            return this[require('./1018').implSymbol].origin;
          },
        },
        {
          key: 'protocol',
          get: function () {
            if (!this || !module.exports.is(this)) throw new TypeError('Illegal invocation');
            return this[require('./1018').implSymbol].protocol;
          },
          set: function (t) {
            if (!this || !module.exports.is(this)) throw new TypeError('Illegal invocation');
            t = require('./1027').USVString(t, {
              context: "Failed to set the 'protocol' property on 'URL': The provided value",
            });
            this[require('./1018').implSymbol].protocol = t;
          },
        },
        {
          key: 'username',
          get: function () {
            if (!this || !module.exports.is(this)) throw new TypeError('Illegal invocation');
            return this[require('./1018').implSymbol].username;
          },
          set: function (t) {
            if (!this || !module.exports.is(this)) throw new TypeError('Illegal invocation');
            t = require('./1027').USVString(t, {
              context: "Failed to set the 'username' property on 'URL': The provided value",
            });
            this[require('./1018').implSymbol].username = t;
          },
        },
        {
          key: 'password',
          get: function () {
            if (!this || !module.exports.is(this)) throw new TypeError('Illegal invocation');
            return this[require('./1018').implSymbol].password;
          },
          set: function (t) {
            if (!this || !module.exports.is(this)) throw new TypeError('Illegal invocation');
            t = require('./1027').USVString(t, {
              context: "Failed to set the 'password' property on 'URL': The provided value",
            });
            this[require('./1018').implSymbol].password = t;
          },
        },
        {
          key: 'host',
          get: function () {
            if (!this || !module.exports.is(this)) throw new TypeError('Illegal invocation');
            return this[require('./1018').implSymbol].host;
          },
          set: function (t) {
            if (!this || !module.exports.is(this)) throw new TypeError('Illegal invocation');
            t = require('./1027').USVString(t, {
              context: "Failed to set the 'host' property on 'URL': The provided value",
            });
            this[require('./1018').implSymbol].host = t;
          },
        },
        {
          key: 'hostname',
          get: function () {
            if (!this || !module.exports.is(this)) throw new TypeError('Illegal invocation');
            return this[require('./1018').implSymbol].hostname;
          },
          set: function (t) {
            if (!this || !module.exports.is(this)) throw new TypeError('Illegal invocation');
            t = require('./1027').USVString(t, {
              context: "Failed to set the 'hostname' property on 'URL': The provided value",
            });
            this[require('./1018').implSymbol].hostname = t;
          },
        },
        {
          key: 'port',
          get: function () {
            if (!this || !module.exports.is(this)) throw new TypeError('Illegal invocation');
            return this[require('./1018').implSymbol].port;
          },
          set: function (t) {
            if (!this || !module.exports.is(this)) throw new TypeError('Illegal invocation');
            t = require('./1027').USVString(t, {
              context: "Failed to set the 'port' property on 'URL': The provided value",
            });
            this[require('./1018').implSymbol].port = t;
          },
        },
        {
          key: 'pathname',
          get: function () {
            if (!this || !module.exports.is(this)) throw new TypeError('Illegal invocation');
            return this[require('./1018').implSymbol].pathname;
          },
          set: function (t) {
            if (!this || !module.exports.is(this)) throw new TypeError('Illegal invocation');
            t = require('./1027').USVString(t, {
              context: "Failed to set the 'pathname' property on 'URL': The provided value",
            });
            this[require('./1018').implSymbol].pathname = t;
          },
        },
        {
          key: 'search',
          get: function () {
            if (!this || !module.exports.is(this)) throw new TypeError('Illegal invocation');
            return this[require('./1018').implSymbol].search;
          },
          set: function (t) {
            if (!this || !module.exports.is(this)) throw new TypeError('Illegal invocation');
            t = require('./1027').USVString(t, {
              context: "Failed to set the 'search' property on 'URL': The provided value",
            });
            this[require('./1018').implSymbol].search = t;
          },
        },
        {
          key: 'searchParams',
          get: function () {
            var t = this;
            if (!this || !module.exports.is(this)) throw new TypeError('Illegal invocation');
            return require('./1018').getSameObject(this, 'searchParams', function () {
              return require('./1018').tryWrapperForImpl(t[require('./1018').implSymbol].searchParams);
            });
          },
        },
        {
          key: 'hash',
          get: function () {
            if (!this || !module.exports.is(this)) throw new TypeError('Illegal invocation');
            return this[require('./1018').implSymbol].hash;
          },
          set: function (t) {
            if (!this || !module.exports.is(this)) throw new TypeError('Illegal invocation');
            t = require('./1027').USVString(t, {
              context: "Failed to set the 'hash' property on 'URL': The provided value",
            });
            this[require('./1018').implSymbol].hash = t;
          },
        },
      ]);

      return module7;
    })();

    Object.defineProperties(
      module256.prototype,
      require('./256')(
        {
          toJSON: {
            enumerable: true,
          },
          href: {
            enumerable: true,
          },
          toString: {
            enumerable: true,
          },
          origin: {
            enumerable: true,
          },
          protocol: {
            enumerable: true,
          },
          username: {
            enumerable: true,
          },
          password: {
            enumerable: true,
          },
          host: {
            enumerable: true,
          },
          hostname: {
            enumerable: true,
          },
          port: {
            enumerable: true,
          },
          pathname: {
            enumerable: true,
          },
          search: {
            enumerable: true,
          },
          searchParams: {
            enumerable: true,
          },
          hash: {
            enumerable: true,
          },
        },
        Symbol.toStringTag,
        {
          value: 'URL',
          configurable: true,
        }
      )
    );
    if (undefined === t[require('./1018').ctorRegistrySymbol]) t[require('./1018').ctorRegistrySymbol] = Object.create(null);
    t[require('./1018').ctorRegistrySymbol].URL = module256;
    Object.defineProperty(t, 'URL', {
      configurable: true,
      writable: true,
      value: module256,
    });
  },
};
module.exports = module1018;
