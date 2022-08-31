exports.hasProperty = o;

exports.isFabric = function () {
  var n;
  return !(null == (n = globals) || !n.nativeFabricUIManager);
};

exports.isJestEnv = function () {
  return o(globals, 'process') && !!process.env.JEST_WORKER_ID;
};

exports.isRemoteDebuggingEnabled = function () {
  return !globals.nativeCallSyncHook || globals.__REMOTEDEV__;
};

exports.shouldUseCodegenNativeComponent = function () {
  var t = module494.split('.'),
    o = module23.default(t, 2),
    i = o[0],
    s = o[1],
    c = Number.parseInt(i);
  return Number.parseInt(s) >= 68 || c > 0;
};

exports.tagMessage = function (n) {
  return '[react-native-gesture-handler] ' + n;
};

exports.toArray = function (n) {
  if (!Array.isArray(n)) return [n];
  return n;
};

exports.withPrevAndCurrent = function (n, u) {
  var o = [null],
    i = [];
  module35.default(n).forEach(function (n, t) {
    var s = o[t],
      c = u(s, n);
    o.push(c);
    i.push(c);
  });
  return i;
};

var module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  module35 = require('@babel/runtime/helpers/interopRequireDefault')(require('./35')),
  module494 = require('@babel/runtime/helpers/interopRequireDefault')(require('./494')).default.version;

function o(n, t) {
  return Object.prototype.hasOwnProperty.call(n, t);
}
