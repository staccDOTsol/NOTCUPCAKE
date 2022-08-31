var ReactNative = require('react-native'),
  React = require('@babel/runtime/helpers/interopRequireDefault')(require('react')),
  u = ReactNative.StyleSheet.create({
    highlight: {
      fontWeight: '700',
    },
  }),
  n = ReactNative.Platform.select({
    ios: function () {
      return React.default.createElement(
        ReactNative.Text,
        null,
        'Press ',
        React.default.createElement(
          ReactNative.Text,
          {
            style: u.highlight,
          },
          'Cmd + D'
        ),
        ' in the simulator or',
        ' ',
        React.default.createElement(
          ReactNative.Text,
          {
            style: u.highlight,
          },
          'Shake'
        ),
        ' your device to open the React Native debug menu.'
      );
    },
    default: function () {
      return React.default.createElement(
        ReactNative.Text,
        null,
        'Press ',
        React.default.createElement(
          ReactNative.Text,
          {
            style: u.highlight,
          },
          'Cmd or Ctrl + M'
        ),
        ' or',
        ' ',
        React.default.createElement(
          ReactNative.Text,
          {
            style: u.highlight,
          },
          'Shake'
        ),
        ' your device to open the React Native debug menu.'
      );
    },
  });

exports.default = n;
