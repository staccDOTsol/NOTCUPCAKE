Object.defineProperty(exports, 'NdefStatus', {
  enumerable: true,
  get: function () {
    return require('./866').NdefStatus;
  },
});

var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module76 = require('@babel/runtime/helpers/interopRequireDefault')(require('./76')),
  ReactNative = require('react-native'),
  u = {
    DiscoverTag: 'NfcManagerDiscoverTag',
    DiscoverBackgroundTag: 'NfcManagerDiscoverBackgroundTag',
    SessionClosed: 'NfcManagerSessionClosed',
    StateChanged: 'NfcManagerStateChanged',
  };

exports.NfcEvents = u;
exports.NfcTech = {
  Ndef: 'Ndef',
  NfcA: 'NfcA',
  NfcB: 'NfcB',
  NfcF: 'NfcF',
  NfcV: 'NfcV',
  IsoDep: 'IsoDep',
  MifareClassic: 'MifareClassic',
  MifareUltralight: 'MifareUltralight',
  MifareIOS: 'mifare',
  Iso15693IOS: 'iso15693',
  FelicaIOS: 'felica',
  NdefFormatable: 'NdefFormatable',
};
var l = {
  alertMessage: 'Please tap NFC tags',
  invalidateAfterFirstRead: false,
  isReaderModeEnabled: false,
  readerModeFlags: 0,
  readerModeDelay: 10,
};

function f() {
  throw new Error('not implemented');
}

function v() {
  return module76.default.async(
    function (n) {
      for (;;)
        switch ((n.prev = n.next)) {
          case 0:
          case 'end':
            return n.stop();
        }
    },
    null,
    null,
    null,
    Promise
  );
}

exports.DEFAULT_REGISTER_TAG_EVENT_OPTIONS = l;

