var e;
exports.Reanimated = e;

try {
  exports.Reanimated = e = require('./493');
  if (!e.setGestureState)
    e.setGestureState = function () {
      'worklet';

      console.warn(require(d[1]).tagMessage('Please use newer version of react-native-reanimated in order to control state of the gestures.'));
    };
} catch (e) {}
