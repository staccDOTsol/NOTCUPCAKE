exports.createViewConfig = function (t) {
  return {
    uiViewClassName: t.uiViewClassName,
    Commands: {},
    bubblingEventTypes: u(module165.default.bubblingEventTypes, t.bubblingEventTypes),
    directEventTypes: u(module165.default.directEventTypes, t.directEventTypes),
    validAttributes: u(module165.default.validAttributes, t.validAttributes),
  };
};

var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module165 = require('@babel/runtime/helpers/interopRequireDefault')(require('./165'));

function u(n, u) {
  var l;
  return null == n || null == u ? (null != (l = null != n ? n : u) ? l : {}) : module29.default({}, n, u);
}
