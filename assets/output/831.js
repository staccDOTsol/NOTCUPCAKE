require('@babel/runtime/helpers/interopRequireDefault')(require('react'));

var ReactNative = require('react-native').NativeModules.ImageCropPicker,
  o = ReactNative;

exports.default = o;
var p = ReactNative.openPicker;
exports.openPicker = p;
var l = ReactNative.openCamera;
exports.openCamera = l;
var c = ReactNative.openCropper;
exports.openCropper = c;
var v = ReactNative.clean;
exports.clean = v;
var C = ReactNative.cleanSingle;
exports.cleanSingle = C;
