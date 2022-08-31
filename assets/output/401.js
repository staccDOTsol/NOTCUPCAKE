var module35 = require('@babel/runtime/helpers/interopRequireDefault')(require('./35')),
  module402 = require('@babel/runtime/helpers/interopRequireDefault')(require('./402')),
  l = ['shouldActivateOnStart', 'disallowInterruption'];

exports.nativeViewGestureHandlerProps = l;
var module498 = [].concat(module35.default(require('./498').baseGestureHandlerProps), l);
exports.nativeViewProps = module498;
exports.nativeViewHandlerName = 'NativeViewGestureHandler';
var o = module402.default({
  name: 'NativeViewGestureHandler',
  allowedProps: module498,
  config: {},
});
exports.NativeViewGestureHandler = o;
