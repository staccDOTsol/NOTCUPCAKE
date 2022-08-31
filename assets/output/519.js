var module35 = require('@babel/runtime/helpers/interopRequireDefault')(require('./35')),
  module402 = require('@babel/runtime/helpers/interopRequireDefault')(require('./402')),
  l = ['maxDurationMs', 'maxDelayMs', 'numberOfTaps', 'maxDeltaX', 'maxDeltaY', 'maxDist', 'minPointers'];

exports.tapGestureHandlerProps = l;
exports.tapHandlerName = 'TapGestureHandler';
var module498 = module402.default({
  name: 'TapGestureHandler',
  allowedProps: [].concat(module35.default(require('./498').baseGestureHandlerProps), l),
  config: {},
});
exports.TapGestureHandler = module498;
