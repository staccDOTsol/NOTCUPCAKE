var React = require('@babel/runtime/helpers/interopRequireDefault')(require('react')),
  module545 = require('@babel/runtime/helpers/interopRequireDefault')(require('./545')),
  module823 = require('@babel/runtime/helpers/interopRequireDefault')(require('./823')),
  module829 = require('@babel/runtime/helpers/interopRequireDefault')(require('./829')),
  module1050 = require('./1050').createStackNavigator();

var u = function () {
  return React.default.createElement(
    module1050.Navigator,
    {
      initialRouteName: 'Login',
      screenOptions: {
        headerShown: false,
      },
    },
    React.default.createElement(module1050.Screen, {
      name: 'Login',
      component: module545.default,
    }),
    React.default.createElement(module1050.Screen, {
      name: 'SignUp',
      component: module823.default,
    }),
    React.default.createElement(module1050.Screen, {
      name: 'Bakery',
      component: module829.default,
    })
  );
};

exports.default = u;
