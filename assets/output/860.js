var ReactNative = require('react-native'),
  React = require('@babel/runtime/helpers/interopRequireDefault')(require('react')),
  o = ReactNative.StyleSheet.create({
    highlight: {
      fontWeight: '700',
    },
  }),
  u = ReactNative.Platform.select({
    ios: function () {
      return React.default.createElement(
        ReactNative.Text,
        null,
        'Press ',
        React.default.createElement(
          ReactNative.Text,
          {
            style: o.highlight,
          },
          'Cmd + R'
        ),
        " in the simulator to reload your app's code."
      );
    },
    default: function () {
      return React.default.createElement(
        ReactNative.Text,
        null,
        'Double tap ',
        React.default.createElement(
          ReactNative.Text,
          {
            style: o.highlight,
          },
          'R'
        ),
        " on your keyboard to reload your app's code."
      );
    },
  });

exports.default = u;
