exports.default = function (l) {
  return ReactNative.Platform.select(module29.default({}, o, l));
};

var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  ReactNative = require('react-native'),
  o = {
    web: {
      regular: {
        fontFamily: 'Roboto, "Helvetica Neue", Helvetica, Arial, sans-serif',
        fontWeight: '400',
      },
      medium: {
        fontFamily: 'Roboto, "Helvetica Neue", Helvetica, Arial, sans-serif',
        fontWeight: '500',
      },
      light: {
        fontFamily: 'Roboto, "Helvetica Neue", Helvetica, Arial, sans-serif',
        fontWeight: '300',
      },
      thin: {
        fontFamily: 'Roboto, "Helvetica Neue", Helvetica, Arial, sans-serif',
        fontWeight: '100',
      },
    },
    ios: {
      regular: {
        fontFamily: 'System',
        fontWeight: '400',
      },
      medium: {
        fontFamily: 'System',
        fontWeight: '500',
      },
      light: {
        fontFamily: 'System',
        fontWeight: '300',
      },
      thin: {
        fontFamily: 'System',
        fontWeight: '100',
      },
    },
    default: {
      regular: {
        fontFamily: 'sans-serif',
        fontWeight: 'normal',
      },
      medium: {
        fontFamily: 'sans-serif-medium',
        fontWeight: 'normal',
      },
      light: {
        fontFamily: 'sans-serif-light',
        fontWeight: 'normal',
      },
      thin: {
        fontFamily: 'sans-serif-thin',
        fontWeight: 'normal',
      },
    },
  };
