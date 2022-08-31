var module61 = require('@babel/runtime/helpers/interopRequireDefault')(require('./61')),
  module517 = {
    Tap: function () {
      return new (require('./507').TapGesture)();
    },
    Pan: function () {
      return new (require('./509').PanGesture)();
    },
    Pinch: function () {
      return new (require('./510').PinchGesture)();
    },
    Rotation: function () {
      return new (require('./511').RotationGesture)();
    },
    Fling: function () {
      return new (require('./512').FlingGesture)();
    },
    LongPress: function () {
      return new (require('./513').LongPressGesture)();
    },
    ForceTouch: function () {
      return new (require('./514').ForceTouchGesture)();
    },
    Native: function () {
      return new (require('./515').NativeGesture)();
    },
    Manual: function () {
      return new (require('./516').ManualGesture)();
    },
    Race: function (...args) {
      return module61.default(require('./517').ComposedGesture, args);
    },
    Simultaneous: function (...args) {
      return module61.default(require('./517').SimultaneousGesture, args);
    },
    Exclusive: function (...args) {
      return module61.default(require('./517').ExclusiveGesture, args);
    },
  };

exports.GestureObjects = module517;
