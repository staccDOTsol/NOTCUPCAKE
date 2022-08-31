exports.forBottomSheetAndroid = function (t) {
  var o = t.current,
    l = t.inverted,
    u = t.layouts.screen,
    s = t.closing,
    c = p(
      o.progress.interpolate({
        inputRange: [0, 1],
        outputRange: [0.8 * u.height, 0],
        extrapolate: 'clamp',
      }),
      l
    ),
    R = module1052.default(
      s,
      o.progress,
      o.progress.interpolate({
        inputRange: [0, 1],
        outputRange: [0, 1],
        extrapolate: 'clamp',
      })
    ),
    f = o.progress.interpolate({
      inputRange: [0, 1],
      outputRange: [0, 0.3],
      extrapolate: 'clamp',
    });
  return {
    cardStyle: {
      opacity: R,
      transform: [
        {
          translateY: c,
        },
      ],
    },
    overlayStyle: {
      opacity: f,
    },
  };
};

exports.forFadeFromBottomAndroid = function (t) {
  var o = t.current,
    l = t.inverted,
    u = t.layouts.screen,
    s = t.closing,
    c = p(
      o.progress.interpolate({
        inputRange: [0, 1],
        outputRange: [0.08 * u.height, 0],
        extrapolate: 'clamp',
      }),
      l
    );
  return {
    cardStyle: {
      opacity: module1052.default(
        s,
        o.progress,
        o.progress.interpolate({
          inputRange: [0, 0.5, 0.9, 1],
          outputRange: [0, 0.25, 0.7, 1],
          extrapolate: 'clamp',
        })
      ),
      transform: [
        {
          translateY: c,
        },
      ],
    },
  };
};

exports.forFadeFromCenter = function (t) {
  var n = t.current.progress;
  return {
    cardStyle: {
      opacity: n.interpolate({
        inputRange: [0, 0.5, 0.9, 1],
        outputRange: [0, 0.25, 0.7, 1],
      }),
    },
    overlayStyle: {
      opacity: n.interpolate({
        inputRange: [0, 1],
        outputRange: [0, 0.5],
        extrapolate: 'clamp',
      }),
    },
  };
};

exports.forHorizontalIOS = function (t) {
  var n = t.current,
    o = t.next,
    l = t.inverted,
    u = t.layouts.screen,
    s = p(
      n.progress.interpolate({
        inputRange: [0, 1],
        outputRange: [u.width, 0],
        extrapolate: 'clamp',
      }),
      l
    ),
    c = o
      ? p(
          o.progress.interpolate({
            inputRange: [0, 1],
            outputRange: [0, -0.3 * u.width],
            extrapolate: 'clamp',
          }),
          l
        )
      : 0,
    R = n.progress.interpolate({
      inputRange: [0, 1],
      outputRange: [0, 0.07],
      extrapolate: 'clamp',
    }),
    f = n.progress.interpolate({
      inputRange: [0, 1],
      outputRange: [0, 0.3],
      extrapolate: 'clamp',
    });
  return {
    cardStyle: {
      transform: [
        {
          translateX: s,
        },
        {
          translateX: c,
        },
      ],
    },
    overlayStyle: {
      opacity: R,
    },
    shadowStyle: {
      shadowOpacity: f,
    },
  };
};

