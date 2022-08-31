var module76 = require('@babel/runtime/helpers/interopRequireDefault')(require('./76')),
  module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
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

exports.NfcAdapter = {
  FLAG_READER_NFC_A: 1,
  FLAG_READER_NFC_B: 2,
  FLAG_READER_NFC_F: 4,
  FLAG_READER_NFC_V: 8,
  FLAG_READER_NFC_BARCODE: 16,
  FLAG_READER_SKIP_NDEF_CHECK: 128,
  FLAG_READER_NO_PLATFORM_SOUNDS: 256,
};

var s = function (e) {
    return new Promise(function (t) {
      return setTimeout(t, e);
    });
  },
  module865 = (function (module867) {
    module10.default(p, module867);

    var h = p,
      v = u(),
      N = function () {
        var e,
          t = module15.default(h);

        if (v) {
          var n = module15.default(this).constructor;
          e = Reflect.construct(t, arguments, n);
        } else e = t.apply(this, arguments);

        return module12.default(this, e);
      };

    function p() {
      var n;
      module7.default(this, p);

      (n = N.call(this)).requestTechnology = function (t) {
        var module10,
          l = arguments;
        return module76.default.async(
          function (o) {
            for (;;)
              switch ((o.prev = o.next)) {
                case 0:
                  module10 = l.length > 1 && undefined !== l[1] ? l[1] : {};
                  o.prev = 1;
                  if ('string' == typeof t) t = [t];
                  o.next = 5;
                  return module76.default.awrap(n._hasTagEventRegistrationAndroid());

                case 5:
                  if (o.sent) {
                    o.next = 10;
                    break;
                  }

                  o.next = 9;
                  return module76.default.awrap(n.registerTagEvent(module10));

                case 9:
                  n.cleanUpTagRegistration = true;

                case 10:
                  o.next = 12;
                  return module76.default.awrap(require('./868').callNative('requestTechnology', [t]));

                case 12:
                  return o.abrupt('return', o.sent);

                case 15:
                  throw ((o.prev = 15), (o.t0 = o.catch(1)), require('./867').buildNfcExceptionAndroid(o.t0));

                case 18:
                case 'end':
                  return o.stop();
              }
          },
          null,
          null,
          [[1, 15]],
          Promise
        );
      };

      n.cancelTechnologyRequest = function () {
        var module7,
          module10,
          module12,
          module15,
          u,
          f = arguments;
        return module76.default.async(
          function (h) {
            for (;;)
              switch ((h.prev = h.next)) {
                case 0:
                  module7 = f.length > 0 && undefined !== f[0] ? f[0] : {};
                  module10 = module7.throwOnError;
                  module12 = undefined !== module10 && module10;
                  module15 = module7.delayMsAndroid;
                  u = undefined === module15 ? 1e3 : module15;
                  h.prev = 2;
                  h.next = 5;
                  return module76.default.awrap(require('./868').callNative('cancelTechnologyRequest'));

                case 5:
                  if (!n.cleanUpTagRegistration) {
                    h.next = 11;
                    break;
                  }

                  h.next = 8;
                  return module76.default.awrap(s(u));

                case 8:
                  h.next = 10;
                  return module76.default.awrap(n.unregisterTagEvent());

                case 10:
                  n.cleanUpTagRegistration = false;

                case 11:
                  h.next = 17;
                  break;

                case 13:
                  if (((h.prev = 13), (h.t0 = h.catch(2)), !module12)) {
                    h.next = 17;
                    break;
                  }

                  throw require('./867').buildNfcExceptionAndroid(h.t0);

                case 17:
                case 'end':
                  return h.stop();
              }
          },
          null,
          null,
          [[2, 13]],
          Promise
        );
      };

      n.getBackgroundTag = function () {
        return require('./867').handleNativeException(require('./868').callNative('getBackgroundTag'));
      };

      n.clearBackgroundTag = function () {
        return require('./867').handleNativeException(require('./868').callNative('clearBackgroundTag'));
      };

      n.isEnabled = function () {
        return require('./867').handleNativeException(require('./868').callNative('isEnabled'));
      };

      n.goToNfcSetting = function () {
        return require('./867').handleNativeException(require('./868').callNative('goToNfcSetting'));
      };

      n.getLaunchTagEvent = function () {
        return require('./867').handleNativeException(require('./868').callNative('getLaunchTagEvent'));
      };

      n.setNdefPushMessage = function (e) {
        return require('./867').handleNativeException(require('./868').callNative('setNdefPushMessage', [e]));
      };

      n.setTimeout = function (e) {
        return require('./867').handleNativeException(require('./868').callNative('setTimeout', [e]));
      };

      n.connect = function (e) {
        return require('./867').handleNativeException(require('./868').callNative('connect', [e]));
      };

      n.close = function () {
        return require('./867').handleNativeException(require('./868').callNative('close'));
      };

      n.transceive = function (e) {
        return require('./867').handleNativeException(require('./868').callNative('transceive', [e]));
      };

      n.getMaxTransceiveLength = function () {
        return require('./867').handleNativeException(require('./868').callNative('getMaxTransceiveLength'));
      };

      n._hasTagEventRegistrationAndroid = function () {
        return require('./867').handleNativeException(require('./868').callNative('hasTagEventRegistration'));
      };

      n.cleanUpTagRegistration = false;
      return n;
    }

    module8.default(p, [
      {
        key: 'mifareClassicHandlerAndroid',
        get: function () {
          if (!this._mifareClassicHandlerAndroid) this._mifareClassicHandlerAndroid = new (require('./876').MifareClassicHandlerAndroid)(this);
          return this._mifareClassicHandlerAndroid;
        },
      },
      {
        key: 'mifareUltralightHandlerAndroid',
        get: function () {
          if (!this._mifareUltralightHandlerAndroid) this._mifareUltralightHandlerAndroid = new (require('./877').MifareUltralightHandlerAndroid)(this);
          return this._mifareUltralightHandlerAndroid;
        },
      },
      {
        key: 'ndefFormatableHandlerAndroid',
        get: function () {
          if (!this._ndefFormatableHandlerAndroid) this._ndefFormatableHandlerAndroid = new (require('./878').NdefFormatableHandlerAndroid)(this);
          return this._ndefFormatableHandlerAndroid;
        },
      },
    ]);
    return p;
  })(require('./865').NfcManagerBase);

exports.NfcManagerAndroid = module865;
