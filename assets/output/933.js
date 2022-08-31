var module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  module76 = require('@babel/runtime/helpers/interopRequireDefault')(require('./76')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var u = f(n);
    if (u && u.has(t)) return u.get(t);
    var o = {},
      l = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in t)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(t, c)) {
        var s = l ? Object.getOwnPropertyDescriptor(t, c) : null;
        if (s && (s.get || s.set)) Object.defineProperty(o, c, s);
        else o[c] = t[c];
      }

    o.default = t;
    if (u) u.set(t, o);
    return o;
  })(require('react')),
  ReactNative = require('react-native'),
  module934 = require('@babel/runtime/helpers/interopRequireDefault')(require('./934'));

function f(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    u = new WeakMap();
  return (f = function (t) {
    return t ? u : n;
  })(t);
}

var module553 = function (t) {
  var React;
  return module76.default.async(
    function (o) {
      for (;;)
        switch ((o.prev = o.next)) {
          case 0:
            o.next = 2;
            return module76.default.awrap(require('./553').listSprinkles(t));

          case 2:
            React = o.sent;
            return o.abrupt('return', React);

          case 4:
          case 'end':
            return o.stop();
        }
    },
    null,
    null,
    null,
    Promise
  );
};

var module678 = function (n) {
  var f = n.navigation,
    module552 = require('./552').useGlobals().company,
    p = React.useState(),
    v = module23.default(p, 2),
    y = v[0],
    b = v[1];

  React.useEffect(
    function () {
      if (module552)
        module553(module552).then(function (t) {
          console.log('got sprinkles on first load', t);
          b(t);
        });
    },
    [module552]
  );
  return React.default.createElement(
    React.default.Fragment,
    null,
    React.default.createElement(
      require('./678').Button,
      {
        onPress: function () {
          return f.navigate('BakeryTokens');
        },
      },
      'View Tokens'
    ),
    (!y &&
      React.default.createElement(require('./678').ActivityIndicator, {
        size: 'large',
      })) ||
      React.default.createElement(ReactNative.FlatList, {
        horizontal: false,
        numColumns: 1,
        data: y.map(function (t) {
          return {
            uid: t,
            bakery: module552,
          };
        }),
        renderItem: function (t) {
          var n = t.item;
          return React.default.createElement(module934.default, {
            navigation: f,
            params: {
              uid: n.uid,
              bakery: n.bakery,
            },
          });
        },
        keyExtractor: function (t) {
          return t.uid;
        },
      })
  );
};

exports.default = module678;
