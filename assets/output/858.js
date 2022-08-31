var l,
  t,
  module156 = require('@babel/runtime/helpers/interopRequireDefault')(require('./156')),
  u = 'http://localhost:8081/';

module.exports = function () {
  var o;

  if (undefined === l) {
    var s = module156.default.getConstants().scriptURL,
      c = s.match(/^https?:\/\/.*?\//);
    l = c ? c[0] : null;
    t = c ? s : null;
  }

  return {
    url: null != (o = l) ? o : u,
    fullBundleUrl: t,
    bundleLoadedFromServer: null !== l,
  };
};