var module868 = (function () {
  function module868() {
    var n = this;
    module7.default(this, module868);
    this.requestTechnology = f;
    this.cancelTechnologyRequest = f;
    this.getBackgroundTag = f;
    this.clearBackgroundTag = f;
    this.setAlertMessage = v;

    this._onDiscoverTag = function (t) {
      var s = n._clientListeners[u.DiscoverTag];
      if (s) s(t);
    };

    this._onDiscoverBackgroundTag = function (t) {
      var s = n._clientListeners[u.DiscoverBackgroundTag];
      if (s) s(t);
    };

    this._onSessionClosedIOS = function (t) {
      var s = n._clientListeners[u.SessionClosed];

      if (s) {
        var module867 = require('./867').buildNfcExceptionIOS(t.error);

        s(module867 instanceof require('./867').UserCancel ? null : module867);
      }
    };

    this._onStateChangedAndroid = function (t) {
      var s = n._clientListeners[u.StateChanged];
      if (s) s(t);
    };

    this._subscribeNativeEvents = function () {
      n._subscriptions = {};
      n._clientListeners = {};
      n._subscriptions[u.DiscoverTag] = require('./868').NfcManagerEmitter.addListener(u.DiscoverTag, n._onDiscoverTag);
      n._subscriptions[u.DiscoverBackgroundTag] = require('./868').NfcManagerEmitter.addListener(u.DiscoverBackgroundTag, n._onDiscoverBackgroundTag);
      if ('ios' === ReactNative.Platform.OS) n._subscriptions[u.SessionClosed] = require('./868').NfcManagerEmitter.addListener(u.SessionClosed, n._onSessionClosedIOS);
      if ('android' === ReactNative.Platform.OS) n._subscriptions[u.StateChanged] = require('./868').NfcManagerEmitter.addListener(u.StateChanged, n._onStateChangedAndroid);
    };

    this._subscribeNativeEvents();
  }

  module8.default(module868, [
    {
      key: 'start',
      value: function () {
        return module76.default.async(
          function (n) {
            for (;;)
              switch ((n.prev = n.next)) {
                case 0:
                  return n.abrupt('return', require('./867').handleNativeException(require('./868').callNative('start')));

                case 1:
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
      key: 'isSupported',
      value: function () {
        var module29,
          t = arguments;
        return module76.default.async(
          function (s) {
            for (;;)
              switch ((s.prev = s.next)) {
                case 0:
                  module29 = t.length > 0 && undefined !== t[0] ? t[0] : '';
                  return s.abrupt('return', require('./867').handleNativeException(require('./868').callNative('isSupported', [module29])));

                case 2:
                case 'end':
                  return s.stop();
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
      key: 'registerTagEvent',
      value: function () {
        var module7,
          module8,
          o = arguments;
        return module76.default.async(
          function (c) {
            for (;;)
              switch ((c.prev = c.next)) {
                case 0:
                  module7 = o.length > 0 && undefined !== o[0] ? o[0] : {};
                  module8 = module29.default({}, l, module7);
                  return c.abrupt('return', require('./867').handleNativeException(require('./868').callNative('registerTagEvent', [module8])));

                case 3:
                case 'end':
                  return c.stop();
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
      key: 'unregisterTagEvent',
      value: function () {
        return module76.default.async(
          function (n) {
            for (;;)
              switch ((n.prev = n.next)) {
                case 0:
                  return n.abrupt('return', require('./867').handleNativeException(require('./868').callNative('unregisterTagEvent')));

                case 1:
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
      key: 'getTag',
      value: function () {
        return module76.default.async(
          function (n) {
            for (;;)
              switch ((n.prev = n.next)) {
                case 0:
                  return n.abrupt('return', require('./867').handleNativeException(require('./868').callNative('getTag')));

                case 1:
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
      key: 'setEventListener',
      value: function (n, t) {
        if (
          -1 ===
          Object.keys(u)
            .map(function (n) {
              return u[n];
            })
            .indexOf(n)
        )
          throw new Error('no such event');
        this._clientListeners[n] = t;
      },
    },
    {
      key: 'writeNdefMessage',
      value: function (n) {
        return module76.default.async(
          function (t) {
            for (;;)
              switch ((t.prev = t.next)) {
                case 0:
                  return t.abrupt('return', require('./867').handleNativeException(require('./868').callNative('writeNdefMessage', [n])));

                case 1:
                case 'end':
                  return t.stop();
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
      key: 'getNdefMessage',
      value: function () {
        return module76.default.async(
          function (n) {
            for (;;)
              switch ((n.prev = n.next)) {
                case 0:
                  return n.abrupt('return', require('./867').handleNativeException(require('./868').callNative('getNdefMessage')));

                case 1:
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
      key: 'ndefHandler',
      get: function () {
        if (!this._ndefHandler) this._ndefHandler = new (require('./866').NdefHandler)();
        return this._ndefHandler;
      },
    },
    {
      key: 'nfcAHandler',
      get: function () {
        if (!this._nfcAHandler) this._nfcAHandler = new (require('./869').NfcAHandler)();
        return this._nfcAHandler;
      },
    },
    {
      key: 'nfcVHandler',
      get: function () {
        if (!this._nfcVHandler) this._nfcVHandler = new (require('./870').NfcVHandler)();
        return this._nfcVHandler;
      },
    },
    {
      key: 'isoDepHandler',
      get: function () {
        if (!this._isoDepHandler) this._isoDepHandler = new (require('./872').IsoDepHandler)();
        return this._isoDepHandler;
      },
    },
    {
      key: 'MIFARE_BLOCK_SIZE',
      get: function () {
        return require('./868').NativeNfcManager.MIFARE_BLOCK_SIZE;
      },
    },
    {
      key: 'MIFARE_ULTRALIGHT_PAGE_SIZE',
      get: function () {
        return require('./868').NativeNfcManager.MIFARE_ULTRALIGHT_PAGE_SIZE;
      },
    },
    {
      key: 'MIFARE_ULTRALIGHT_TYPE',
      get: function () {
        return require('./868').NativeNfcManager.MIFARE_ULTRALIGHT_TYPE;
      },
    },
    {
      key: 'MIFARE_ULTRALIGHT_TYPE_C',
      get: function () {
        return require('./868').NativeNfcManager.MIFARE_ULTRALIGHT_TYPE_C;
      },
    },
    {
      key: 'MIFARE_ULTRALIGHT_TYPE_UNKNOWN',
      get: function () {
        return require('./868').NativeNfcManager.MIFARE_ULTRALIGHT_TYPE_UNKNOWN;
      },
    },
  ]);
  return module868;
})();

exports.NfcManagerBase = module868;
