var module76 = require('@babel/runtime/helpers/interopRequireDefault')(require('./76')),
  module35 = require('@babel/runtime/helpers/interopRequireDefault')(require('./35')),
  module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var l = f(n);
    if (l && l.has(t)) return l.get(t);
    var o = {},
      u = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var i in t)
      if ('default' !== i && Object.prototype.hasOwnProperty.call(t, i)) {
        var s = u ? Object.getOwnPropertyDescriptor(t, i) : null;
        if (s && (s.get || s.set)) Object.defineProperty(o, i, s);
        else o[i] = t[i];
      }

    o.default = t;
    if (l) l.set(t, o);
    return o;
  })(require('react')),
  ReactNative = require('react-native'),
  module831 = require('@babel/runtime/helpers/interopRequireDefault')(require('./831')),
  module832 = require('@babel/runtime/helpers/interopRequireDefault')(require('./832')),
  module699 = require('@babel/runtime/helpers/interopRequireDefault')(require('./699'));

function f(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    l = new WeakMap();
  return (f = function (t) {
    return t ? l : n;
  })(t);
}

function p(t) {
  return ReactNative.StyleSheet.create({
    stepOne: {
      display: 'flex',
      flexDirection: 'column',
      justifyContent: 'center',
      alignItems: 'center',
    },
    detailsInputContainer: {
      justifyContent: 'center',
      alignItems: 'center',
    },
    nameInput: {
      width: 300,
      height: 50,
      borderRadius: 10,
      overflow: 'hidden',
      marginVertical: 10,
    },
    descriptionInput: {
      width: 300,
      height: 90,
      borderRadius: 10,
      overflow: 'hidden',
      marginVertical: 10,
    },
    royaltyInput: {
      width: 300,
      height: 50,
      borderRadius: 10,
      overflow: 'hidden',
      marginVertical: 10,
    },
    creatorContainer: {
      display: 'flex',
      flexDirection: 'column',
    },
    creatorInputContainer: {
      display: 'flex',
      flexDirection: 'column',
    },
    creatorHeaderContainer: {
      display: 'flex',
      flexDirection: 'row',
    },
    creatorLabelText: {
      color: t ? require('./851').Colors.white : require('./851').Colors.black,
      fontSize: 17,
      fontWeight: 'bold',
      marginTop: 8,
    },
    stepHeader: {
      fontSize: 20,
      color: t ? require('./851').Colors.white : require('./851').Colors.black,
      marginBottom: 20,
    },
  });
}

