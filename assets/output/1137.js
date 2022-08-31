var module76 = require('@babel/runtime/helpers/interopRequireDefault')(require('./76')),
  module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var u = f(n);
    if (u && u.has(t)) return u.get(t);
    var l = {},
      o = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in t)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(t, c)) {
        var s = o ? Object.getOwnPropertyDescriptor(t, c) : null;
        if (s && (s.get || s.set)) Object.defineProperty(l, c, s);
        else l[c] = t[c];
      }

    l.default = t;
    if (u) u.set(t, l);
    return l;
  })(require('react')),
  ReactNative = require('react-native'),
  module831 = require('@babel/runtime/helpers/interopRequireDefault')(require('./831'));

function f(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    u = new WeakMap();
  return (f = function (t) {
    return t ? u : n;
  })(t);
}

function c(t) {
  return ReactNative.StyleSheet.create({
    editBakeryFormContainer: {},
    bakeryPfp: {
      width: 120,
      height: 120,
      margin: 5,
      borderRadius: 60,
    },
    bakeryPfpContainer: {
      display: 'flex',
      flexDirection: 'column',
      alignItems: 'center',
    },
    stepHeader: {
      fontSize: 20,
      color: t ? require('./851').Colors.white : require('./851').Colors.black,
    },
  });
}

var module678 = function (f) {
  var module398 = c(f.params.isDarkMode),
    module552 = require('./552').useGlobals(),
    y = module552.bakeryInfo,
    b = module552.password,
    C = module552.setBakeryInfo,
    h = React.useState(y.name),
    x = module23.default(h, 2),
    k = x[0],
    w = x[1],
    P = React.useState(y.displayName),
    T = module23.default(P, 2),
    E = T[0],
    v = T[1],
    I = React.useState(y.email),
    S = module23.default(I, 2),
    O = S[0],
    j = S[1],
    z = React.useState(),
    V = module23.default(z, 2),
    B = V[0],
    M = V[1],
    _ = React.useState(),
    D = module23.default(_, 2),
    N = D[0],
    F = D[1],
    W = React.useState(y.pfp),
    A = module23.default(W, 2),
    H = A[0],
    G = A[1],
    R = React.useState(true),
    U = module23.default(R, 2),
    q = U[0],
    J = U[1],
    K = React.useState(true),
    L = module23.default(K, 2),
    Q = L[0],
    X = L[1],
    Y = React.useState(false),
    Z = module23.default(Y, 2),
    $ = Z[0],
    ee = Z[1];

  function te(n, u, l, o, f, c) {
    var module553;
    return module76.default.async(
      function (p) {
        for (;;)
          switch ((p.prev = p.next)) {
            case 0:
              p.next = 2;
              return module76.default.awrap(require('./553').updateBakery(n, u, l, o, f, c ? c.data : null));

            case 2:
              module553 = p.sent.bakeryInfo;
              C({
                displayName: module553.displayName,
                name: module553.name,
                id: module553.id,
                email: module553.email,
                pfp: module553.pfp,
                password: u,
                authority: module553.fundAccountPubkey,
                balance: module553.balance,
              });

            case 4:
            case 'end':
              return p.stop();
          }
      },
      null,
      null,
      null,
      Promise
    );
  }

  return React.default.createElement(
    ReactNative.View,
    {
      style: module398.editBakeryFormContainer,
    },
    React.default.createElement(
      ReactNative.Text,
      {
        style: module398.stepHeader,
      },
      'Edit your bakery info, or click on your PFP to change it.'
    ),
    React.default.createElement(
      ReactNative.View,
      {
        style: module398.bakeryPfpContainer,
      },
      React.default.createElement(
        require('./398').TouchableOpacity,
        {
          onPress: function () {
            return module831.default
              .openPicker({
                mediaType: 'photo',
                cropping: false,
                includeBase64: true,
              })
              .then(function (t) {
                G(t);
              });
          },
        },
        React.default.createElement(ReactNative.Image, {
          style: module398.bakeryPfp,
          source: {
            uri: H ? H.path : y.pfp ? y.pfp : 'https://www.personality-insights.com/wp-content/uploads/2017/12/default-profile-pic-e1513291410505.jpg',
          },
        })
      )
    ),
    React.default.createElement(require('./678').TextInput, {
      label: 'Username',
      defaultValue: k,
      onChangeText: w,
      autoCapitalize: 'none',
      autoCorrect: false,
    }),
    React.default.createElement(require('./678').TextInput, {
      label: 'Display Name (Optional)',
      defaultValue: E,
      onChangeText: v,
      autoCapitalize: 'none',
      autoCorrect: false,
    }),
    React.default.createElement(require('./678').TextInput, {
      label: 'Email (Optional)',
      defaultValue: O,
      onChangeText: j,
      autoCapitalize: 'none',
      autoCorrect: false,
    }),
    React.default.createElement(require('./678').TextInput, {
      label: 'Current Password',
      textContentType: 'oneTimeCode',
      defaultValue: N,
      onChangeText: F,
      autoCapitalize: 'none',
      autoCorrect: false,
      secureTextEntry: q,
      right: React.default.createElement(require('./678').TextInput.Icon, {
        name: q ? 'eye-off' : 'eye',
        onPress: function () {
          return J(!q);
        },
      }),
    }),
    React.default.createElement(require('./678').TextInput, {
      label: 'New Password',
      textContentType: 'oneTimeCode',
      defaultValue: B,
      onChangeText: M,
      autoCapitalize: 'none',
      autoCorrect: false,
      secureTextEntry: Q,
      right: React.default.createElement(require('./678').TextInput.Icon, {
        name: Q ? 'eye-off' : 'eye',
        onPress: function () {
          return X(!Q);
        },
      }),
    }),
    $
      ? React.default.createElement(require('./678').ActivityIndicator, {
          size: 'large',
        })
      : React.default.createElement(
          require('./678').Button,
          {
            mode: 'contained',
            style: {
              marginTop: 20,
            },
            disabled: (B && !N) || !k,
            onPress: function () {
              return module76.default.async(
                function (n) {
                  for (;;)
                    switch ((n.prev = n.next)) {
                      case 0:
                        if (b) {
                          n.next = 2;
                          break;
                        }

                        return n.abrupt('return');

                      case 2:
                        ee(true);
                        n.prev = 3;
                        n.next = 6;
                        return module76.default.awrap(te(y.name, b, k, B, O, H));

                      case 6:
                        n.next = 11;
                        break;

                      case 8:
                        n.prev = 8;
                        n.t0 = n.catch(3);
                        console.log('Edit bakery failed!');

                      case 11:
                        ee(false);

                      case 12:
                      case 'end':
                        return n.stop();
                    }
                },
                null,
                null,
                [[3, 8]],
                Promise
              );
            },
          },
          'Submit'
        )
  );
};

exports.default = module678;
