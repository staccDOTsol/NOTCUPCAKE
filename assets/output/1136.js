var React = require('@babel/runtime/helpers/interopRequireDefault')(require('react')),
  ReactNative = require('react-native'),
  module1137 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1137'));

var o = function (module678) {
  var u = module678.navigation,
    module552 = require('./552').useGlobals(),
    c = 'dark' === ReactNative.useColorScheme(),
    s = ReactNative.StyleSheet.create({
      editBakeryScreenContainer: {
        margin: 24,
        flex: 1,
      },
    });

  return React.default.createElement(
    ReactNative.SafeAreaView,
    {
      style: s.editBakeryScreenContainer,
    },
    React.default.createElement(module1137.default, {
      params: {
        isDarkMode: c,
      },
    }),
    React.default.createElement(
      require('./678').Button,
      {
        onPress: function () {
          return u.goBack(null);
        },
      },
      'Cancel'
    )
  );
};

exports.default = o;
