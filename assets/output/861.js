var module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  React = (function (t, l) {
    if (!l && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var n = s(l);
    if (n && n.has(t)) return n.get(t);
    var u = {},
      f = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var o in t)
      if ('default' !== o && Object.prototype.hasOwnProperty.call(t, o)) {
        var c = f ? Object.getOwnPropertyDescriptor(t, o) : null;
        if (c && (c.get || c.set)) Object.defineProperty(u, o, c);
        else u[o] = t[o];
      }

    u.default = t;
    if (n) n.set(t, u);
    return u;
  })(require('react')),
  ReactNative = require('react-native'),
  module832 = require('@babel/runtime/helpers/interopRequireDefault')(require('./832')),
  module862 = require('@babel/runtime/helpers/interopRequireDefault')(require('./862')),
  module831 = require('@babel/runtime/helpers/interopRequireDefault')(require('./831')),
  module931 = require('@babel/runtime/helpers/interopRequireDefault')(require('./931'));

function s(t) {
  if ('function' != typeof WeakMap) return null;
  var l = new WeakMap(),
    n = new WeakMap();
  return (s = function (t) {
    return t ? n : l;
  })(t);
}

function p(t) {
  return ReactNative.StyleSheet.create({
    stepHeader: {
      fontSize: 20,
      color: t ? require('./851').Colors.white : require('./851').Colors.black,
      marginBottom: 20,
    },
  });
}

var module678 = function (s) {
  var module824 = s.navigation,
    y = p('dark' === ReactNative.useColorScheme()),
    h = React.useState(false),
    T = module23.default(h, 2),
    E = T[0],
    v = T[1],
    S = React.useState(),
    x = module23.default(S, 2),
    C = x[0],
    I = x[1],
    k = React.useState(),
    O = module23.default(k, 2),
    V = O[0],
    w = O[1],
    M = React.useState(),
    P = module23.default(M, 2),
    j = P[0],
    F = P[1],
    _ = React.useState(),
    B = module23.default(_, 2),
    D = B[0],
    U = B[1],
    H = React.useState(),
    W = module23.default(H, 2),
    L = W[0],
    R = W[1],
    q = React.useState(),
    z = module23.default(q, 2),
    A = z[0],
    K = z[1],
    G = React.useState(),
    J = module23.default(G, 2),
    N = J[0],
    Q = J[1],
    X = React.useState('0'),
    Y = module23.default(X, 2),
    Z = Y[0],
    $ = Y[1],
    ee = React.useState('0'),
    te = module23.default(ee, 2),
    ae = te[0],
    le = te[1],
    ne = React.useState(),
    ue = module23.default(ne, 2),
    re = ue[0],
    fe = ue[1],
    de = React.useState([
      {
        label: 'Open/Limited Edition',
        value: 1,
      },
      {
        label: 'Unique',
        value: 2,
      },
      {
        label: 'Candy',
        value: 3,
      },
      {
        label: 'Refillable',
        value: 4,
      },
      {
        label: 'Fungible',
        value: 5,
      },
      {
        label: 'Hot Potato',
        value: 6,
      },
      {
        label: 'Static URL',
        value: 7,
      },
    ]),
    oe = module23.default(de, 2),
    ie = oe[0],
    ce = oe[1];

  return React.default.createElement(
    ReactNative.View,
    {
      style: {
        flex: 1,
        margin: 24,
      },
    },
    React.default.createElement(
      ReactNative.Text,
      {
        style: y.stepHeader,
      },
      'Select a type and input the neccessary data to bake your sprinkle!'
    ),
    React.default.createElement(module832.default, {
      label: 'Sprinkle Type',
      open: E,
      value: C,
      items: ie,
      setOpen: v,
      setValue: I,
      setItems: ce,
      style: {
        marginBottom: 15,
      },
    }),
    C &&
      React.default.createElement(
        React.default.Fragment,
        null,
        React.default.createElement(
          require('./824').KeyboardAwareScrollView,
          null,
          7 !== C
            ? React.default.createElement(
                React.default.Fragment,
                null,
                3 !== C &&
                  React.default.createElement(require('./678').TextInput, {
                    label: 'Token Mint',
                    defaultValue: V,
                    onChangeText: w,
                  }),
                3 === C &&
                  React.default.createElement(
                    React.default.Fragment,
                    null,
                    React.default.createElement(require('./678').TextInput, {
                      label: 'Candy Machine ID',
                      defaultValue: j,
                      onChangeText: F,
                    }),
                    React.default.createElement(require('./678').TextInput, {
                      label: 'Title',
                      defaultValue: D,
                      onChangeText: U,
                    }),
                    React.default.createElement(require('./678').TextInput, {
                      label: 'Description',
                      defaultValue: L,
                      onChangeText: R,
                    }),
                    React.default.createElement(require('./678').TextInput, {
                      label: 'Creator',
                      defaultValue: A,
                      onChangeText: K,
                    }),
                    N &&
                      React.default.createElement(ReactNative.Image, {
                        source: {
                          uri: N.path,
                        },
                        style: {
                          width: 200,
                          height: 200,
                        },
                      }),
                    React.default.createElement(
                      require('./678').Button,
                      {
                        onPress: function () {
                          return module831.default
                            .openPicker({
                              mediaType: 'photo',
                              cropping: false,
                              includeBase64: true,
                            })
                            .then(function (t) {
                              Q(t);
                            });
                        },
                      },
                      N ? 'Change Image' : 'Select Image'
                    )
                  ),
                2 !== C &&
                  6 !== C &&
                  4 !== C &&
                  React.default.createElement(
                    React.default.Fragment,
                    null,
                    React.default.createElement(require('./678').TextInput, {
                      label: 'Total # of Claims',
                      defaultValue: Z,
                      onChangeText: $,
                    }),
                    React.default.createElement(require('./678').TextInput, {
                      label: '# of Claims per User',
                      defaultValue: ae,
                      onChangeText: le,
                    })
                  )
              )
            : React.default.createElement(
                React.default.Fragment,
                null,
                React.default.createElement(require('./678').TextInput, {
                  label: 'Cupcake.com/???',
                  defaultValue: re,
                  onChangeText: fe,
                })
              )
        ),
        React.default.createElement(module862.default, {
          navigation: module824,
          tagType: C - 1,
          tokenMint: 3 !== C ? V : null,
          candyMachine:
            3 === C
              ? {
                  id: j,
                  title: D,
                  description: L,
                  creator: A,
                  image: N ? N.data : null,
                }
              : null,
          claims: 2 !== C ? parseInt(Z) : 0,
          perUser: 2 !== C ? parseInt(ae) : 0,
          message: 7 === C ? re : null,
        })
      ),
    React.default.createElement(module931.default, {
      navigation: module824,
    })
  );
};

exports.default = module678;
