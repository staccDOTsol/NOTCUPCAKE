var module182 = require('@babel/runtime/helpers/interopRequireDefault')(require('./182')),
  module43 = require('@babel/runtime/helpers/interopRequireDefault')(require('./43'));

var t = function (t, p) {
  var l = p && null != p.paperComponentName ? p.paperComponentName : t;
  if (null != p && null != p.paperComponentNameDeprecated)
    if (module43.default.getViewManagerConfig(t)) l = t;
    else {
      var u;
      if (null == p.paperComponentNameDeprecated || !module43.default.getViewManagerConfig(p.paperComponentNameDeprecated))
        throw new Error('Failed to find native component for either ' + t + ' or ' + (null != (u = p.paperComponentNameDeprecated) ? u : '(unknown)'));
      l = p.paperComponentNameDeprecated;
    }
  return module182.default(l);
};

exports.default = t;
