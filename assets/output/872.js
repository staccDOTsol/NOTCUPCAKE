var module76 = require('@babel/runtime/helpers/interopRequireDefault')(require('./76')),
  module35 = require('@babel/runtime/helpers/interopRequireDefault')(require('./35')),
  module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  ReactNative = require('react-native'),
  module867 = (function () {
    function module868() {
      module7.default(this, module868);
    }

    module8.default(module868, [
      {
        key: 'transceive',
        value: function (u) {
          return module76.default.async(
            function (n) {
              for (;;)
                switch ((n.prev = n.next)) {
                  case 0:
                    if (Array.isArray(u)) {
                      n.next = 2;
                      break;
                    }

                    throw new Error('IsoDepHandler.transceive only takes input as a byte array');

                  case 2:
                    if ('ios' !== ReactNative.Platform.OS) {
                      n.next = 4;
                      break;
                    }

                    return n.abrupt(
                      'return',
                      require('./867').handleNativeException(
                        new Promise(function (n, o) {
                          require('./868').NativeNfcManager.sendCommandAPDUBytes(u, function (u, c, s, l) {
                            if (u) o(u);
                            else n([].concat(module35.default(c), [s, l]));
                          });
                        })
                      )
                    );

                  case 4:
                    return n.abrupt('return', require('./867').handleNativeException(require('./868').callNative('transceive', [u])));

                  case 5:
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

exports.IsoDepHandler = module867;
