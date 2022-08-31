var React = require('@babel/runtime/helpers/interopRequireDefault')(require('react')),
  ReactNative = require('react-native'),
  module1045 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1045'));

function o(t) {
  return ReactNative.StyleSheet.create({
    bakeryCardContainer: {
      display: 'flex',
      flexDirection: 'column',
    },
    bakeryCardContent: {
      display: 'flex',
      flexDirection: 'row',
    },
    infoLabelContainer: {
      display: 'flex',
      flexDirection: 'column',
    },
    labelValueContainer: {
      display: 'flex',
      flexDirection: 'row',
      marginBottom: 8,
      alignItems: 'center',
    },
    infoLabel: {
      color: t ? require('./851').Colors.white : require('./851').Colors.black,
      fontSize: 17,
      fontWeight: 'bold',
      marginRight: 8,
    },
    infoText: {
      color: t ? require('./851').Colors.white : require('./851').Colors.black,
      fontSize: 17,
      marginLeft: 8,
    },
  });
}

var module1133 = function (module1133) {
  var c = module1133.params,
    u = c.isDarkMode,
    s = o(u),
    y = c.bakeryInfo;
  return React.default.createElement(
    ReactNative.View,
    {
      style: s.bakeryCardContainer,
    },
    React.default.createElement(
      ReactNative.View,
      {
        style: s.bakeryCardContent,
      },
      React.default.createElement(
        ReactNative.View,
        {
          style: s.infoLabelContainer,
        },
        React.default.createElement(
          ReactNative.View,
          {
            style: s.labelValueContainer,
          },
          React.default.createElement(
            ReactNative.Text,
            {
              style: s.infoLabel,
            },
            'ID:'
          ),
          React.default.createElement(module1045.default, {
            params: {
              isDarkMode: u,
              text: y.id,
              icon: 'content-copy',
            },
          })
        ),
        React.default.createElement(
          ReactNative.View,
          {
            style: s.labelValueContainer,
          },
          React.default.createElement(
            ReactNative.Text,
            {
              style: s.infoLabel,
            },
            'Address:'
          ),
          React.default.createElement(module1045.default, {
            params: {
              isDarkMode: u,
              text: require('./1133').prettyAddress(y.authority),
              icon: 'content-copy',
            },
          })
        ),
        React.default.createElement(
          ReactNative.View,
          {
            style: s.labelValueContainer,
          },
          React.default.createElement(
            ReactNative.Text,
            {
              style: s.infoLabel,
            },
            'Email:'
          ),
          React.default.createElement(
            ReactNative.Text,
            {
              style: s.infoText,
            },
            y && y.email ? y.email : null
          )
        ),
        React.default.createElement(
          ReactNative.View,
          {
            style: s.labelValueContainer,
          },
          React.default.createElement(
            ReactNative.Text,
            {
              style: s.infoLabel,
            },
            'Balance:'
          ),
          React.default.createElement(
            ReactNative.Text,
            {
              style: s.infoText,
            },
            y && y.balance ? require('./1133').asSol(y.balance) + ' SOL' : null
          )
        )
      )
    )
  );
};

exports.default = module1133;
