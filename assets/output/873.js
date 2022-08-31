Object.defineProperty(exports, 'Nfc15693RequestFlagIOS', {
  enumerable: true,
  get: function () {
    return require('./874').Nfc15693RequestFlagIOS;
  },
});
Object.defineProperty(exports, 'Nfc15693ResponseFlagIOS', {
  enumerable: true,
  get: function () {
    return require('./874').Nfc15693ResponseFlagIOS;
  },
});

var module76 = require('@babel/runtime/helpers/interopRequireDefault')(require('./76')),
  module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module10 = require('@babel/runtime/helpers/interopRequireDefault')(require('./10')),
  module12 = require('@babel/runtime/helpers/interopRequireDefault')(require('./12')),
  module15 = require('@babel/runtime/helpers/interopRequireDefault')(require('./15')),
  ReactNative = require('react-native');

function s(e, n) {
  var t = ('undefined' != typeof Symbol && e[Symbol.iterator]) || e['@@iterator'];
  if (t) return (t = t.call(e)).next.bind(t);

  if (Array.isArray(e) || (t = f(e)) || (n && e && 'number' == typeof e.length)) {
    if (t) e = t;
    var o = 0;
    return function () {
      return o >= e.length
        ? {
            done: true,
          }
        : {
            done: false,
            value: e[o++],
          };
    };
  }

  throw new TypeError('Invalid attempt to iterate non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.');
}

function f(e, n) {
  if (e) {
    if ('string' == typeof e) return v(e, n);
    var t = Object.prototype.toString.call(e).slice(8, -1);
    if ('Object' === t && e.constructor) t = e.constructor.name;
    return 'Map' === t || 'Set' === t ? Array.from(e) : 'Arguments' === t || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(t) ? v(e, n) : undefined;
  }
}

function v(e, n) {
  if (null == n || n > e.length) n = e.length;

  for (var t = 0, o = new Array(n); t < n; t++) o[t] = e[t];

  return o;
}

