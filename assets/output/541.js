exports.initialize = function () {
  require('./525').startListening();
};

exports.maybeInitializeFabric = function () {
  if (require('./493').isFabric() && !t) {
    module492.default.install();
    t = true;
  }
};

var module492 = require('@babel/runtime/helpers/interopRequireDefault')(require('./492')),
  t = false;
