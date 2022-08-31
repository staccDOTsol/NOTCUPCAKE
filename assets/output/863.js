exports.setBeforeTransceive = function (e) {
  b = e;
};

var module76 = require('@babel/runtime/helpers/interopRequireDefault')(require('./76')),
  module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module10 = require('@babel/runtime/helpers/interopRequireDefault')(require('./10')),
  module12 = require('@babel/runtime/helpers/interopRequireDefault')(require('./12')),
  module15 = require('@babel/runtime/helpers/interopRequireDefault')(require('./15')),
  module59 = require('@babel/runtime/helpers/interopRequireDefault')(require('./59')),
  ReactNative = require('react-native'),
  module864 = (function (e, t) {
    if (!t && e && e.__esModule) return e;
    if (null === e || ('object' != typeof e && 'function' != typeof e))
      return {
        default: e,
      };
    var n = p(t);
    if (n && n.has(e)) return n.get(e);
    var u = {},
      c = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var s in e)
      if ('default' !== s && Object.prototype.hasOwnProperty.call(e, s)) {
        var l = c ? Object.getOwnPropertyDescriptor(e, s) : null;
        if (l && (l.get || l.set)) Object.defineProperty(u, s, l);
        else u[s] = e[s];
      }

    u.default = e;
    if (n) n.set(e, u);
    return u;
  })(require('./864'));

function p(e) {
  if ('function' != typeof WeakMap) return null;
  var t = new WeakMap(),
    n = new WeakMap();
  return (p = function (e) {
    return e ? n : t;
  })(e);
}

function v(e, t) {
  var n = ('undefined' != typeof Symbol && e[Symbol.iterator]) || e['@@iterator'];
  if (n) return (n = n.call(e)).next.bind(n);

  if (Array.isArray(e) || (n = x(e)) || (t && e && 'number' == typeof e.length)) {
    if (n) e = n;
    var u = 0;
    return function () {
      return u >= e.length
        ? {
            done: true,
          }
        : {
            done: false,
            value: e[u++],
          };
    };
  }

  throw new TypeError('Invalid attempt to iterate non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.');
}

function x(e, t) {
  if (e) {
    if ('string' == typeof e) return h(e, t);
    var n = Object.prototype.toString.call(e).slice(8, -1);
    if ('Object' === n && e.constructor) n = e.constructor.name;
    return 'Map' === n || 'Set' === n ? Array.from(e) : 'Arguments' === n || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(n) ? h(e, t) : undefined;
  }
}

function h(e, t) {
  if (null == t || t > e.length) t = e.length;

  for (var n = 0, u = new Array(t); n < t; n++) u[n] = e[n];

  return u;
}

