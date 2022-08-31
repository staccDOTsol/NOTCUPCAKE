var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  React = require('@babel/runtime/helpers/interopRequireDefault')(require('react')),
  ReactNative = require('react-native');

require('./398');

var module544 = require('@babel/runtime/helpers/interopRequireDefault')(require('./544'));

ReactNative.AppRegistry.registerComponent('cupcake-expo', function () {
  return module586;
});

var module586 = function () {
    var module678 = 'dark' === ReactNative.useColorScheme(),
      module678 = module29.default({}, module678 ? require('./678').DarkTheme : require('./678').DefaultTheme, {
        roundness: 2,
        colors: module29.default({}, (module678 ? require('./678').DarkTheme : require('./678').DefaultTheme).colors),
      });
    return React.default.createElement(
      require('./678').Provider,
      {
        theme: module678,
      },
      React.default.createElement(
        require('./552').GlobalProvider,
        null,
        React.default.createElement(
          require('./586').NavigationContainer,
          {
            theme: module678 ? require('./586').DarkTheme : require('./586').DefaultTheme,
          },
          React.default.createElement(module544.default, null)
        )
      )
    );
  },
  f = module586;

exports.default = f;