exports.forModalPresentationIOS = function (n) {
  var l = n.index,
    u = n.current,
    s = n.next,
    c = n.inverted,
    R = n.layouts.screen,
    f = n.insets,
    y = 'ios' === ReactNative.Platform.OS && !ReactNative.Platform.isPad && !ReactNative.Platform.isTVOS && f.top > 20,
    h = R.width > R.height,
    x = h ? 0 : 10,
    v = f.top,
    S = R.height / R.width,
    w = o(
      u.progress.interpolate({
        inputRange: [0, 1],
        outputRange: [0, 1],
        extrapolate: 'clamp',
      }),
      s
        ? s.progress.interpolate({
            inputRange: [0, 1],
            outputRange: [0, 1],
            extrapolate: 'clamp',
          })
        : 0
    ),
    A = 0 === l,
    O = p(
      w.interpolate({
        inputRange: [0, 1, 2],
        outputRange: [R.height, A ? 0 : x, (A ? v : 0) - x * S],
      }),
      c
    ),
    Y = w.interpolate({
      inputRange: [0, 1, 1.0001, 2],
      outputRange: [0, 0.3, 1, 1],
    }),
    B = h
      ? 1
      : w.interpolate({
          inputRange: [0, 1, 2],
          outputRange: [1, 1, R.width ? 1 - (2 * x) / R.width : 1],
        }),
    F = h
      ? 0
      : A
      ? w.interpolate({
          inputRange: [0, 1, 1.0001, 2],
          outputRange: [0, 0, y ? 38 : 0, 10],
        })
      : 10;
  return {
    cardStyle: {
      overflow: 'hidden',
      borderTopLeftRadius: F,
      borderTopRightRadius: F,
      borderBottomLeftRadius: y ? F : 0,
      borderBottomRightRadius: y ? F : 0,
      marginTop: A ? 0 : v,
      marginBottom: A ? 0 : x,
      transform: [
        {
          translateY: O,
        },
        {
          scale: B,
        },
      ],
    },
    overlayStyle: {
      opacity: Y,
    },
  };
};

exports.forNoAnimation = function () {
  return {};
};

exports.forRevealFromBottomAndroid = function (t) {
  var n = t.current,
    o = t.next,
    l = t.inverted,
    u = t.layouts.screen,
    s = p(
      n.progress.interpolate({
        inputRange: [0, 1],
        outputRange: [u.height, 0],
        extrapolate: 'clamp',
      }),
      l
    ),
    c = p(
      n.progress.interpolate({
        inputRange: [0, 1],
        outputRange: [0.9590000000000001 * u.height * -1, 0],
        extrapolate: 'clamp',
      }),
      l
    ),
    R = o
      ? p(
          o.progress.interpolate({
            inputRange: [0, 1],
            outputRange: [0, 0.02 * u.height * -1],
            extrapolate: 'clamp',
          }),
          l
        )
      : 0,
    f = n.progress.interpolate({
      inputRange: [0, 0.36, 1],
      outputRange: [0, 0.1, 0.1],
      extrapolate: 'clamp',
    });
  return {
    containerStyle: {
      overflow: 'hidden',
      transform: [
        {
          translateY: s,
        },
      ],
    },
    cardStyle: {
      transform: [
        {
          translateY: c,
        },
        {
          translateY: R,
        },
      ],
    },
    overlayStyle: {
      opacity: f,
    },
  };
};

exports.forScaleFromCenterAndroid = function (t) {
  var p = t.current,
    l = t.next,
    u = t.closing,
    s = o(
      p.progress.interpolate({
        inputRange: [0, 1],
        outputRange: [0, 1],
        extrapolate: 'clamp',
      }),
      l
        ? l.progress.interpolate({
            inputRange: [0, 1],
            outputRange: [0, 1],
            extrapolate: 'clamp',
          })
        : 0
    ),
    c = s.interpolate({
      inputRange: [0, 0.75, 0.875, 1, 1.0825, 1.2075, 2],
      outputRange: [0, 0, 1, 1, 1, 1, 0],
    }),
    R = module1052.default(
      u,
      p.progress.interpolate({
        inputRange: [0, 1],
        outputRange: [0.925, 1],
        extrapolate: 'clamp',
      }),
      s.interpolate({
        inputRange: [0, 1, 2],
        outputRange: [0.85, 1, 1.075],
      })
    );
  return {
    cardStyle: {
      opacity: c,
      transform: [
        {
          scale: R,
        },
      ],
    },
  };
};

exports.forVerticalIOS = function (t) {
  var n = t.current,
    o = t.inverted,
    l = t.layouts.screen;
  return {
    cardStyle: {
      transform: [
        {
          translateY: p(
            n.progress.interpolate({
              inputRange: [0, 1],
              outputRange: [l.height, 0],
              extrapolate: 'clamp',
            }),
            o
          ),
        },
      ],
    },
  };
};

var ReactNative = require('react-native'),
  module1052 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1052')),
  o = ReactNative.Animated.add,
  p = ReactNative.Animated.multiply;
