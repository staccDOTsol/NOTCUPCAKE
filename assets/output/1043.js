var module76 = require('@babel/runtime/helpers/interopRequireDefault')(require('./76')),
  module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var l = u(n);
    if (l && l.has(t)) return l.get(t);
    var o = {},
      f = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in t)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(t, c)) {
        var s = f ? Object.getOwnPropertyDescriptor(t, c) : null;
        if (s && (s.get || s.set)) Object.defineProperty(o, c, s);
        else o[c] = t[c];
      }

    o.default = t;
    if (l) l.set(t, o);
    return o;
  })(require('react')),
  ReactNative = require('react-native');

function u(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    l = new WeakMap();
  return (u = function (t) {
    return t ? l : n;
  })(t);
}

var module851 = function (t) {
    var n = t.children,
      u = t.title,
      module851 = 'dark' === ReactNative.useColorScheme();
    return React.default.createElement(
      ReactNative.View,
      {
        style: s.sectionContainer,
      },
      React.default.createElement(
        ReactNative.Text,
        {
          style: [
            s.sectionTitle,
            {
              color: module851 ? require('./851').Colors.white : require('./851').Colors.black,
            },
          ],
        },
        u
      ),
      React.default.createElement(
        ReactNative.Text,
        {
          style: [
            s.sectionDescription,
            {
              color: module851 ? require('./851').Colors.light : require('./851').Colors.dark,
            },
          ],
        },
        n
      )
    );
  },
  c = {
    0: 'Edition',
    1: 'Unique',
    2: 'Candy',
    3: 'Refillable',
    4: 'Fungible',
    5: 'Hot Potato',
  };

var s = ReactNative.StyleSheet.create({
    sectionContainer: {
      marginTop: 32,
    },
    sectionTitle: {
      fontSize: 24,
      fontWeight: '600',
    },
    sectionDescription: {
      marginTop: 8,
      fontSize: 18,
      fontWeight: '400',
    },
    highlight: {
      fontWeight: '700',
    },
    fab: {
      position: 'absolute',
      margin: 32,
      right: 0,
      bottom: 0,
    },
  }),
  module678 = function (u) {
    require('./552').useGlobals().bakeryInfo;

    var module552 = u.navigation,
      k = u.route,
      y = React.useState(),
      b = module23.default(y, 2),
      h = b[0],
      T = b[1],
      v = React.useState(false),
      C = module23.default(v, 2),
      x = React.useState(false),
      E = module23.default(x, 2),
      S = E[0],
      M = React.useState(1),
      P = module23.default(M, 2),
      w = P[0],
      O = React.useState(),
      j = module23.default(O, 2),
      I = j[0],
      V = j[1],
      W = React.useState('1'),
      _ = module23.default(W, 2),
      D = _[0],
      U = _[1],
      B = React.useState('1'),
      F = module23.default(B, 2),
      L = F[0],
      z = F[1],
      G = React.useState(),
      N = module23.default(G, 2),
      R = N[0],
      q = N[1],
      H = k.params,
      A = H.bakeryName,
      J = H.sprinkleUid;

    React.useEffect(
      function () {
        var n;
        if (!(A && J))
          T({
            created: false,
            locked: false,
          });
        module76.default.async(
          function (l) {
            for (;;)
              switch ((l.prev = l.next)) {
                case 0:
                  l.prev = 0;
                  l.next = 3;
                  return module76.default.awrap(require('./553').readSprinkle(A, J));

                case 3:
                  (n = l.sent).created = true;
                  console.log(n);
                  T(n);
                  l.next = 12;
                  break;

                case 9:
                  l.prev = 9;
                  l.t0 = l.catch(0);
                  T({
                    created: false,
                    locked: false,
                  });

                case 12:
                case 'end':
                  return l.stop();
              }
          },
          null,
          null,
          [[0, 9]],
          Promise
        );
      },
      [A, J]
    );
    return React.default.createElement(
      ReactNative.View,
      {
        style: {
          flex: 1,
        },
      },
      React.default.createElement(
        module851,
        {
          title: 'Sprinkle #' + J,
        },
        !S &&
          React.default.createElement(
            ReactNative.Text,
            null,
            'Type: ',
            (h ? c[h.type] : 'Loading...') + '\n',
            'Num Claims: ',
            (h ? h.numClaims : 'Loading...') + '\n',
            'Per User: ',
            (h ? h.perUser : 'Loading...') + '\n',
            React.default.createElement(
              ReactNative.Text,
              {
                onPress: function () {
                  return module552.navigate('Token', {
                    tokenMint: h.tokenMint,
                  });
                },
              },
              'Token Mint: ',
              h && (h.tokenMint ? h.tokenMint.slice(0, 4) + '...' + h.tokenMint.slice(-4) : null) + '\n'
            )
          ),
        S &&
          React.default.createElement(
            React.default.Fragment,
            null,
            2 !== w &&
              React.default.createElement(require('./678').TextInput, {
                label: 'Token Mint',
                defaultValue: I,
                onChangeText: V,
              }),
            2 === w &&
              React.default.createElement(require('./678').TextInput, {
                label: 'Candy Machine ID',
                defaultValue: R,
                onChangeText: q,
              }),
            2 !== w &&
              React.default.createElement(
                React.default.Fragment,
                null,
                React.default.createElement(require('./678').TextInput, {
                  label: 'Total # of Claims',
                  disabled: 1 === w,
                  defaultValue: D,
                  onChangeText: U,
                }),
                React.default.createElement(require('./678').TextInput, {
                  label: '# of Claims per User',
                  disabled: 1 === w,
                  defaultValue: L,
                  onChangeText: z,
                })
              )
          )
      ),
      React.default.createElement(
        require('./678').Button,
        {
          mode: 'contained',
          style: s.backButton,
          onPress: function () {
            return module552.navigate('BakerySprinkles');
          },
        },
        'Return to Gallery'
      )
    );
  };

exports.default = module678;
