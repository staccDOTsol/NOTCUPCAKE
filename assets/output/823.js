var module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  module76 = require('@babel/runtime/helpers/interopRequireDefault')(require('./76')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var u = c(n);
    if (u && u.has(t)) return u.get(t);
    var l = {},
      o = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var s in t)
      if ('default' !== s && Object.prototype.hasOwnProperty.call(t, s)) {
        var f = o ? Object.getOwnPropertyDescriptor(t, s) : null;
        if (f && (f.get || f.set)) Object.defineProperty(l, s, f);
        else l[s] = t[s];
      }

    l.default = t;
    if (u) u.set(t, l);
    return l;
  })(require('react')),
  ReactNative = require('react-native'),
  module546 = require('@babel/runtime/helpers/interopRequireDefault')(require('./546'));

function c(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    u = new WeakMap();
  return (c = function (t) {
    return t ? u : n;
  })(t);
}

function s(t) {
  return module76.default.async(
    function (u) {
      for (;;)
        switch ((u.prev = u.next)) {
          case 0:
            u.prev = 0;
            u.next = 3;
            return module76.default.awrap(module546.default.setItem('@bakery', JSON.stringify(t)));

          case 3:
            u.next = 8;
            break;

          case 5:
            u.prev = 5;
            u.t0 = u.catch(0);
            console.warn('async storage store error');

          case 8:
          case 'end':
            return u.stop();
        }
    },
    null,
    null,
    [[0, 5]],
    Promise
  );
}

var module678 = function (o) {
  var c = o.navigation,
    module824 = React.useState(''),
    p = module23.default(module824, 2),
    y = p[0],
    b = p[1],
    w = React.useState(''),
    v = module23.default(w, 2),
    x = v[0],
    C = v[1],
    P = React.useState(''),
    S = module23.default(P, 2),
    k = S[0],
    E = S[1],
    h = React.useState(false),
    O = module23.default(h, 2),
    T = O[0],
    I = O[1],
    B = React.useState(''),
    j = module23.default(B, 2),
    V = j[0],
    _ = j[1],
    z = React.useState(false),
    M = module23.default(z, 2),
    A = M[0],
    K = M[1],
    N = React.useState(),
    R = module23.default(N, 2),
    W = R[0],
    D = R[1],
    module552 = require('./552').useGlobals();

  return React.default.createElement(
    ReactNative.SafeAreaView,
    {
      style: {
        flex: 1,
        margin: 24,
      },
    },
    React.default.createElement(
      require('./824').KeyboardAwareScrollView,
      null,
      React.default.createElement(require('./678').Text, null, 'Create a new Bakery!'),
      React.default.createElement(require('./678').Text, null, W || null),
      React.default.createElement(require('./678').TextInput, {
        label: 'Bakery Name',
        defaultValue: y,
        onChangeText: b,
        autoCapitalize: 'none',
        autoCorrect: false,
        autoFocus: true,
        disabled: A,
      }),
      React.default.createElement(require('./678').TextInput, {
        label: 'Password',
        defaultValue: x,
        onChangeText: C,
        autoCapitalize: 'none',
        autoCorrect: false,
        disabled: A,
      }),
      React.default.createElement(require('./678').TextInput, {
        label: 'Confirm Password',
        defaultValue: k,
        onChangeText: E,
        autoCapitalize: 'none',
        autoCorrect: false,
        disabled: A,
      }),
      T
        ? React.default.createElement(require('./678').TextInput, {
            label: 'Bakery Solana Secret Key',
            disabled: !T || A,
            defaultValue: V,
            onChangeText: _,
            autoCapitalize: 'none',
            autoCorrect: false,
            right: React.default.createElement(require('./678').TextInput.Icon, {
              name: 'window-close',
              onPress: function () {
                return I(false);
              },
            }),
          })
        : React.default.createElement(
            require('./678').Button,
            {
              onPress: function () {
                return I(true);
              },
            },
            'Provide Secret Key?'
          ),
      (!A &&
        React.default.createElement(
          require('./678').Button,
          {
            disabled: '' === y || '' === x || '' === k || x !== k || (T && '' === V),
            onPress: function () {
              var module23;
              return module76.default.async(
                function (u) {
                  for (;;)
                    switch ((u.prev = u.next)) {
                      case 0:
                        K(true);
                        u.prev = 1;
                        u.next = 4;
                        return module76.default.awrap(require('./553').createBakery(y, x, T ? V : null));

                      case 4:
                        module23 = u.sent;
                        console.log(module23);
                        u.next = 8;
                        return module76.default.awrap(
                          s({
                            usr: y,
                            pwd: x,
                            id: module23.id,
                          })
                        );

                      case 8:
                        module552.setCompany({
                          id: module23.id,
                          name: y,
                          password: x,
                        });
                        module552.setBakeryInfo({
                          displayName: y,
                          name: y,
                          id: module23.id,
                          email: '',
                          pfp: '',
                          password: x,
                          authority: module23.fundAccountPubkey,
                          balance: 0,
                        });
                        c.navigate('Bakery', {
                          screen: 'Home',
                        });
                        u.next = 16;
                        break;

                      case 13:
                        u.prev = 13;
                        u.t0 = u.catch(1);
                        D('ERROR');

                      case 16:
                        K(false);

                      case 17:
                      case 'end':
                        return u.stop();
                    }
                },
                null,
                null,
                [[1, 13]],
                Promise
              );
            },
          },
          'Sign Up'
        )) ||
        React.default.createElement(require('./678').ActivityIndicator, {
          size: 'large',
        })
    )
  );
};

exports.default = module678;
