var React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = l(n);
    if (o && o.has(t)) return o.get(t);
    var u = {},
      c = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var f in t)
      if ('default' !== f && Object.prototype.hasOwnProperty.call(t, f)) {
        var s = c ? Object.getOwnPropertyDescriptor(t, f) : null;
        if (s && (s.get || s.set)) Object.defineProperty(u, f, s);
        else u[f] = t[f];
      }

    u.default = t;
    if (o) o.set(t, u);
    return u;
  })(require('react')),
  ReactNative = require('react-native'),
  module1045 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1045'));

function l(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (l = function (t) {
    return t ? o : n;
  })(t);
}

function u(t) {
  return ReactNative.StyleSheet.create({
    tokenScreen: {
      display: 'flex',
      flexDirection: 'column',
      justifyContent: 'center',
      alignItems: 'center',
      marginTop: 25,
    },
    tokenImage: {
      width: 250,
      height: 250,
    },
    tokenNameText: {
      color: t ? require('./851').Colors.white : require('./851').Colors.black,
      fontSize: 30,
    },
    tokenInfoText: {
      color: t ? require('./851').Colors.white : require('./851').Colors.black,
      fontSize: 15,
    },
    backButton: {},
  });
}

var c = function (l) {
  var module678,
    f = l.navigation,
    s = l.route.params,
    p = s.tokenMint,
    y = s.name,
    k = s.symbol,
    b = s.image,
    v = 'dark' === ReactNative.useColorScheme(),
    h = u(v);
  React.useEffect(function () {});
  return React.default.createElement(
    ReactNative.View,
    {
      style: h.tokenScreen,
    },
    React.default.createElement(ReactNative.Image, {
      source: {
        uri: b,
      },
      style: h.tokenImage,
    }),
    React.default.createElement(
      ReactNative.Text,
      {
        style: h.tokenNameText,
      },
      y + ' ' + (k ? '(' + k + ')' : null)
    ),
    React.default.createElement(module1045.default, {
      params: {
        isDarkMode: v,
        text: 'Mint: ' + ((module678 = p), module678.slice(0, 4) + '...' + module678.slice(-4)),
        icon: 'content-copy',
      },
    }),
    React.default.createElement(
      require('./678').Button,
      {
        mode: 'contained',
        style: h.backButton,
        onPress: function () {
          return f.navigate('BakeryTokens');
        },
      },
      'Return to Gallery'
    )
  );
};

exports.default = c;