var y = function (f) {
  var module678 = f.navigation,
    module552 = require('./552').useGlobals(),
    C = module552.company,
    b = module552.password,
    E = module552.bakeryInfo,
    x = 'dark' === ReactNative.useColorScheme(),
    T = p(x),
    w = React.useState(0),
    I = module23.default(w, 2),
    S = I[0],
    v = I[1],
    k = React.useState(),
    V = module23.default(k, 2),
    P = V[0],
    O = V[1],
    z = React.useState(),
    B = module23.default(z, 2),
    j = B[0],
    A = B[1],
    H = React.useState(),
    M = module23.default(H, 2),
    D = M[0],
    N = M[1],
    _ = React.useState(),
    W = module23.default(_, 2),
    L = W[0],
    R = W[1],
    K = React.useState(),
    G = module23.default(K, 2),
    U = G[0],
    q = G[1],
    F = React.useState('0'),
    J = module23.default(F, 2),
    Q = J[0],
    X = J[1],
    Y = React.useState(false),
    Z = module23.default(Y, 2),
    $ = Z[0],
    ee = Z[1],
    te = React.useState(),
    ae = module23.default(te, 2),
    ne = ae[0],
    le = ae[1],
    re = React.useState([
      {
        label: 'Unique (1/1)',
        value: 1,
      },
      {
        label: 'Limited Edition',
        value: 2,
      },
      {
        label: 'Open Edition',
        value: 3,
      },
    ]),
    oe = module23.default(re, 2),
    ue = oe[0],
    ie = oe[1],
    de = React.useState(false),
    se = module23.default(de, 2),
    ce = se[0],
    fe = se[1],
    pe = React.useState([E.authority]),
    me = module23.default(pe, 2),
    ye = me[0],
    he = me[1],
    Ce = React.useState(['100']),
    be = module23.default(Ce, 2),
    Ee = be[0],
    xe = be[1],
    ge = React.useState(['Bakery']),
    Te = module23.default(ge, 2),
    we = Te[0],
    Ie = Te[1],
    Se = React.useState([E.name]),
    ve = module23.default(Se, 2),
    ke = ve[0],
    Ve = ve[1],
    module553 = [
      React.default.createElement(
        ReactNative.View,
        {
          style: T.stepOne,
        },
        React.default.createElement(
          ReactNative.Text,
          {
            style: T.stepHeader,
          },
          'Step 1) Select a token type, and set the maximum supply if needed.'
        ),
        React.default.createElement(module832.default, {
          placeholder: 'Token Type',
          open: ce,
          value: ne,
          items: ue,
          setOpen: fe,
          setValue: le,
          setItems: ie,
        }),
        2 === ne &&
          React.default.createElement(require('./678').TextInput, {
            label: 'Total Supply',
            defaultValue: U,
            autoCapitalize: 'none',
            autoCorrect: false,
            onChangeText: q,
            style: T.nameInput,
            theme: {
              roundness: 10,
            },
          }),
        React.default.createElement(
          require('./678').Button,
          {
            disabled: !ne || (2 === ne && !U),
            onPress: function () {
              return v(1);
            },
          },
          'Next'
        )
      ),
      React.default.createElement(
        ReactNative.View,
        {
          style: T.detailsInputContainer,
        },
        React.default.createElement(
          ReactNative.Text,
          {
            style: T.stepHeader,
          },
          'Step 2) Choose an image and provide some info about the new token.'
        ),
        React.default.createElement(
          require('./678').Button,
          {
            disabled: $,
            onPress: function () {
              return module831.default
                .openPicker({
                  mediaType: 'photo',
                  cropping: false,
                  includeBase64: true,
                })
                .then(function (t) {
                  O(t);
                });
            },
          },
          P ? 'Change Image' : 'Select Image'
        ),
        P &&
          React.default.createElement(ReactNative.Image, {
            source: {
              uri: P.path,
            },
            style: {
              width: 200,
              height: 200,
            },
          }),
        React.default.createElement(require('./678').TextInput, {
          label: 'Name',
          defaultValue: j,
          autoCapitalize: 'none',
          autoCorrect: false,
          onChangeText: A,
          style: T.nameInput,
          theme: {
            roundness: 10,
          },
        }),
        React.default.createElement(require('./678').TextInput, {
          label: 'Symbol (Optional)',
          defaultValue: D,
          autoCapitalize: 'none',
          autoCorrect: false,
          onChangeText: N,
          style: T.nameInput,
          theme: {
            roundness: 10,
          },
        }),
        React.default.createElement(require('./678').TextInput, {
          label: 'Description (Optional)',
          defaultValue: L,
          autoCapitalize: 'none',
          autoCorrect: false,
          onChangeText: R,
          style: T.descriptionInput,
          theme: {
            roundness: 10,
          },
        }),
        React.default.createElement(
          require('./678').Button,
          {
            disabled: !j || !P,
            onPress: function () {
              return v(2);
            },
          },
          'Next'
        )
      ),
      React.default.createElement(
        ReactNative.View,
        {
          style: T.detailsInputContainer,
        },
        React.default.createElement(
          require('./824').KeyboardAwareScrollView,
          null,
          React.default.createElement(
            ReactNative.Text,
            {
              style: T.stepHeader,
            },
            'Step 3) Set the secondary royalty percentage (0-100) and optionally add additional creators to split them between. Shares of all creators MUST add up to 100.'
          ),
          React.default.createElement(require('./678').TextInput, {
            label: 'Royalties',
            defaultValue: Q,
            autoCapitalize: 'none',
            autoCorrect: false,
            onChangeText: X,
            style: T.royaltyInput,
            theme: {
              roundness: 10,
            },
          }),
          ye.map(function (t, l) {
            var i = ye[l] === E.authority;
            return React.default.createElement(
              ReactNative.View,
              {
                style: T.creatorContainer,
              },
              React.default.createElement(
                ReactNative.View,
                {
                  style: T.creatorHeaderContainer,
                },
                React.default.createElement(
                  ReactNative.Text,
                  {
                    style: T.creatorLabelText,
                  },
                  'Creator ' + (l + 1) + ':'
                ),
                React.default.createElement(module699.default.Button, {
                  name: 'trash-can',
                  disabled: i,
                  size: 25,
                  color: i ? 'grey' : x ? require('./851').Colors.white : require('./851').Colors.black,
                  backgroundColor: x ? require('./851').Colors.black : require('./851').Colors.white,
                  onPress: function () {
                    he([].concat(module35.default(ye.slice(0, l)), module35.default(ye.slice(l + 1))));
                    xe([].concat(module35.default(Ee.slice(0, l)), module35.default(Ee.slice(l + 1))));
                  },
                })
              ),
              React.default.createElement(
                ReactNative.View,
                {
                  style: T.creatorInputContainer,
                },
                React.default.createElement(require('./678').TextInput, {
                  label: 'Address',
                  value: ye[l],
                  autoCapitalize: 'none',
                  autoCorrect: false,
                  style: T.nameInput,
                  theme: {
                    roundness: 10,
                  },
                  onChangeText: function (t) {
                    var o = module35.default(ye);
                    o[l] = t;
                    he(o);
                  },
                }),
                React.default.createElement(require('./678').TextInput, {
                  label: 'Share',
                  value: Ee[l],
                  autoCapitalize: 'none',
                  autoCorrect: false,
                  style: T.royaltyInput,
                  theme: {
                    roundness: 10,
                  },
                  onChangeText: function (t) {
                    var o = module35.default(Ee);
                    o[l] = t;
                    xe(o);
                  },
                })
              )
            );
          }),
          React.default.createElement(
            require('./678').Button,
            {
              onPress: function () {
                he([].concat(module35.default(ye), ['Address']));
                xe([].concat(module35.default(Ee), ['0']));
              },
            },
            'Add Creator'
          ),
          React.default.createElement(
            require('./678').Button,
            {
              disabled: false,
              onPress: function () {
                return v(3);
              },
            },
            'Next'
          )
        )
      ),
      React.default.createElement(
        ReactNative.View,
        {
          style: T.detailsInputContainer,
        },
        React.default.createElement(
          require('./824').KeyboardAwareScrollView,
          null,
          React.default.createElement(
            ReactNative.Text,
            {
              style: T.stepHeader,
            },
            "Step 4) Add some traits for your token's metadata, then mint it!"
          ),
          we.map(function (t, l) {
            return React.default.createElement(
              ReactNative.View,
              {
                style: T.creatorContainer,
              },
              React.default.createElement(
                ReactNative.View,
                {
                  style: T.creatorHeaderContainer,
                },
                React.default.createElement(
                  ReactNative.Text,
                  {
                    style: T.creatorLabelText,
                  },
                  'Trait ' + (l + 1) + ':'
                ),
                React.default.createElement(module699.default.Button, {
                  name: 'trash-can',
                  size: 25,
                  color: x ? require('./851').Colors.white : require('./851').Colors.black,
                  backgroundColor: x ? require('./851').Colors.black : require('./851').Colors.white,
                  onPress: function () {
                    Ie([].concat(module35.default(we.slice(0, l)), module35.default(we.slice(l + 1))));
                    Ve([].concat(module35.default(ke.slice(0, l)), module35.default(ke.slice(l + 1))));
                  },
                })
              ),
              React.default.createElement(
                ReactNative.View,
                {
                  style: T.creatorInputContainer,
                },
                React.default.createElement(require('./678').TextInput, {
                  label: 'Type',
                  value: we[l],
                  autoCapitalize: 'none',
                  autoCorrect: false,
                  style: T.nameInput,
                  theme: {
                    roundness: 10,
                  },
                  onChangeText: function (t) {
                    var o = module35.default(we);
                    o[l] = t;
                    Ie(o);
                  },
                }),
                React.default.createElement(require('./678').TextInput, {
                  label: 'Value',
                  value: ke[l],
                  autoCapitalize: 'none',
                  autoCorrect: false,
                  style: T.nameInput,
                  theme: {
                    roundness: 10,
                  },
                  onChangeText: function (t) {
                    var o = module35.default(ke);
                    o[l] = t;
                    Ve(o);
                  },
                })
              )
            );
          }),
          React.default.createElement(
            require('./678').Button,
            {
              onPress: function () {
                Ie([].concat(module35.default(we), ['Trait Type']));
                Ve([].concat(module35.default(ke), ['Value']));
              },
            },
            'Add Trait'
          ),
          $
            ? React.default.createElement(require('./678').ActivityIndicator, {
                size: 'large',
              })
            : React.default.createElement(
                require('./678').Button,
                {
                  disabled: '' === j || '' === D || '' === L,
                  onPress: function () {
                    var n;
                    return module76.default.async(
                      function (l) {
                        for (;;)
                          switch ((l.prev = l.next)) {
                            case 0:
                              if (C && b) {
                                l.next = 2;
                                break;
                              }

                              return l.abrupt('return');

                            case 2:
                              ee(true);
                              l.prev = 3;
                              l.next = 6;
                              return module76.default.awrap(require('./553').mintToken(C, b, j, D, L, P.data, parseInt(U), 100 * parseInt(Q), we, ke, ye, Ee));

                            case 6:
                              n = l.sent;
                              ee(false);
                              l.next = 14;
                              break;

                            case 10:
                              l.prev = 10;
                              l.t0 = l.catch(3);
                              console.log('mint failed');
                              ee(false);

                            case 14:
                              if (n) {
                                console.log('NEW TOKEN:', n);
                                module678.navigate('Gallery', {
                                  screen: 'Token',
                                  params: {
                                    tokenMint: n.mint,
                                  },
                                });
                              }

                            case 15:
                            case 'end':
                              return l.stop();
                          }
                      },
                      null,
                      null,
                      [[3, 10]],
                      Promise
                    );
                  },
                },
                'Mint!'
              )
        )
      ),
    ];

  return React.default.createElement(
    ReactNative.SafeAreaView,
    {
      style: {
        flex: 1,
        margin: 24,
      },
    },
    React.default.createElement(
      require('./678').Button,
      {
        disabled: 0 === S,
        onPress: function () {
          return v(S - 1);
        },
      },
      'Back'
    ),
    module553[S]
  );
};

exports.default = y;
