var ReactNative = require('react-native');

exports.TransitionIOSSpec = {
  animation: 'spring',
  config: {
    stiffness: 1e3,
    damping: 500,
    mass: 3,
    overshootClamping: true,
    restDisplacementThreshold: 10,
    restSpeedThreshold: 10,
  },
};
var o = {
  animation: 'timing',
  config: {
    duration: 350,
    easing: ReactNative.Easing.out(ReactNative.Easing.poly(5)),
  },
};
exports.FadeInFromBottomAndroidSpec = o;
var t = {
  animation: 'timing',
  config: {
    duration: 150,
    easing: ReactNative.Easing.in(ReactNative.Easing.linear),
  },
};
exports.FadeOutToBottomAndroidSpec = t;
var c = {
  animation: 'timing',
  config: {
    duration: 425,
    easing: ReactNative.Easing.bezier(0.35, 0.45, 0, 1),
  },
};
exports.RevealFromBottomAndroidSpec = c;
var s = {
  animation: 'timing',
  config: {
    duration: 400,
    easing: ReactNative.Easing.bezier(0.35, 0.45, 0, 1),
  },
};
exports.ScaleFromCenterAndroidSpec = s;
var S = {
  animation: 'timing',
  config: {
    duration: 250,
    easing: function (n) {
      return Math.cos((n + 1) * Math.PI) / 2 + 0.5;
    },
  },
};
exports.BottomSheetSlideInSpec = S;
var p = {
  animation: 'timing',
  config: {
    duration: 200,
    easing: function (n) {
      return 1 === n ? 1 : n ** 2;
    },
  },
};
exports.BottomSheetSlideOutSpec = p;
