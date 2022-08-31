exports.default = function (t) {
  var n = arguments.length > 1 && undefined !== arguments[1] ? arguments[1] : module708.default.colors.surface;

  if (o(t)) {
    var l = [0, 1, 2, 3, 8, 24];
    return t.interpolate({
      inputRange: l,
      outputRange: l.map(function (t) {
        return f(n, t);
      }),
    });
  }

  return f(n, t);
};

var module681 = require('@babel/runtime/helpers/interopRequireDefault')(require('./681')),
  ReactNative = require('react-native'),
  module708 = require('@babel/runtime/helpers/interopRequireDefault')(require('./708')),
  o = function (t) {
    return t instanceof ReactNative.Animated.Value;
  };

function f(n) {
  var module708,
    o = arguments.length > 1 && undefined !== arguments[1] ? arguments[1] : 1;
  module708 = o >= 1 && o <= 24 ? l[o] : o > 24 ? l[24] : l[1];
  return module681
    .default(n)
    .mix(module681.default('white'), 0.01 * module708)
    .hex();
}

var l = {
  1: 5,
  2: 7,
  3: 8,
  4: 9,
  5: 10,
  6: 11,
  7: 11.5,
  8: 12,
  9: 12.5,
  10: 13,
  11: 13.5,
  12: 14,
  13: 14.25,
  14: 14.5,
  15: 14.75,
  16: 15,
  17: 15.12,
  18: 15.24,
  19: 15.36,
  20: 15.48,
  21: 15.6,
  22: 15.72,
  23: 15.84,
  24: 16,
};
