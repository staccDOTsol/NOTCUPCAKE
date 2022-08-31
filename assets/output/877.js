var module76 = require('@babel/runtime/helpers/interopRequireDefault')(require('./76')),
  module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module867 = (function () {
    function module868(t) {
      module7.default(this, module868);
      this.nfcManager = t;
    }

    module8.default(module868, [
      {
        key: 'mifareUltralightReadPages',
        value: function (n) {
          return module76.default.async(
            function (t) {
              for (;;)
                switch ((t.prev = t.next)) {
                  case 0:
                    return t.abrupt('return', require('./867').handleNativeException(require('./868').callNative('mifareUltralightReadPages', [n])));

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
        key: 'mifareUltralightWritePage',
        value: function (n, l) {
          return module76.default.async(
            function (t) {
              for (;;)
                switch ((t.prev = t.next)) {
                  case 0:
                    if (l && Array.isArray(l) && l.length === this.nfcManager.MIFARE_ULTRALIGHT_PAGE_SIZE) {
                      t.next = 2;
                      break;
                    }

                    throw new Error('data should be a non-empty Array[' + this.nfcManager.MIFARE_ULTRALIGHT_PAGE_SIZE + '] of integers (0 - 255)');

                  case 2:
                    return t.abrupt('return', require('./867').handleNativeException(require('./868').callNative('mifareUltralightWritePage', [n, l])));

                  case 3:
                  case 'end':
                    return t.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
    ]);
    return module868;
  })();

exports.MifareUltralightHandlerAndroid = module867;
