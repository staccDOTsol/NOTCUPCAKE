var React = require('@babel/runtime/helpers/interopRequireDefault')(require('react')),
  ReactNative = require('react-native'),
  module1046 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1046')),
  module699 = require('@babel/runtime/helpers/interopRequireDefault')(require('./699'));

function c(t) {
  return ReactNative.StyleSheet.create({
    copyableTextContainer: {
      display: 'flex',
      flexDirection: 'row',
    },
    copyableText: {
      color: t ? require('./851').Colors.white : require('./851').Colors.black,
      fontSize: 17,
      marginTop: 8,
    },
  });
}

var module851 = function (module398) {
  var f = module398.params,
    s = f.isDarkMode,
    b = c(s),
    y = f.text,
    p = f.icon;
  return React.default.createElement(
    require('./398').TouchableOpacity,
    {
      style: b.copyableTextContainer,
      onPress: function () {
        return module1046.default.setString(y);
      },
    },
    React.default.createElement(
      ReactNative.Text,
      {
        style: b.copyableText,
      },
      y
    ),
    React.default.createElement(module699.default.Button, {
      name: p,
      size: 25,
      color: s ? require('./851').Colors.white : require('./851').Colors.black,
      backgroundColor: s ? require('./851').Colors.black : '#f2f2f2',
    })
  );
};

exports.default = module851;