function p() {
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

var module865 = (function (f) {
  module10.default(y, f);

  var v = y,
    module865 = p(),
    N = function () {
      var e,
        n = module15.default(v);

      if (module865) {
        var t = module15.default(this).constructor;
        e = Reflect.construct(n, arguments, t);
      } else e = n.apply(this, arguments);

      return module12.default(this, e);
    };

  function y() {
    var o;
    module7.default(this, y);

    (o = N.call(this)).isEnabled = function () {
      return module76.default.async(
        function (e) {
          for (;;)
            switch ((e.prev = e.next)) {
              case 0:
                return e.abrupt('return', true);

              case 1:
              case 'end':
                return e.stop();
            }
        },
        null,
        null,
        null,
        Promise
      );
    };

    o.requestTechnology = function (t) {
      var o,
        i,
        c,
        u,
        l,
        f = arguments;
      return module76.default.async(
        function (e) {
          for (;;)
            switch ((e.prev = e.next)) {
              case 0:
                for (o = f.length > 1 && undefined !== f[1] ? f[1] : {}, 'string' == typeof t && (t = [t]), i = [], c = s(t); !(u = c()).done; )
                  (l = u.value) === require('./865').NfcTech.NfcA
                    ? i.push(require('./865').NfcTech.MifareIOS)
                    : l === require('./865').NfcTech.NfcV
                    ? i.push(require('./865').NfcTech.Iso15693IOS)
                    : i.push(l);

                return e.abrupt(
                  'return',
                  require('./867').handleNativeException(
                    require('./868').callNative('requestTechnology', [i, module29.default({}, require('./865').DEFAULT_REGISTER_TAG_EVENT_OPTIONS, o)])
                  )
                );

              case 5:
              case 'end':
                return e.stop();
            }
        },
        null,
        null,
        null,
        Promise
      );
    };

    o.cancelTechnologyRequest = function () {
      var module29,
        module7,
        o,
        i = arguments;
      return module76.default.async(
        function (e) {
          for (;;)
            switch ((e.prev = e.next)) {
              case 0:
                module29 = i.length > 0 && undefined !== i[0] ? i[0] : {};
                module7 = module29.throwOnError;
                o = undefined !== module7 && module7;
                return e.abrupt('return', require('./867').handleNativeException(require('./868').callNative('cancelTechnologyRequest'), !o));

              case 3:
              case 'end':
                return e.stop();
            }
        },
        null,
        null,
        null,
        Promise
      );
    };

    o.getBackgroundTag = function () {
      var module29;
      return module76.default.async(
        function (t) {
          for (;;)
            switch ((t.prev = t.next)) {
              case 0:
                t.next = 2;
                return module76.default.awrap(require('./867').handleNativeException(require('./868').callNative('getBackgroundNdef')));

              case 2:
                module29 = t.sent;
                return t.abrupt(
                  'return',
                  module29
                    ? {
                        ndefMessage: module29,
                      }
                    : null
                );

              case 4:
              case 'end':
                return t.stop();
            }
        },
        null,
        null,
        null,
        Promise
      );
    };

    o.clearBackgroundTag = function () {
      return module76.default.async(
        function (e) {
          for (;;)
            switch ((e.prev = e.next)) {
              case 0:
                return e.abrupt('return', require('./868').callNative('clearBackgroundNdef'));

              case 1:
              case 'end':
                return e.stop();
            }
        },
        null,
        null,
        null,
        Promise
      );
    };

    o.getBackgroundNdef = function () {
      return require('./867').handleNativeException(require('./868').callNative('getBackgroundNdef'));
    };

    o.setAlertMessage = function (e) {
      return require('./867').handleNativeException(require('./868').callNative('setAlertMessage', [e]));
    };

    o.setAlertMessageIOS = function (e) {
      return require('./867').handleNativeException(require('./868').callNative('setAlertMessage', [e]));
    };

    o.invalidateSessionIOS = function () {
      return require('./867').handleNativeException(require('./868').callNative('invalidateSession'));
    };

    o.invalidateSessionWithErrorIOS = function () {
      var e = arguments.length > 0 && undefined !== arguments[0] ? arguments[0] : 'Error';
      return require('./867').handleNativeException(require('./868').callNative('invalidateSessionWithError', [e]));
    };

    o.sendMifareCommandIOS = function (e) {
      return require('./867').handleNativeException(require('./868').callNative('sendMifareCommand', [e]));
    };

    o.sendFelicaCommandIOS = function (e) {
      return require('./867').handleNativeException(require('./868').callNative('sendFelicaCommand', [e]));
    };

    o.sendCommandAPDUIOS = function (e) {
      if ('ios' !== ReactNative.Platform.OS) return Promise.reject('not implemented');

      if (Array.isArray(e)) {
        var n = e;
        return require('./867').handleNativeException(
          new Promise(function (e, t) {
            require('./868').NativeNfcManager.sendCommandAPDUBytes(n, function (n, o, i, c) {
              if (n) t(n);
              else
                e({
                  response: o,
                  sw1: i,
                  sw2: c,
                });
            });
          })
        );
      }

      var t = e;
      return require('./867').handleNativeException(
        new Promise(function (e, n) {
          require('./868').NativeNfcManager.sendCommandAPDU(t, function (t, o, i, c) {
            if (t) n(t);
            else
              e({
                response: o,
                sw1: i,
                sw2: c,
              });
          });
        })
      );
    };

    return o;
  }

  module8.default(y, [
    {
      key: 'iso15693HandlerIOS',
      get: function () {
        if (!this._iso15693HandlerIOS) this._iso15693HandlerIOS = new (require('./874').Iso15693HandlerIOS)();
        return this._iso15693HandlerIOS;
      },
    },
  ]);
  return y;
})(require('./865').NfcManagerBase);

exports.NfcManagerIOS = module865;
