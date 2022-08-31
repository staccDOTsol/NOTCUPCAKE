var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  ReactNative = require('react-native');

exports.getCombinedStyles = function (o) {
  var p = o.isAnimatedFromRight,
    l = o.isIconStatic,
    u = o.distance,
    s = o.animFAB,
    R = ReactNative.I18nManager.isRTL,
    f = {
      left: -u,
      right: undefined,
    },
    X = {
      innerWrapper: module29.default({}, f),
      iconWrapper: module29.default({}, f),
      absoluteFill: {},
    },
    b = p && R,
    c = !p && !R,
    W = !p && R;

  if (p && !R) {
    X.innerWrapper.transform = [
      {
        translateX: s.interpolate({
          inputRange: [u, 0],
          outputRange: [u, 0],
        }),
      },
    ];
    X.iconWrapper.transform = [
      {
        translateX: l ? 0 : s,
      },
    ];
    X.absoluteFill.transform = [
      {
        translateX: s.interpolate({
          inputRange: [u, 0],
          outputRange: [Math.abs(u) / 2, Math.abs(u)],
        }),
      },
    ];
  } else if (b) {
    X.iconWrapper.transform = [
      {
        translateX: l
          ? 0
          : s.interpolate({
              inputRange: [u, 0],
              outputRange: [-u, 0],
            }),
      },
    ];
    X.innerWrapper.transform = [
      {
        translateX: s.interpolate({
          inputRange: [u, 0],
          outputRange: [-u, 0],
        }),
      },
    ];
    X.absoluteFill.transform = [
      {
        translateX: s.interpolate({
          inputRange: [u, 0],
          outputRange: [0, u],
        }),
      },
    ];
  } else if (c) {
    X.iconWrapper.transform = [
      {
        translateX: l
          ? u
          : s.interpolate({
              inputRange: [0, u],
              outputRange: [u, 2 * u],
            }),
      },
    ];
    X.innerWrapper.transform = [
      {
        translateX: s,
      },
    ];
    X.absoluteFill.transform = [
      {
        translateX: s.interpolate({
          inputRange: [0, u],
          outputRange: [0, Math.abs(u) / 2],
        }),
      },
    ];
  } else if (W) {
    X.iconWrapper.transform = [
      {
        translateX: l
          ? s.interpolate({
              inputRange: [0, u],
              outputRange: [-u, 2 * -u],
            })
          : -u,
      },
    ];
    X.innerWrapper.transform = [
      {
        translateX: s.interpolate({
          inputRange: [0, u],
          outputRange: [0, -u],
        }),
      },
    ];
    X.absoluteFill.transform = [
      {
        translateX: s.interpolate({
          inputRange: [0, u],
          outputRange: [0, -u],
        }),
      },
    ];
  }

  return X;
};
