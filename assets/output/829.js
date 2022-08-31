var React = require('@babel/runtime/helpers/interopRequireDefault')(require('react')),
  ReactNative = require('react-native'),
  module830 = require('@babel/runtime/helpers/interopRequireDefault')(require('./830')),
  module861 = require('@babel/runtime/helpers/interopRequireDefault')(require('./861')),
  module932 = require('@babel/runtime/helpers/interopRequireDefault')(require('./932')),
  module1121 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1121')),
  module1136 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1136')),
  module1138 = require('./1138').createBottomTabNavigator();

require('./1050').createStackNavigator();

var s = function () {
  return React.default.createElement(
    ReactNative.View,
    {
      style: {
        flex: 1,
      },
    },
    React.default.createElement(
      module1138.Navigator,
      {
        screenOptions: function (t) {
          var n = t.route;
          return {
            tabBarButton: ['Edit'].includes(n.name)
              ? function () {
                  return null;
                }
              : undefined,
          };
        },
      },
      React.default.createElement(module1138.Screen, {
        name: 'Home',
        component: module1121.default,
        options: {
          tabBarLabel: 'Home',
          tabBarIcon: function () {
            return React.default.createElement(
              ReactNative.Text,
              {
                style: {
                  fontSize: 30,
                },
              },
              '\ud83c\udfe0'
            );
          },
        },
      }),
      React.default.createElement(module1138.Screen, {
        name: 'Edit',
        component: module1136.default,
        options: {
          tabBarLabel: 'Edit',
          tabBarIcon: function () {
            return React.default.createElement(
              ReactNative.Text,
              {
                style: {
                  fontSize: 30,
                },
              },
              '\ud83c\udfe0'
            );
          },
        },
      }),
      React.default.createElement(module1138.Screen, {
        name: 'Mint',
        component: module830.default,
        options: {
          tabBarLabel: 'Mint',
          tabBarIcon: function () {
            return React.default.createElement(
              ReactNative.Text,
              {
                style: {
                  fontSize: 30,
                },
              },
              '\ud83c\udf6c'
            );
          },
        },
      }),
      React.default.createElement(module1138.Screen, {
        name: 'Bake',
        component: module861.default,
        options: {
          tabBarLabel: 'Bake',
          tabBarIcon: function () {
            return React.default.createElement(
              ReactNative.Text,
              {
                style: {
                  fontSize: 30,
                },
              },
              '\ud83e\uddc1'
            );
          },
        },
      }),
      React.default.createElement(module1138.Screen, {
        name: 'Gallery',
        component: module932.default,
        options: {
          tabBarLabel: 'Gallery',
          tabBarIcon: function () {
            return React.default.createElement(
              ReactNative.Text,
              {
                style: {
                  fontSize: 30,
                },
              },
              '\ud83d\uddbc\ufe0f'
            );
          },
        },
      })
    )
  );
};

exports.default = s;
