var React = require('@babel/runtime/helpers/interopRequireDefault')(require('react')),
  ReactNative = require('react-native'),
  module1122 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1122')),
  module1132 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1132')),
  module1134 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1134')),
  module699 = require('@babel/runtime/helpers/interopRequireDefault')(require('./699'));

function s(t) {
  return ReactNative.StyleSheet.create({
    homePageContainer: {
      margin: 24,
      flex: 1,
    },
    bakeryCardHeader: {
      display: 'flex',
      flexDirection: 'row',
      justifyContent: 'center',
      alignItems: 'center',
    },
    bakeryCardHeaderText: {
      color: t ? require('./851').Colors.white : require('./851').Colors.black,
      fontSize: 25,
      fontWeight: 'bold',
      marginRight: 25,
    },
    bakeryPfp: {
      width: 70,
      height: 70,
      margin: 5,
      borderRadius: 50,
    },
    fab: {
      position: 'absolute',
      margin: 5,
      right: 0,
      bottom: 0,
    },
  });
}

var module851 = function (module851) {
  var p = module851.navigation,
    module552 = require('./552').useGlobals().bakeryInfo,
    y = 'dark' === ReactNative.useColorScheme(),
    k = s(y);

  return React.default.createElement(
    ReactNative.SafeAreaView,
    {
      style: k.homePageContainer,
    },
    React.default.createElement(
      ReactNative.View,
      {
        style: k.bakeryCardHeader,
      },
      React.default.createElement(ReactNative.Image, {
        style: k.bakeryPfp,
        source: {
          uri: module552.pfp ? module552.pfp : 'https://www.personality-insights.com/wp-content/uploads/2017/12/default-profile-pic-e1513291410505.jpg',
        },
      }),
      React.default.createElement(
        ReactNative.Text,
        {
          style: k.bakeryCardHeaderText,
        },
        module552.name.toUpperCase() + ' Bakery:'
      ),
      React.default.createElement(module699.default.Button, {
        name: 'pencil',
        size: 25,
        color: y ? require('./851').Colors.white : require('./851').Colors.black,
        backgroundColor: y ? require('./851').Colors.black : '#f2f2f2',
        onPress: function () {
          return p.navigate('Edit');
        },
      })
    ),
    module552 &&
      React.default.createElement(module1132.default, {
        params: {
          bakeryInfo: module552,
          isDarkMode: y,
        },
      }),
    React.default.createElement(module1122.default, {
      navigation: p,
    }),
    React.default.createElement(module1134.default, {
      navigation: p,
      params: {
        isDarkMode: y,
      },
    })
  );
};

exports.default = module851;
