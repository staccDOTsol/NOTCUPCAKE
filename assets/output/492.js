var ReactNative = require('react-native').NativeModules.RNGestureHandlerModule;

if (null == ReactNative)
  console.error(
    require('./493').tagMessage(
      "react-native-gesture-handler module was not found. Make sure you're running your app on the native platform and your code is linked properly (cd ios && pod install && cd ..).\n\n      For installation instructions, please refer to https://docs.swmansion.com/react-native-gesture-handler/docs/#installation"
        .split('\n')
        .map(function (n) {
          return n.trim();
        })
        .join('\n')
    )
  );
if (undefined === ReactNative.flushOperations) ReactNative.flushOperations = function () {};
var o = ReactNative;
exports.default = o;
