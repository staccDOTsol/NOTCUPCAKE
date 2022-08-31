exports.default = function (e, t) {
  return new module888(e, t);
};

var module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module10 = require('@babel/runtime/helpers/interopRequireDefault')(require('./10')),
  module12 = require('@babel/runtime/helpers/interopRequireDefault')(require('./12')),
  module15 = require('@babel/runtime/helpers/interopRequireDefault')(require('./15'));

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

var module888 = (function (s) {
  module10.default(k, s);

  var f = k,
    l = u(),
    v = function () {
      var e,
        t = module15.default(f);

      if (l) {
        var n = module15.default(this).constructor;
        e = Reflect.construct(t, arguments, n);
      } else e = t.apply(this, arguments);

      return module12.default(this, e);
    };

  function k(t, n, o) {
    var c;
    module7.default(this, k);
    (c = v.call(this)).socket = new window.WebSocket(t, o);

    c.socket.onopen = function () {
      return c.emit('open');
    };

    c.socket.onmessage = function (e) {
      return c.emit('message', e.data);
    };

    c.socket.onerror = function (e) {
      return c.emit('error', e);
    };

    c.socket.onclose = function (e) {
      c.emit('close', e.code, e.reason);
    };

    return c;
  }

  module8.default(k, [
    {
      key: 'send',
      value: function (e, t, n) {
        var o = n || t;

        try {
          this.socket.send(e);
          o();
        } catch (e) {
          o(e);
        }
      },
    },
    {
      key: 'close',
      value: function (e, t) {
        this.socket.close(e, t);
      },
    },
    {
      key: 'addEventListener',
      value: function (e, t, n) {
        this.socket.addEventListener(e, t, n);
      },
    },
  ]);
  return k;
})(require('./888').EventEmitter);
