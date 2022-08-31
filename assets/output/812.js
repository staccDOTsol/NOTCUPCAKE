var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  React = require('@babel/runtime/helpers/interopRequireDefault')(require('react')),
  ReactNative = require('react-native'),
  module735 = require('@babel/runtime/helpers/interopRequireDefault')(require('./735')),
  u = ReactNative.StyleSheet.create({
    labelContainer: {
      zIndex: 3,
    },
  }),
  p = function (p) {
    var s = p.parentState,
      f = p.labelBackground,
      b = p.labelProps,
      c = b.label,
      y = b.error,
      S = b.onLayoutAnimatedText,
      v = b.hasActiveOutline,
      R = b.activeColor,
      h = b.placeholderStyle,
      O = b.baseLabelTranslateX,
      z = b.baseLabelTranslateY,
      L = b.font,
      x = b.fontSize,
      C = b.fontWeight,
      F = b.placeholderOpacity,
      M = b.wiggleOffsetX,
      P = b.labelScale,
      X = b.topPosition,
      E = b.paddingOffset,
      T = b.placeholderColor,
      _ = b.errorColor,
      A = b.labelTranslationXOffset,
      w = b.maxFontSizeMultiplier,
      W = {
        transform: [
          {
            translateX: s.labeled.interpolate({
              inputRange: [0, 1],
              outputRange: [O, A || 0],
            }),
          },
        ],
      },
      Y = module29.default({}, L, {
        fontSize: x,
        fontWeight: C,
        transform: [
          {
            translateX: s.error.interpolate({
              inputRange: [0, 0.5, 1],
              outputRange: [0, s.value && y ? M : 0, 0],
            }),
          },
          {
            translateY: s.labeled.interpolate({
              inputRange: [0, 1],
              outputRange: [z, 0],
            }),
          },
          {
            scale: s.labeled.interpolate({
              inputRange: [0, 1],
              outputRange: [P, 1],
            }),
          },
        ],
      });
    return c
      ? React.default.createElement(
          ReactNative.Animated.View,
          {
            pointerEvents: 'none',
            style: [
              ReactNative.StyleSheet.absoluteFill,
              u.labelContainer,
              {
                opacity: s.value || s.focused ? (s.labelLayout.measured ? 1 : 0) : 1,
              },
              W,
            ],
          },
          null == f
            ? undefined
            : f({
                parentState: s,
                labelStyle: Y,
                labelProps: p.labelProps,
                maxFontSizeMultiplier: w,
              }),
          React.default.createElement(
            module735.default,
            {
              onLayout: S,
              style: [
                h,
                {
                  top: X,
                },
                Y,
                E || {},
                {
                  color: R,
                  opacity: s.labeled.interpolate({
                    inputRange: [0, 1],
                    outputRange: [v ? 1 : 0, 0],
                  }),
                },
              ],
              numberOfLines: 1,
              maxFontSizeMultiplier: w,
            },
            c
          ),
          React.default.createElement(
            module735.default,
            {
              style: [
                h,
                {
                  top: X,
                },
                Y,
                E,
                {
                  color: y && _ ? _ : T,
                  opacity: F,
                },
              ],
              numberOfLines: 1,
              maxFontSizeMultiplier: w,
            },
            c
          )
        )
      : null;
  };

exports.default = p;
