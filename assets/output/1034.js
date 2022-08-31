var React = require('@babel/runtime/helpers/interopRequireDefault')(require('react')),
  ReactNative = require('react-native'),
  o = ReactNative.StyleSheet.create({
    tokenCard: {
      display: 'flex',
      flexDirection: 'column',
      justifyContent: 'center',
      alignItems: 'center',
      margin: 10,
      width: 175,
      height: 175,
    },
    tokenCardImage: {
      height: 175,
      width: 175,
      borderRadius: 15,
    },
    tokenCardText: {
      fontSize: 17,
      fontWeight: 'bold',
      position: 'absolute',
      bottom: 0,
      left: 0,
      marginVertical: 5,
      justifyContent: 'center',
      alignItems: 'center',
      borderRadius: 10,
    },
  }),
  module678 = function (module398) {
    var u = module398.navigation,
      s = module398.params;
    return React.default.createElement(
      require('./398').TouchableOpacity,
      {
        style: o.tokenCard,
        onPress: function () {
          u.navigate('Token', {
            tokenMint: s.mint.toString(),
            name: s.uriData.name,
            symbol: s.uriData.symbol,
            image: s.uriData.image,
          });
        },
      },
      React.default.createElement(ReactNative.Image, {
        source: {
          uri: s.uriData.image,
        },
        style: o.tokenCardImage,
      }),
      React.default.createElement(
        require('./678').Badge,
        {
          style: o.tokenCardText,
          size: 30,
        },
        s.uriData.name
      )
    );
  };

exports.default = module678;
