var ReactNative = require('react-native'),
  module1053 = {
    gestureDirection: 'horizontal',
    transitionSpec: {
      open: require('./1055').TransitionIOSSpec,
      close: require('./1055').TransitionIOSSpec,
    },
    cardStyleInterpolator: require('./1051').forHorizontalIOS,
    headerStyleInterpolator: require('./1053').forFade,
  };

exports.SlideFromRightIOS = module1053;
var module1053 = {
  gestureDirection: 'vertical',
  transitionSpec: {
    open: require('./1055').TransitionIOSSpec,
    close: require('./1055').TransitionIOSSpec,
  },
  cardStyleInterpolator: require('./1051').forVerticalIOS,
  headerStyleInterpolator: require('./1053').forFade,
};
exports.ModalSlideFromBottomIOS = module1053;
var module1053 = {
  gestureDirection: 'vertical',
  transitionSpec: {
    open: require('./1055').TransitionIOSSpec,
    close: require('./1055').TransitionIOSSpec,
  },
  cardStyleInterpolator: require('./1051').forModalPresentationIOS,
  headerStyleInterpolator: require('./1053').forFade,
};
exports.ModalPresentationIOS = module1053;
var module1053 = {
  gestureDirection: 'vertical',
  transitionSpec: {
    open: require('./1055').FadeInFromBottomAndroidSpec,
    close: require('./1055').FadeOutToBottomAndroidSpec,
  },
  cardStyleInterpolator: require('./1051').forFadeFromBottomAndroid,
  headerStyleInterpolator: require('./1053').forFade,
};
exports.FadeFromBottomAndroid = module1053;
var module1053 = {
  gestureDirection: 'vertical',
  transitionSpec: {
    open: require('./1055').RevealFromBottomAndroidSpec,
    close: require('./1055').RevealFromBottomAndroidSpec,
  },
  cardStyleInterpolator: require('./1051').forRevealFromBottomAndroid,
  headerStyleInterpolator: require('./1053').forFade,
};
exports.RevealFromBottomAndroid = module1053;
var module1053 = {
  gestureDirection: 'horizontal',
  transitionSpec: {
    open: require('./1055').ScaleFromCenterAndroidSpec,
    close: require('./1055').ScaleFromCenterAndroidSpec,
  },
  cardStyleInterpolator: require('./1051').forScaleFromCenterAndroid,
  headerStyleInterpolator: require('./1053').forFade,
};
exports.ScaleFromCenterAndroid = module1053;
var module1053 = {
  gestureDirection: 'vertical',
  transitionSpec: {
    open: require('./1055').BottomSheetSlideInSpec,
    close: require('./1055').BottomSheetSlideOutSpec,
  },
  cardStyleInterpolator: require('./1051').forBottomSheetAndroid,
  headerStyleInterpolator: require('./1053').forFade,
};
exports.BottomSheetAndroid = module1053;
var module1053 = {
  gestureDirection: 'vertical',
  transitionSpec: {
    open: require('./1055').BottomSheetSlideInSpec,
    close: require('./1055').BottomSheetSlideOutSpec,
  },
  cardStyleInterpolator: require('./1051').forFadeFromCenter,
  headerStyleInterpolator: require('./1053').forFade,
};
exports.ModalFadeTransition = module1053;
var I = ReactNative.Platform.select({
  ios: module1053,
  android: ReactNative.Platform.Version >= 29 ? module1053 : ReactNative.Platform.Version >= 28 ? module1053 : module1053,
  default: module1053,
});
exports.DefaultTransition = I;
var f = ReactNative.Platform.select({
  ios: module1053,
  default: module1053,
});
exports.ModalTransition = f;
