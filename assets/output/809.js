var module256 = require('@babel/runtime/helpers/interopRequireDefault')(require('./256')),
  React = require('@babel/runtime/helpers/interopRequireDefault')(require('react')),
  module681 = require('@babel/runtime/helpers/interopRequireDefault')(require('./681')),
  ReactNative = require('react-native'),
  module810 = React.default.createContext({
    textStyle: {
      fontFamily: '',
      color: '',
    },
    topPosition: null,
    side: require('./810').AdornmentSide.Left,
  });

exports.AffixAdornment = function (t) {
  var o = t.affix,
    l = t.side,
    f = t.textStyle,
    p = t.topPosition,
    x = t.onLayout,
    s = t.visible,
    y = t.paddingHorizontal,
    c = t.maxFontSizeMultiplier;
  return React.default.createElement(
    module810.Provider,
    {
      value: {
        side: l,
        textStyle: f,
        topPosition: p,
        onLayout: x,
        visible: s,
        paddingHorizontal: y,
        maxFontSizeMultiplier: c,
      },
    },
    o
  );
};

var f = function (f) {
  var x = f.text,
    s = f.textStyle,
    y = f.theme,
    c = React.default.useContext(module810),
    v = c.textStyle,
    S = c.onLayout,
    A = c.topPosition,
    b = c.side,
    z = c.visible,
    P = c.paddingHorizontal,
    h = c.maxFontSizeMultiplier,
    F = module681
      .default(y.colors.text)
      .alpha(y.dark ? 0.7 : 0.54)
      .rgb()
      .string(),
    L = 'number' == typeof P ? P : 12,
    M = module256.default(
      {
        top: A,
      },
      b,
      L
    );
  return React.default.createElement(
    ReactNative.Animated.View,
    {
      style: [
        p.container,
        M,
        {
          opacity:
            (null == z
              ? undefined
              : z.interpolate({
                  inputRange: [0, 1],
                  outputRange: [1, 0],
                })) || 1,
        },
      ],
      onLayout: S,
    },
    React.default.createElement(
      ReactNative.Text,
      {
        maxFontSizeMultiplier: h,
        style: [
          {
            color: F,
          },
          v,
          s,
        ],
      },
      x
    )
  );
};

exports.TextInputAffix = f;
f.displayName = 'TextInput.Affix';

var p = ReactNative.StyleSheet.create({
    container: {
      position: 'absolute',
      justifyContent: 'center',
      alignItems: 'center',
    },
  }),
  module679 = require('./679').withTheme(f);

exports.default = module679;
