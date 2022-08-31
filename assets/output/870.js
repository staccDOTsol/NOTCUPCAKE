var module76 = require('@babel/runtime/helpers/interopRequireDefault')(require('./76')),
  module35 = require('@babel/runtime/helpers/interopRequireDefault')(require('./35')),
  module871 = require('@babel/runtime/helpers/interopRequireDefault')(require('./871')),
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
        value: function (c) {
          var module8, module868, f, v;
          return module76.default.async(
            function (n) {
              for (;;)
                switch ((n.prev = n.next)) {
                  case 0:
                    if (Array.isArray(c)) {
                      n.next = 2;
                      break;
                    }

                    throw new Error('IsoDepHandler.transceive only takes input as a byte array');

                  case 2:
                    if ('ios' !== ReactNative.Platform.OS) {
                      n.next = 5;
                      break;
                    }

                    module8 = module871.default(c);
                    module868 = module8[0];
                    f = module8[1];
                    v = module8.slice(2);
                    return n.abrupt(
                      'return',
                      require('./867').handleNativeException(
                        new Promise(function (n, u) {
                          require('./868').NativeNfcManager.iso15693_sendRequest(
                            {
                              flags: module868,
                              commandCode: f,
                              data: v,
                            },
                            function (c, o, l) {
                              if (c) u(c);
                              else n([o].concat(module35.default(l)));
                            }
                          );
                        })
                      )
                    );

                  case 5:
                    return n.abrupt('return', require('./867').handleNativeException(require('./868').callNative('transceive', [c])));

                  case 6:
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

exports.NfcVHandler = module867;
