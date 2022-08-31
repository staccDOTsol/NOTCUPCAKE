var module76 = require('@babel/runtime/helpers/interopRequireDefault')(require('./76')),
  module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module868 = (function () {
    function module867() {
      module7.default(this, module867);
    }

    module8.default(module867, [
      {
        key: 'formatNdef',
        value: function (l) {
          var module8,
            module867,
            f = arguments;
          return module76.default.async(
            function (n) {
              for (;;)
                switch ((n.prev = n.next)) {
                  case 0:
                    module8 = f.length > 1 && undefined !== f[1] ? f[1] : {};
                    module867 = {
                      readOnly: false,
                    };
                    return n.abrupt('return', require('./867').handleNativeException(require('./868').callNative('formatNdef', [l, module29.default({}, module867, module8)])));

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
    return module867;
  })();

exports.NdefFormatableHandlerAndroid = module868;
