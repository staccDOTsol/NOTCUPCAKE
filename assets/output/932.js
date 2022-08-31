var React = require('@babel/runtime/helpers/interopRequireDefault')(require('react')),
  module933 = require('@babel/runtime/helpers/interopRequireDefault')(require('./933')),
  module935 = require('@babel/runtime/helpers/interopRequireDefault')(require('./935')),
  module1043 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1043')),
  module1044 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1044')),
  module1050 = require('./1050').createStackNavigator();

var f = function () {
  return React.default.createElement(
    module1050.Navigator,
    {
      initialRouteName: 'BakerySprinkles',
      screenOptions: {
        headerShown: false,
      },
    },
    React.default.createElement(module1050.Screen, {
      name: 'BakerySprinkles',
      component: module933.default,
    }),
    React.default.createElement(module1050.Screen, {
      name: 'BakeryTokens',
      component: module935.default,
    }),
    React.default.createElement(module1050.Screen, {
      name: 'Sprinkle',
      component: module1043.default,
    }),
    React.default.createElement(module1050.Screen, {
      name: 'Token',
      component: module1044.default,
    })
  );
};

exports.default = f;
