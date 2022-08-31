var ReactNative = require('react-native'),
  React = require('@babel/runtime/helpers/interopRequireDefault')(require('react')),
  module852 = require('@babel/runtime/helpers/interopRequireDefault')(require('./852')),
  module854 = require('@babel/runtime/helpers/interopRequireDefault')(require('./854')),
  c = ReactNative.StyleSheet.create({
    background: {
      paddingBottom: 40,
      paddingTop: 96,
      paddingHorizontal: 32,
    },
    logo: {
      opacity: 0.2,
      overflow: 'visible',
      resizeMode: 'cover',
      marginLeft: -128,
      marginBottom: -192,
    },
    text: {
      fontSize: 40,
      fontWeight: '700',
      textAlign: 'center',
    },
  }),
  u = function () {
    var module855 = 'dark' === ReactNative.useColorScheme();
    return React.default.createElement(
      ReactNative.ImageBackground,
      {
        accessibilityRole: 'image',
        testID: 'new-app-screen-header',
        source: require('./855'),
        style: [
          c.background,
          {
            backgroundColor: module855 ? module852.default.darker : module852.default.lighter,
          },
        ],
        imageStyle: c.logo,
      },
      React.default.createElement(module854.default, null),
      React.default.createElement(
        ReactNative.Text,
        {
          style: [
            c.text,
            {
              color: module855 ? module852.default.white : module852.default.black,
            },
          ],
        },
        'Welcome to',
        '\n',
        'React Native'
      )
    );
  };

exports.default = u;