function y() {
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

var b = null;

var w = (function (e) {
  module10.default(i, e);

  var module23 = i,
    module59 = y(),
    f = function () {
      var e,
        n = module15.default(module23);

      if (module59) {
        var u = module15.default(this).constructor;
        e = Reflect.construct(n, arguments, u);
      } else e = n.apply(this, arguments);

      return module12.default(this, e);
    };

  function i() {
    module7.default(this, i);
    return f.apply(this, arguments);
  }

  return module8.default(i);
})(module59.default(Error));

exports.ErrSuccess = w;

var module887 = function (t) {
    return function () {
      var module8,
        u = arguments;
      return module76.default.async(
        function (c) {
          for (;;)
            switch ((c.prev = c.next)) {
              case 0:
                c.prev = 0;
                if ('android' === ReactNative.Platform.OS)
                  require('./887').getOutlet('androidPrompt').update({
                    visible: true,
                    message: 'Ready to scan NFC',
                  });
                c.next = 4;
                return module76.default.awrap(t.apply(null, u));

              case 4:
                module8 = c.sent;
                if ('android' === ReactNative.Platform.OS)
                  require('./887').getOutlet('androidPrompt').update({
                    visible: true,
                    message: 'Completed',
                  });
                return c.abrupt('return', module8);

              case 9:
                throw ((c.prev = 9), (c.t0 = c.catch(0)), c.t0);

              case 12:
                c.prev = 12;
                if ('android' === ReactNative.Platform.OS)
                  setTimeout(function () {
                    require('./887').getOutlet('androidPrompt').update({
                      visible: false,
                    });
                  }, 800);
                return c.finish(12);

              case 15:
              case 'end':
                return c.stop();
            }
        },
        null,
        null,
        [[0, 9, 12, 15]],
        Promise
      );
    };
  },
  N = function (e) {
    if (!(e instanceof module864.NfcError.UserCancel))
      e instanceof module864.NfcError.Timeout
        ? ReactNative.Alert.alert('NFC Session Timeout')
        : (console.warn(e), 'ios' === ReactNative.Platform.OS ? module864.default.invalidateSessionWithErrorIOS('' + e) : ReactNative.Alert.alert('NFC Error', '' + e));
  },
  k = (function () {
    function c() {
      module7.default(this, c);
      this.readNdefOnce = module887(function () {
        return new Promise(function (e) {
          var t = null;
          module864.default.setEventListener(module864.NfcEvents.DiscoverTag, function (n) {
            e((t = n));
            if ('ios' === ReactNative.Platform.OS) module864.default.setAlertMessageIOS('NDEF tag found');
            module864.default.unregisterTagEvent().catch(function () {
              return 0;
            });
          });
          module864.default.setEventListener(module864.NfcEvents.SessionClosed, function (n) {
            if (n) N(n);
            module864.default.setEventListener(module864.NfcEvents.DiscoverTag, null);
            module864.default.setEventListener(module864.NfcEvents.SessionClosed, null);
            if (!t) e(null);
          });
          module864.default.registerTagEvent();
        });
      });
      this.readTag = module887(function () {
        var module23;
        return module76.default.async(
          function (n) {
            for (;;)
              switch ((n.prev = n.next)) {
                case 0:
                  module23 = null;
                  n.prev = 1;
                  n.next = 4;
                  return module76.default.awrap(module864.default.requestTechnology([module864.NfcTech.Ndef]));

                case 4:
                  n.next = 6;
                  return module76.default.awrap(module864.default.getTag());

                case 6:
                  if (!(module23 = n.sent)) {
                    n.next = 11;
                    break;
                  }

                  n.next = 10;
                  return module76.default.awrap(module864.default.ndefHandler.getNdefStatus());

                case 10:
                  module23.ndefStatus = n.sent;

                case 11:
                  if ('ios' !== ReactNative.Platform.OS) {
                    n.next = 14;
                    break;
                  }

                  n.next = 14;
                  return module76.default.awrap(module864.default.setAlertMessageIOS('Success'));

                case 14:
                  n.next = 19;
                  break;

                case 16:
                  n.prev = 16;
                  n.t0 = n.catch(1);
                  console.log(n.t0);

                case 19:
                  n.prev = 19;
                  module864.default.cancelTechnologyRequest();
                  return n.finish(19);

                case 22:
                  return n.abrupt('return', module23);

                case 23:
                case 'end':
                  return n.stop();
              }
          },
          null,
          null,
          [[1, 16, 19, 22]],
          Promise
        );
      });
      this.writeNdef = module887(function (t) {
        var module8, module7, c, s, l, o, p, v, x;
        return module76.default.async(
          function (h) {
            for (;;)
              switch ((h.prev = h.next)) {
                case 0:
                  module8 = t.type;
                  module7 = t.value;
                  c = false;
                  h.prev = 2;
                  h.next = 5;
                  return module76.default.awrap(
                    module864.default.requestTechnology(module864.NfcTech.Ndef, {
                      alertMessage: 'Ready to write some NDEF',
                    })
                  );

                case 5:
                  if (
                    ((s = null),
                    'TEXT' === module8
                      ? (s = module864.Ndef.encodeMessage([module864.Ndef.textRecord(module7)]))
                      : 'URI' === module8
                      ? (s = module864.Ndef.encodeMessage([module864.Ndef.uriRecord(module7)]))
                      : 'WIFI_SIMPLE' === module8
                      ? (s = module864.Ndef.encodeMessage([module864.Ndef.wifiSimpleRecord(module7)]))
                      : 'VCARD' === module8 &&
                        ((l = module7.name),
                        (o = module7.tel),
                        (p = module7.org),
                        (v = module7.email),
                        (x = 'BEGIN:VCARD\nVERSION:2.1\nN:;' + l + '\nORG: ' + p + '\nTEL;HOME:' + o + '\nEMAIL:' + v + '\nEND:VCARD'),
                        (s = module864.Ndef.encodeMessage([module864.Ndef.record(module864.Ndef.TNF_MIME_MEDIA, 'text/vcard', [], x)]))),
                    !s)
                  ) {
                    h.next = 14;
                    break;
                  }

                  h.next = 10;
                  return module76.default.awrap(module864.default.ndefHandler.writeNdefMessage(s));

                case 10:
                  if ('ios' !== ReactNative.Platform.OS) {
                    h.next = 13;
                    break;
                  }

                  h.next = 13;
                  return module76.default.awrap(module864.default.setAlertMessageIOS('Success'));

                case 13:
                  c = true;

                case 14:
                  h.next = 19;
                  break;

                case 16:
                  h.prev = 16;
                  h.t0 = h.catch(2);
                  N(h.t0);

                case 19:
                  h.prev = 19;
                  module864.default.cancelTechnologyRequest();
                  return h.finish(19);

                case 22:
                  return h.abrupt('return', c);

                case 23:
                case 'end':
                  return h.stop();
              }
          },
          null,
          null,
          [[2, 16, 19, 22]],
          Promise
        );
      });
      this.customTransceiveNfcA = module887(function (t, n) {
        var module7, c, s, l, o, p, x, h, y, w, S;
        return module76.default.async(
          function (k) {
            for (;;)
              switch ((k.prev = k.next)) {
                case 0:
                  module7 = false;
                  c = [];
                  k.prev = 2;
                  k.next = 5;
                  return module76.default.awrap(module864.default.requestTechnology([module864.NfcTech.NfcA]));

                case 5:
                  s = 0;
                  l = v(t);

                case 7:
                  if ((o = l()).done) {
                    k.next = 27;
                    break;
                  }

                  if (
                    ((p = o.value),
                    (x = null),
                    'function' == typeof b &&
                      (x = b({
                        cmdIdx: s,
                        commands: t,
                        responses: c,
                      })),
                    (y = (h = x || p).type),
                    (w = h.payload),
                    (S = null),
                    'command' !== y)
                  ) {
                    k.next = 20;
                    break;
                  }

                  console.warn(
                    w
                      .map(function (e) {
                        return ('00' + e.toString(16)).slice(-2);
                      })
                      .join(' ')
                  );
                  k.next = 17;
                  return module76.default.awrap(module864.default.nfcAHandler.transceive(w));

                case 17:
                  S = k.sent;
                  k.next = 23;
                  break;

                case 20:
                  if ('delay' !== y) {
                    k.next = 23;
                    break;
                  }

                  k.next = 23;
                  return module76.default.awrap(T(w));

                case 23:
                  c.push(S);
                  s++;

                case 25:
                  k.next = 7;
                  break;

                case 27:
                  if ('ios' !== ReactNative.Platform.OS) {
                    k.next = 30;
                    break;
                  }

                  k.next = 30;
                  return module76.default.awrap(module864.default.setAlertMessageIOS('Success'));

                case 30:
                  if (((module7 = true), 'function' != typeof n)) {
                    k.next = 34;
                    break;
                  }

                  k.next = 34;
                  return module76.default.awrap(n([module7, c]));

                case 34:
                  k.next = 39;
                  break;

                case 36:
                  k.prev = 36;
                  k.t0 = k.catch(2);
                  N(k.t0);

                case 39:
                  k.prev = 39;
                  module864.default.cancelTechnologyRequest();
                  return k.finish(39);

                case 42:
                  return k.abrupt('return', [module7, c]);

                case 43:
                case 'end':
                  return k.stop();
              }
          },
          null,
          null,
          [[2, 36, 39, 42]],
          Promise
        );
      });
      this.eraseNfcA = module887(function () {
        var module8,
          module7,
          c,
          module12,
          module15,
          o,
          p,
          v,
          x,
          h,
          y,
          b,
          w = arguments;
        return module76.default.async(
          function (S) {
            for (;;)
              switch ((S.prev = S.next)) {
                case 0:
                  module8 = w.length > 0 && undefined !== w[0] ? w[0] : {};
                  module7 = module8.format;
                  c = undefined !== module7 && module7;
                  module12 = false;
                  S.prev = 2;
                  S.next = 5;
                  return module76.default.awrap(module864.default.requestTechnology([module864.NfcTech.NfcA]));

                case 5:
                  module15 = [48, 3];
                  S.next = 8;
                  return module76.default.awrap(module864.default.nfcAHandler.transceive(module15));

                case 8:
                  o = S.sent;
                  p = module23.default(o, 4);
                  v = p[2];
                  x = (8 * v) / 4;
                  h = 0;

                case 16:
                  if (!(h < x)) {
                    S.next = 24;
                    break;
                  }

                  y = [162, h + 4, 0, 0, 0, 0];
                  S.next = 21;
                  return module76.default.awrap(module864.default.nfcAHandler.transceive(y));

                case 21:
                  h++;
                  S.next = 16;
                  break;

                case 24:
                  if (!c) {
                    S.next = 34;
                    break;
                  }

                  b = [162, 4, 3, 0, 254, 0];
                  S.next = 28;
                  return module76.default.awrap(module864.default.nfcAHandler.transceive(b));

                case 28:
                  if ('ios' !== ReactNative.Platform.OS) {
                    S.next = 31;
                    break;
                  }

                  S.next = 31;
                  return module76.default.awrap(module864.default.setAlertMessageIOS('Success'));

                case 31:
                  module12 = true;
                  S.next = 35;
                  break;

                case 34:
                  module12 = false;

                case 35:
                  S.next = 40;
                  break;

                case 37:
                  S.prev = 37;
                  S.t0 = S.catch(2);
                  N(S.t0);

                case 40:
                  S.prev = 40;
                  module864.default.cancelTechnologyRequest();
                  return S.finish(40);

                case 43:
                  return S.abrupt('return', module12);

                case 44:
                case 'end':
                  return S.stop();
              }
          },
          null,
          null,
          [[2, 37, 40, 43]],
          Promise
        );
      });
      this.customTransceiveIsoDep = module887(function (t, n) {
        var module7, c, s, l, o, p, x, h;
        return module76.default.async(
          function (y) {
            for (;;)
              switch ((y.prev = y.next)) {
                case 0:
                  module7 = false;
                  c = [];
                  y.prev = 2;
                  y.next = 5;
                  return module76.default.awrap(module864.default.requestTechnology([module864.NfcTech.IsoDep]));

                case 5:
                  s = v(t);

                case 6:
                  if ((l = s()).done) {
                    y.next = 25;
                    break;
                  }

                  if (((o = l.value), (p = o.type), (x = o.payload), (h = null), 'command' !== p)) {
                    y.next = 19;
                    break;
                  }

                  console.log(
                    '>>> ' +
                      x
                        .map(function (e) {
                          return ('00' + e.toString(16)).slice(-2);
                        })
                        .join(' ')
                  );
                  y.next = 15;
                  return module76.default.awrap(module864.default.isoDepHandler.transceive(x));

                case 15:
                  h = y.sent;
                  console.log(
                    '<<< ' +
                      h
                        .map(function (e) {
                          return ('00' + e.toString(16)).slice(-2);
                        })
                        .join(' ')
                  );
                  y.next = 22;
                  break;

                case 19:
                  if ('delay' !== p) {
                    y.next = 22;
                    break;
                  }

                  y.next = 22;
                  return module76.default.awrap(T(x));

                case 22:
                  c.push(h);

                case 23:
                  y.next = 6;
                  break;

                case 25:
                  if ('ios' !== ReactNative.Platform.OS) {
                    y.next = 28;
                    break;
                  }

                  y.next = 28;
                  return module76.default.awrap(module864.default.setAlertMessageIOS('Success'));

                case 28:
                  if (((module7 = true), 'function' != typeof n)) {
                    y.next = 32;
                    break;
                  }

                  y.next = 32;
                  return module76.default.awrap(n([module7, c]));

                case 32:
                  y.next = 38;
                  break;

                case 34:
                  y.prev = 34;
                  y.t0 = y.catch(2);
                  console.warn(y.t0);
                  N(y.t0);

                case 38:
                  y.prev = 38;
                  module864.default.cancelTechnologyRequest();
                  return y.finish(38);

                case 41:
                  return y.abrupt('return', [module7, c]);

                case 42:
                case 'end':
                  return y.stop();
              }
          },
          null,
          null,
          [[2, 34, 38, 41]],
          Promise
        );
      });
      this.customTransceiveNfcV = module887(function (t, n) {
        var module7, c, s, l, o, p, x, h;
        return module76.default.async(
          function (y) {
            for (;;)
              switch ((y.prev = y.next)) {
                case 0:
                  module7 = false;
                  c = [];
                  y.prev = 2;
                  y.next = 5;
                  return module76.default.awrap(module864.default.requestTechnology([module864.NfcTech.NfcV]));

                case 5:
                  s = v(t);

                case 6:
                  if ((l = s()).done) {
                    y.next = 25;
                    break;
                  }

                  if (((o = l.value), (p = o.type), (x = o.payload), (h = null), 'command' !== p)) {
                    y.next = 19;
                    break;
                  }

                  console.log(
                    '>>> ' +
                      x
                        .map(function (e) {
                          return ('00' + e.toString(16)).slice(-2);
                        })
                        .join(' ')
                  );
                  y.next = 15;
                  return module76.default.awrap(module864.default.nfcVHandler.transceive(x));

                case 15:
                  h = y.sent;
                  console.log(
                    '<<< ' +
                      h
                        .map(function (e) {
                          return ('00' + e.toString(16)).slice(-2);
                        })
                        .join(' ')
                  );
                  y.next = 22;
                  break;

                case 19:
                  if ('delay' !== p) {
                    y.next = 22;
                    break;
                  }

                  y.next = 22;
                  return module76.default.awrap(T(x));

                case 22:
                  c.push(h);

                case 23:
                  y.next = 6;
                  break;

                case 25:
                  if ('ios' !== ReactNative.Platform.OS) {
                    y.next = 28;
                    break;
                  }

                  y.next = 28;
                  return module76.default.awrap(module864.default.setAlertMessageIOS('Success'));

                case 28:
                  if (((module7 = true), 'function' != typeof n)) {
                    y.next = 32;
                    break;
                  }

                  y.next = 32;
                  return module76.default.awrap(n([module7, c]));

                case 32:
                  y.next = 38;
                  break;

                case 34:
                  y.prev = 34;
                  y.t0 = y.catch(2);
                  console.warn(y.t0);
                  N(y.t0);

                case 38:
                  y.prev = 38;
                  module864.default.cancelTechnologyRequest();
                  return y.finish(38);

                case 41:
                  return y.abrupt('return', [module7, c]);

                case 42:
                case 'end':
                  return y.stop();
              }
          },
          null,
          null,
          [[2, 34, 38, 41]],
          Promise
        );
      });
      this.makeReadOnly = module887(function () {
        var module23;
        return module76.default.async(
          function (n) {
            for (;;)
              switch ((n.prev = n.next)) {
                case 0:
                  module23 = false;
                  n.prev = 1;
                  n.next = 4;
                  return module76.default.awrap(module864.default.requestTechnology([module864.NfcTech.Ndef]));

                case 4:
                  n.next = 6;
                  return module76.default.awrap(module864.default.ndefHandler.makeReadOnly());

                case 6:
                  if ('ios' !== ReactNative.Platform.OS) {
                    n.next = 9;
                    break;
                  }

                  n.next = 9;
                  return module76.default.awrap(module864.default.setAlertMessageIOS('Success'));

                case 9:
                  module23 = true;
                  n.next = 16;
                  break;

                case 12:
                  n.prev = 12;
                  n.t0 = n.catch(1);
                  console.warn(n.t0);
                  N(n.t0);

                case 16:
                  n.prev = 16;
                  module864.default.cancelTechnologyRequest();
                  return n.finish(16);

                case 19:
                  return n.abrupt('return', module23);

                case 20:
                case 'end':
                  return n.stop();
              }
          },
          null,
          null,
          [[1, 12, 16, 19]],
          Promise
        );
      });
      this.formatNdefAndroid = module887(function () {
        var module23, module8;
        return module76.default.async(
          function (u) {
            for (;;)
              switch ((u.prev = u.next)) {
                case 0:
                  module23 = false;
                  u.prev = 1;
                  u.next = 4;
                  return module76.default.awrap(module864.default.requestTechnology([module864.NfcTech.NdefFormatable]));

                case 4:
                  module8 = module864.Ndef.encodeMessage([module864.Ndef.textRecord('hello nfc')]);
                  u.next = 7;
                  return module76.default.awrap(module864.default.ndefFormatableHandlerAndroid.formatNdef(module8));

                case 7:
                  if ('ios' !== ReactNative.Platform.OS) {
                    u.next = 10;
                    break;
                  }

                  u.next = 10;
                  return module76.default.awrap(module864.default.setAlertMessageIOS('Success'));

                case 10:
                  module23 = true;
                  u.next = 17;
                  break;

                case 13:
                  u.prev = 13;
                  u.t0 = u.catch(1);
                  console.warn(u.t0);
                  N(u.t0);

                case 17:
                  u.prev = 17;
                  module864.default.cancelTechnologyRequest();
                  return u.finish(17);

                case 20:
                  return u.abrupt('return', module23);

                case 21:
                case 'end':
                  return u.stop();
              }
          },
          null,
          null,
          [[1, 13, 17, 20]],
          Promise
        );
      });
    }

    module8.default(c, [
      {
        key: 'init',
        value: function () {
          var t;
          return module76.default.async(
            function (n) {
              for (;;)
                switch ((n.prev = n.next)) {
                  case 0:
                    n.next = 2;
                    return module76.default.awrap(module864.default.isSupported());

                  case 2:
                    if (!(t = n.sent)) {
                      n.next = 6;
                      break;
                    }

                    n.next = 6;
                    return module76.default.awrap(module864.default.start());

                  case 6:
                    return n.abrupt('return', t);

                  case 7:
                  case 'end':
                    return n.stop();
                }
            },
            null,
            null,
            null,
            Promise
          );
        },
      },
      {
        key: 'isEnabled',
        value: function () {
          return module76.default.async(
            function (e) {
              for (;;)
                switch ((e.prev = e.next)) {
                  case 0:
                    return e.abrupt('return', module864.default.isEnabled());

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
        },
      },
      {
        key: 'goToNfcSetting',
        value: function () {
          return module76.default.async(
            function (e) {
              for (;;)
                switch ((e.prev = e.next)) {
                  case 0:
                    return e.abrupt('return', module864.default.goToNfcSetting());

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
        },
      },
    ]);
    return c;
  })(),
  T = function (e) {
    return new Promise(function (t) {
      return setTimeout(t, e);
    });
  },
  O = new k();

exports.default = O;
