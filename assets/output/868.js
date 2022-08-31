exports.callNative = function (n) {
  var c = arguments.length > 1 && undefined !== arguments[1] ? arguments[1] : [],
    v = o[n];
  if (!v) throw new Error('no such native method: "' + n + '"');
  if (!Array.isArray(c)) throw new Error('params must be an array');

  var f = function (t, n) {
    return function (o, c) {
      if (o) n(o);
      else t(c);
    };
  };

  return new Promise(function (n, o) {
    var u = f(n, o),
      N = [].concat(module35.default(c), [u]);
    v.apply(undefined, module35.default(N));
  });
};

var module35 = require('@babel/runtime/helpers/interopRequireDefault')(require('./35')),
  ReactNative = require('react-native'),
  o = ReactNative.NativeModules.NfcManager;

exports.NativeNfcManager = o;
var c = new ReactNative.NativeEventEmitter(o);
exports.NfcManagerEmitter = c;
