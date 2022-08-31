exports.managePanProps = c;

var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module35 = require('@babel/runtime/helpers/interopRequireDefault')(require('./35')),
  module402 = require('@babel/runtime/helpers/interopRequireDefault')(require('./402')),
  O = [
    'activeOffsetY',
    'activeOffsetX',
    'failOffsetY',
    'failOffsetX',
    'minDist',
    'minVelocity',
    'minVelocityX',
    'minVelocityY',
    'minPointers',
    'maxPointers',
    'avgTouches',
    'enableTrackpadTwoFingerGesture',
    'activateAfterLongPress',
  ];

exports.panGestureHandlerProps = O;
var n = ['activeOffsetYStart', 'activeOffsetYEnd', 'activeOffsetXStart', 'activeOffsetXEnd', 'failOffsetYStart', 'failOffsetYEnd', 'failOffsetXStart', 'failOffsetXEnd'];
exports.panGestureHandlerCustomNativeProps = n;
exports.panHandlerName = 'PanGestureHandler';
var module498 = module402.default({
  name: 'PanGestureHandler',
  allowedProps: [].concat(module35.default(require('./498').baseGestureHandlerProps), O),
  config: {},
  transformProps: c,
  customNativeProps: n,
});

function v(t) {
  var s = module29.default({}, t);

  if (undefined !== t.activeOffsetX) {
    delete s.activeOffsetX;

    if (Array.isArray(t.activeOffsetX)) {
      s.activeOffsetXStart = t.activeOffsetX[0];
      s.activeOffsetXEnd = t.activeOffsetX[1];
    } else if (t.activeOffsetX < 0) s.activeOffsetXStart = t.activeOffsetX;
    else s.activeOffsetXEnd = t.activeOffsetX;
  }

  if (undefined !== t.activeOffsetY) {
    delete s.activeOffsetY;

    if (Array.isArray(t.activeOffsetY)) {
      s.activeOffsetYStart = t.activeOffsetY[0];
      s.activeOffsetYEnd = t.activeOffsetY[1];
    } else if (t.activeOffsetY < 0) s.activeOffsetYStart = t.activeOffsetY;
    else s.activeOffsetYEnd = t.activeOffsetY;
  }

  if (undefined !== t.failOffsetX) {
    delete s.failOffsetX;

    if (Array.isArray(t.failOffsetX)) {
      s.failOffsetXStart = t.failOffsetX[0];
      s.failOffsetXEnd = t.failOffsetX[1];
    } else if (t.failOffsetX < 0) s.failOffsetXStart = t.failOffsetX;
    else s.failOffsetXEnd = t.failOffsetX;
  }

  if (undefined !== t.failOffsetY) {
    delete s.failOffsetY;

    if (Array.isArray(t.failOffsetY)) {
      s.failOffsetYStart = t.failOffsetY[0];
      s.failOffsetYEnd = t.failOffsetY[1];
    } else if (t.failOffsetY < 0) s.failOffsetYStart = t.failOffsetY;
    else s.failOffsetYEnd = t.failOffsetY;
  }

  return s;
}

function c(f) {
  return v(f);
}

exports.PanGestureHandler = module498;
