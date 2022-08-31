var module76 = require('@babel/runtime/helpers/interopRequireDefault')(require('./76')),
  module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = u(n);
    if (o && o.has(t)) return o.get(t);
    var l = {},
      s = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in t)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(t, c)) {
        var f = s ? Object.getOwnPropertyDescriptor(t, c) : null;
        if (f && (f.get || f.set)) Object.defineProperty(l, c, f);
        else l[c] = t[c];
      }

    l.default = t;
    if (o) o.set(t, l);
    return l;
  })(require('react')),
  ReactNative = require('react-native');

function u(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (u = function (t) {
    return t ? o : n;
  })(t);
}

var s = {
    0: 'Edition',
    1: 'Unique',
    2: 'Candy',
    3: 'Refillable',
    4: 'Fungible',
    5: 'Hot Potato',
  },
  c = ReactNative.StyleSheet.create({
    sprinkleCard: {
      display: 'flex',
      flexDirection: 'column',
      justifyContent: 'center',
      alignItems: 'center',
      width: '95%',
      margin: 10,
      height: 125,
      backgroundColor: 'skyblue',
      borderRadius: 10,
    },
    sprinkleCardImage: {
      height: 125,
      width: 150,
      borderRadius: 10,
      position: 'absolute',
      left: 0,
    },
    sprinkleCardText: {
      fontSize: 17,
      fontWeight: 'bold',
      position: 'absolute',
      bottom: 0,
      left: 0,
      marginVertical: 5,
      justifyContent: 'center',
      alignItems: 'center',
      borderRadius: 10,
      width: 150,
    },
  }),
  module678 = function (u) {
    var module553 = u.navigation,
      p = u.params,
      y = React.useState(),
      b = module23.default(y, 2),
      k = b[0],
      h = b[1];
    React.useEffect(function () {
      var n;
      module76.default.async(
        function (o) {
          for (;;)
            switch ((o.prev = o.next)) {
              case 0:
                o.prev = 0;
                o.next = 3;
                return module76.default.awrap(require('./553').readSprinkle(p.bakery, p.uid));

              case 3:
                (n = o.sent).created = true;
                console.log(n);
                h(n);
                o.next = 12;
                break;

              case 9:
                o.prev = 9;
                o.t0 = o.catch(0);
                h({
                  created: false,
                  locked: false,
                });

              case 12:
              case 'end':
                return o.stop();
            }
        },
        null,
        null,
        [[0, 9]],
        Promise
      );
    }, []);
    return React.default.createElement(
      require('./398').TouchableOpacity,
      {
        style: c.sprinkleCard,
        onPress: function () {
          module553.navigate('Sprinkle', {
            sprinkleUid: p.uid,
            bakeryName: p.bakery,
          });
        },
      },
      React.default.createElement(ReactNative.Image, {
        style: c.sprinkleCardImage,
        source: {
          uri: 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bd/Question-mark-grey.jpg/768px-Question-mark-grey.jpg',
        },
      }),
      React.default.createElement(
        require('./678').Badge,
        {
          style: c.sprinkleCardText,
          size: 30,
        },
        k && s[k.type]
      ),
      React.default.createElement(
        ReactNative.Text,
        {
          style: {
            top: 0,
            right: 0,
            position: 'absolute',
            margin: 7,
            fontSize: 20,
          },
        },
        p.uid
      ),
      React.default.createElement(
        require('./678').Badge,
        {
          size: 35,
          style: {
            top: 50,
            right: 0,
            position: 'absolute',
            margin: 7,
          },
        },
        k && k.locked ? 'Locked \ud83d\udd10' : 'Unlocked \ud83d\udd13'
      )
    );
  };

exports.default = module678;
