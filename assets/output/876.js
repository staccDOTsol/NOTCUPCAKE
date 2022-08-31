var module76 = require('@babel/runtime/helpers/interopRequireDefault')(require('./76')),
  module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module867 = (function () {
    function module868(n) {
      module7.default(this, module868);
      this.nfcManager = n;
    }

    module8.default(module868, [
      {
        key: 'mifareClassicAuthenticateA',
        value: function (t, l) {
          return module76.default.async(
            function (n) {
              for (;;)
                switch ((n.prev = n.next)) {
                  case 0:
                    if (l && Array.isArray(l) && 6 === l.length) {
                      n.next = 2;
                      break;
                    }

                    throw new Error('key should be an Array[6] of integers (0 - 255)');

                  case 2:
                    return n.abrupt('return', require('./867').handleNativeException(require('./868').callNative('mifareClassicAuthenticateA', [t, l])));

                  case 3:
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
        key: 'mifareClassicAuthenticateB',
        value: function (t, l) {
          return module76.default.async(
            function (n) {
              for (;;)
                switch ((n.prev = n.next)) {
                  case 0:
                    if (l && Array.isArray(l) && 6 === l.length) {
                      n.next = 2;
                      break;
                    }

                    throw new Error('key should be an Array[6] of integers (0 - 255)');

                  case 2:
                    return n.abrupt('return', require('./867').handleNativeException(require('./868').callNative('mifareClassicAuthenticateB', [t, l])));

                  case 3:
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
        key: 'mifareClassicGetBlockCountInSector',
        value: function (t) {
          return module76.default.async(
            function (n) {
              for (;;)
                switch ((n.prev = n.next)) {
                  case 0:
                    return n.abrupt('return', require('./867').handleNativeException(require('./868').callNative('mifareClassicGetBlockCountInSector', [t])));

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
        key: 'mifareClassicGetSectorCount',
        value: function () {
          return module76.default.async(
            function (n) {
              for (;;)
                switch ((n.prev = n.next)) {
                  case 0:
                    return n.abrupt('return', require('./867').handleNativeException(require('./868').callNative('mifareClassicGetSectorCount')));

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
        key: 'mifareClassicSectorToBlock',
        value: function (t) {
          return module76.default.async(
            function (n) {
              for (;;)
                switch ((n.prev = n.next)) {
                  case 0:
                    return n.abrupt('return', require('./867').handleNativeException(require('./868').callNative('mifareClassicSectorToBlock', [t])));

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
        key: 'mifareClassicReadBlock',
        value: function (t) {
          return module76.default.async(
            function (n) {
              for (;;)
                switch ((n.prev = n.next)) {
                  case 0:
                    return n.abrupt('return', require('./867').handleNativeException(require('./868').callNative('mifareClassicReadBlock', [t])));

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
        key: 'mifareClassicReadSector',
        value: function (t) {
          return module76.default.async(
            function (n) {
              for (;;)
                switch ((n.prev = n.next)) {
                  case 0:
                    return n.abrupt('return', require('./867').handleNativeException(require('./868').callNative('mifareClassicReadSector', [t])));

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
        key: 'mifareClassicWriteBlock',
        value: function (t, l) {
          return module76.default.async(
            function (n) {
              for (;;)
                switch ((n.prev = n.next)) {
                  case 0:
                    if (l && Array.isArray(l) && l.length === this.nfcManager.MIFARE_BLOCK_SIZE) {
                      n.next = 2;
                      break;
                    }

                    throw new Error('data should be a non-empty Array[' + this.nfcManager.MIFARE_BLOCK_SIZE + '] of integers (0 - 255)');

                  case 2:
                    return n.abrupt('return', require('./867').handleNativeException(require('./868').callNative('mifareClassicWriteBlock', [t, l])));

                  case 3:
                  case 'end':
                    return n.stop();
                }
            },
            null,
            this,
            null,
            Promise
          );
        },
      },
      {
        key: 'mifareClassicIncrementBlock',
        value: function (t, l) {
          return module76.default.async(
            function (n) {
              for (;;)
                switch ((n.prev = n.next)) {
                  case 0:
                    if (l && !Number.isNaN(l)) {
                      n.next = 2;
                      break;
                    }

                    throw new Error('value should be a number');

                  case 2:
                    return n.abrupt('return', require('./867').handleNativeException(require('./868').callNative('mifareClassicIncrementBlock', [t, l])));

                  case 3:
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
        key: 'mifareClassicDecrementBlock',
        value: function (t, l) {
          return module76.default.async(
            function (n) {
              for (;;)
                switch ((n.prev = n.next)) {
                  case 0:
                    if (l && !Number.isNaN(l)) {
                      n.next = 2;
                      break;
                    }

                    throw new Error('value should be a number');

                  case 2:
                    return n.abrupt('return', require('./867').handleNativeException(require('./868').callNative('mifareClassicDecrementBlock', [t, l])));

                  case 3:
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
        key: 'mifareClassicTransferBlock',
        value: function (t) {
          return module76.default.async(
            function (n) {
              for (;;)
                switch ((n.prev = n.next)) {
                  case 0:
                    if (t && !Number.isNaN(t)) {
                      n.next = 2;
                      break;
                    }

                    throw new Error('block should be a number');

                  case 2:
                    return n.abrupt('return', require('./867').handleNativeException(require('./868').callNative('mifareClassicTransferBlock', [t])));

                  case 3:
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
    ]);
    return module868;
  })();

exports.MifareClassicHandlerAndroid = module867;
