var module76 = require('@babel/runtime/helpers/interopRequireDefault')(require('./76')),
  module1010 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1010')),
  module13 = require('@babel/runtime/helpers/interopRequireDefault')(require('./13')),
  module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module10 = require('@babel/runtime/helpers/interopRequireDefault')(require('./10')),
  module12 = require('@babel/runtime/helpers/interopRequireDefault')(require('./12')),
  module15 = require('@babel/runtime/helpers/interopRequireDefault')(require('./15'));

function f() {
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

var l = function (e, t) {
    var n = {};

    for (var o in e) Object.prototype.hasOwnProperty.call(e, o) && t.indexOf(o) < 0 && (n[o] = e[o]);

    if (null != e && 'function' == typeof Object.getOwnPropertySymbols) {
      var c = 0;

      for (o = Object.getOwnPropertySymbols(e); c < o.length; c++) t.indexOf(o[c]) < 0 && Object.prototype.propertyIsEnumerable.call(e, o[c]) && (n[o[c]] = e[o[c]]);
    }

    return n;
  },
  module888 = (function (module29) {
    module10.default(_, module29);

    var h = _,
      v = f(),
      y = function () {
        var e,
          t = module15.default(h);

        if (v) {
          var n = module15.default(this).constructor;
          e = Reflect.construct(t, arguments, n);
        } else e = t.apply(this, arguments);

        return module12.default(this, e);
      };

    function _(e) {
      var t,
        n = arguments.length > 1 && undefined !== arguments[1] ? arguments[1] : 'ws://localhost:8080',
        c = arguments.length > 2 && undefined !== arguments[2] ? arguments[2] : {},
        i = arguments.length > 3 ? arguments[3] : undefined;
      module7.default(this, _);
      var u = c.autoconnect,
        s = undefined === u || u,
        f = c.reconnect,
        module29 = undefined === f || f,
        h = c.reconnect_interval,
        v = undefined === h ? 1e3 : h,
        k = c.max_reconnects,
        b = undefined === k ? 5 : k,
        w = l(c, ['autoconnect', 'reconnect', 'reconnect_interval', 'max_reconnects']);
      (t = y.call(this)).webSocketFactory = e;
      t.queue = {};
      t.rpc_id = 0;
      t.address = n;
      t.autoconnect = s;
      t.ready = false;
      t.reconnect = module29;
      t.reconnect_interval = v;
      t.max_reconnects = b;
      t.rest_options = w;
      t.current_reconnects = 0;

      t.generate_request_id =
        i ||
        function () {
          return ++t.rpc_id;
        };

      if (t.autoconnect)
        t._connect(
          t.address,
          require('./29')(
            {
              autoconnect: t.autoconnect,
              reconnect: t.reconnect,
              reconnect_interval: t.reconnect_interval,
              max_reconnects: t.max_reconnects,
            },
            t.rest_options
          )
        );
      return t;
    }

    module8.default(_, [
      {
        key: 'connect',
        value: function () {
          if (!this.socket)
            this._connect(
              this.address,
              require('./29')(
                {
                  autoconnect: this.autoconnect,
                  reconnect: this.reconnect,
                  reconnect_interval: this.reconnect_interval,
                  max_reconnects: this.max_reconnects,
                },
                this.rest_options
              )
            );
        },
      },
      {
        key: 'call',
        value: function (e, t, o, c) {
          var i = this;

          if (!(c || 'object' !== module13.default(o))) {
            c = o;
            o = null;
          }

          return new Promise(function (n, u) {
            if (!i.ready) return u(new Error('socket not ready'));
            var s = i.generate_request_id(e, t),
              f = {
                jsonrpc: '2.0',
                method: e,
                params: t || null,
                id: s,
              };
            i.socket.send(JSON.stringify(f), c, function (e) {
              if (e) return u(e);
              i.queue[s] = {
                promise: [n, u],
              };
              if (o)
                i.queue[s].timeout = setTimeout(function () {
                  delete i.queue[s];
                  u(new Error('reply timeout'));
                }, o);
            });
          });
        },
      },
      {
        key: 'login',
        value: (function () {
          var n = module1010.default(
            module76.default.mark(function t(n) {
              var o;
              return module76.default.wrap(
                function (e) {
                  for (;;)
                    switch ((e.prev = e.next)) {
                      case 0:
                        e.next = 2;
                        return this.call('rpc.login', n);

                      case 2:
                        if ((o = e.sent)) {
                          e.next = 5;
                          break;
                        }

                        throw new Error('authentication failed');

                      case 5:
                        return e.abrupt('return', o);

                      case 6:
                      case 'end':
                        return e.stop();
                    }
                },
                t,
                this
              );
            })
          );
          return function (e) {
            return n.apply(this, arguments);
          };
        })(),
      },
      {
        key: 'listMethods',
        value: (function () {
          var n = module1010.default(
            module76.default.mark(function t() {
              return module76.default.wrap(
                function (e) {
                  for (;;)
                    switch ((e.prev = e.next)) {
                      case 0:
                        e.next = 2;
                        return this.call('__listMethods');

                      case 2:
                        return e.abrupt('return', e.sent);

                      case 3:
                      case 'end':
                        return e.stop();
                    }
                },
                t,
                this
              );
            })
          );
          return function () {
            return n.apply(this, arguments);
          };
        })(),
      },
      {
        key: 'notify',
        value: function (e, t) {
          var n = this;
          return new Promise(function (o, c) {
            if (!n.ready) return c(new Error('socket not ready'));
            var i = {
              jsonrpc: '2.0',
              method: e,
              params: t || null,
            };
            n.socket.send(JSON.stringify(i), function (e) {
              if (e) return c(e);
              o();
            });
          });
        },
      },
      {
        key: 'subscribe',
        value: (function () {
          var n = module1010.default(
            module76.default.mark(function t(n) {
              var o;
              return module76.default.wrap(
                function (e) {
                  for (;;)
                    switch ((e.prev = e.next)) {
                      case 0:
                        if ('string' == typeof n) n = [n];
                        e.next = 3;
                        return this.call('rpc.on', n);

                      case 3:
                        if (((o = e.sent), 'string' != typeof n || 'ok' === o[n])) {
                          e.next = 6;
                          break;
                        }

                        throw new Error("Failed subscribing to an event '" + n + "' with: " + o[n]);

                      case 6:
                        return e.abrupt('return', o);

                      case 7:
                      case 'end':
                        return e.stop();
                    }
                },
                t,
                this
              );
            })
          );
          return function (e) {
            return n.apply(this, arguments);
          };
        })(),
      },
      {
        key: 'unsubscribe',
        value: (function () {
          var n = module1010.default(
            module76.default.mark(function t(n) {
              var o;
              return module76.default.wrap(
                function (e) {
                  for (;;)
                    switch ((e.prev = e.next)) {
                      case 0:
                        if ('string' == typeof n) n = [n];
                        e.next = 3;
                        return this.call('rpc.off', n);

                      case 3:
                        if (((o = e.sent), 'string' != typeof n || 'ok' === o[n])) {
                          e.next = 6;
                          break;
                        }

                        throw new Error('Failed unsubscribing from an event with: ' + o);

                      case 6:
                        return e.abrupt('return', o);

                      case 7:
                      case 'end':
                        return e.stop();
                    }
                },
                t,
                this
              );
            })
          );
          return function (e) {
            return n.apply(this, arguments);
          };
        })(),
      },
      {
        key: 'close',
        value: function (e, t) {
          this.socket.close(e || 1e3, t);
        },
      },
      {
        key: '_connect',
        value: function (e, t) {
          var n = this;
          this.socket = this.webSocketFactory(e, t);
          this.socket.addEventListener('open', function () {
            n.ready = true;
            n.emit('open');
            n.current_reconnects = 0;
          });
          this.socket.addEventListener('message', function (e) {
            var t = e.data;
            if (t instanceof ArrayBuffer) t = Buffer.from(t).toString();

            try {
              t = JSON.parse(t);
            } catch (e) {
              return;
            }

            if (t.notification && n.listeners(t.notification).length) {
              if (!Object.keys(t.params).length) return n.emit(t.notification);
              var o = [t.notification];
              if (t.params.constructor === Object) o.push(t.params);
              else for (var c = 0; c < t.params.length; c++) o.push(t.params[c]);
              return Promise.resolve().then(function () {
                n.emit.apply(n, o);
              });
            }

            if (!n.queue[t.id])
              return t.method && t.params
                ? Promise.resolve().then(function () {
                    n.emit(t.method, t.params);
                  })
                : undefined;
            if ('error' in t == 'result' in t) n.queue[t.id].promise[1](new Error('Server response malformed. Response must include either "result" or "error", but not both.'));
            if (n.queue[t.id].timeout) clearTimeout(n.queue[t.id].timeout);
            if (t.error) n.queue[t.id].promise[1](t.error);
            else n.queue[t.id].promise[0](t.result);
            delete n.queue[t.id];
          });
          this.socket.addEventListener('error', function (e) {
            return n.emit('error', e);
          });
          this.socket.addEventListener('close', function (o) {
            var c = o.code,
              i = o.reason;
            if (n.ready)
              setTimeout(function () {
                return n.emit('close', c, i);
              }, 0);
            n.ready = false;
            n.socket = undefined;

            if (1e3 !== c) {
              n.current_reconnects++;
              if (n.reconnect && (n.max_reconnects > n.current_reconnects || 0 === n.max_reconnects))
                setTimeout(function () {
                  return n._connect(e, t);
                }, n.reconnect_interval);
            }
          });
        },
      },
    ]);
    return _;
  })(require('./888').EventEmitter);

exports.default = module888;
