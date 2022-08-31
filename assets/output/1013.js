var ReactNative = require('react-native'),
  n = parseInt(ReactNative.Platform.Version, 10);

if ('ios' === ReactNative.Platform.OS && 10 === n && null == Object.getOwnPropertyDescriptor(ArrayBuffer.prototype, 'byteLength'))
  Object.defineProperty(ArrayBuffer.prototype, 'byteLength', {
    configurable: true,
    enumerable: false,
    get: function () {
      return null;
    },
  });
