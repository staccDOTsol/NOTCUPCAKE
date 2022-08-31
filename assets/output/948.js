var t = function module949(n, o) {
  if (!(this instanceof module949)) return new module949(n, o);
  if (!o) o = {};
  this.options = {
    reviver: undefined !== o.reviver ? o.reviver : null,
    replacer: undefined !== o.replacer ? o.replacer : null,
    generator:
      undefined !== o.generator
        ? o.generator
        : function () {
            return require('./949').v4();
          },
    version: undefined !== o.version ? o.version : 2,
    notificationIdNull: 'boolean' == typeof o.notificationIdNull && o.notificationIdNull,
  };
  this.callServer = n;
};

module.exports = t;

t.prototype.request = function (t, n, o, s) {
  var u,
    l = this,
    f = null,
    c = Array.isArray(t) && 'function' == typeof n;
  if (1 === this.options.version && c) throw new TypeError('JSON-RPC 1.0 does not support batching');

  if (c || (!c && t && 'object' == typeof t && 'function' == typeof n)) {
    s = n;
    f = t;
  } else {
    if ('function' == typeof o) {
      s = o;
      o = undefined;
    }

    var p = 'function' == typeof s;

    try {
      f = require('./964')(t, n, o, {
        generator: this.options.generator,
        version: this.options.version,
        notificationIdNull: this.options.notificationIdNull,
      });
    } catch (t) {
      if (p) return s(t);
      throw t;
    }

    if (!p) return f;
  }

  try {
    u = JSON.stringify(f, this.options.replacer);
  } catch (t) {
    return s(t);
  }

  this.callServer(u, function (t, n) {
    l._parseResponse(t, n, s);
  });
  return f;
};

t.prototype._parseResponse = function (t, n, o) {
  if (t) o(t);
  else {
    if (!n) return o();
    var s;

    try {
      s = JSON.parse(n, this.options.reviver);
    } catch (t) {
      return o(t);
    }

    if (3 === o.length) {
      if (Array.isArray(s)) {
        var u = function (t) {
          return undefined !== t.error;
        };

        return o(
          null,
          s.filter(u),
          s.filter(function (t) {
            return !u(t);
          })
        );
      }

      return o(null, s.error, s.result);
    }

    o(null, s);
  }
};
