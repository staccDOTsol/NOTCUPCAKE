exports.get = function (n) {
  return u(n);
};

exports.getEnforcing = function (t) {
  var o = u(t);
  module18.default(null != o, "TurboModuleRegistry.getEnforcing(...): '" + t + "' could not be found. Verify that a module by this name is registered in the native binary.");
  return o;
};

var module18 = require('@babel/runtime/helpers/interopRequireDefault')(require('./18')),
  t = globals.__turboModuleProxy;

function u(n) {
  if (true !== globals.RN$Bridgeless) {
    var module22 = require('./22')[n];

    if (null != module22) return module22;
  }

  return null != t ? t(n) : null;
}
