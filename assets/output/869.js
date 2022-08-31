var module76 = require('@babel/runtime/helpers/interopRequireDefault')(require('./76')),
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
        value: function (t) {
          return module76.default.async(
            function (n) {
              for (;;)
                switch ((n.prev = n.next)) {
                  case 0:
                    if ('ios' !== ReactNative.Platform.OS) {
                      n.next = 2;
                      break;
                    }

                    return n.abrupt('return', require('./867').handleNativeException(require('./868').callNative('sendMifareCommand', [t])));

                  case 2:
                    return n.abrupt('return', require('./867').handleNativeException(require('./868').callNative('transceive', [t])));

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

exports.NfcAHandler = module867;
