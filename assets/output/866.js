var module76 = require('@babel/runtime/helpers/interopRequireDefault')(require('./76')),
  module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  ReactNative = require('react-native'),
  s = {
    NotSupported: 1,
    ReadWrite: 2,
    ReadOnly: 3,
  };

exports.NdefStatus = s;

var module868 = (function () {
  function module868() {
    module7.default(this, module868);
  }

  module8.default(module868, [
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
          function (t) {
            for (;;)
              switch ((t.prev = t.next)) {
                case 0:
                  return t.abrupt('return', require('./867').handleNativeException(require('./868').callNative('getNdefMessage')));

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
      key: 'makeReadOnly',
      value: function () {
        return module76.default.async(
          function (t) {
            for (;;)
              switch ((t.prev = t.next)) {
                case 0:
                  return t.abrupt('return', require('./867').handleNativeException(require('./868').callNative('makeReadOnly')));

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
      key: 'getNdefStatus',
      value: function () {
        var module7;
        return module76.default.async(
          function (u) {
            for (;;)
              switch ((u.prev = u.next)) {
                case 0:
                  if ('ios' !== ReactNative.Platform.OS) {
                    u.next = 4;
                    break;
                  }

                  return u.abrupt('return', require('./867').handleNativeException(require('./868').callNative('queryNDEFStatus')));

                case 4:
                  u.prev = 4;
                  u.next = 7;
                  return module76.default.awrap(require('./867').handleNativeException(require('./868').callNative('getNdefStatus')));

                case 7:
                  module7 = u.sent;
                  return u.abrupt('return', {
                    status: module7.isWritable ? s.ReadWrite : s.ReadOnly,
                    capacity: module7.maxSize,
                  });

                case 11:
                  u.prev = 11;
                  u.t0 = u.catch(4);
                  return u.abrupt('return', {
                    status: s.NotSupported,
                    capacity: 0,
                  });

                case 14:
                case 'end':
                  return u.stop();
              }
          },
          null,
          null,
          [[4, 11]],
          Promise
        );
      },
    },
    {
      key: 'getCachedNdefMessageAndroid',
      value: function () {
        return module76.default.async(
          function (t) {
            for (;;)
              switch ((t.prev = t.next)) {
                case 0:
                  return t.abrupt('return', require('./867').handleNativeException(require('./868').callNative('getCachedNdefMessage')));

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
  ]);
  return module868;
})();

exports.NdefHandler = module868;
