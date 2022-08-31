var module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  module76 = require('@babel/runtime/helpers/interopRequireDefault')(require('./76')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var u = s(n);
    if (u && u.has(t)) return u.get(t);
    var l = {},
      o = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in t)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(t, c)) {
        var f = o ? Object.getOwnPropertyDescriptor(t, c) : null;
        if (f && (f.get || f.set)) Object.defineProperty(l, c, f);
        else l[c] = t[c];
      }

    l.default = t;
    if (u) u.set(t, l);
    return l;
  })(require('react')),
  ReactNative = require('react-native'),
  module546 = require('@babel/runtime/helpers/interopRequireDefault')(require('./546'));

function s(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    u = new WeakMap();
  return (s = function (t) {
    return t ? u : n;
  })(t);
}

function c(t) {
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

function f() {
  var t, React;
  return module76.default.async(
    function (l) {
      for (;;)
        switch ((l.prev = l.next)) {
          case 0:
            l.prev = 0;
            l.next = 3;
            return module76.default.awrap(module546.default.getItem('@bakery'));

          case 3:
            if (null === (t = l.sent)) {
              l.next = 8;
              break;
            }

            React = JSON.parse(t);
            console.log(React);
            return l.abrupt('return', React);

          case 8:
            l.next = 14;
            break;

          case 10:
            l.prev = 10;
            l.t0 = l.catch(0);
            console.warn('async storage fetch error');
            return l.abrupt('return');

          case 14:
          case 'end':
            return l.stop();
        }
    },
    null,
    null,
    [[0, 10]],
    Promise
  );
}

var p = ReactNative.StyleSheet.create({
    screen: {
      width: '100%',
      height: '100%',
      display: 'flex',
    },
    logoContainer: {
      justifyContent: 'center',
      alignItems: 'center',
    },
    logInContainer: {
      justifyContent: 'center',
      top: 0,
    },
  }),
  module553 = function (o) {
    var s = o.navigation,
      module586 = React.useState(''),
      w = module23.default(module586, 2),
      b = w[0],
      v = w[1],
      h = React.useState(''),
      x = module23.default(h, 2),
      k = x[0],
      C = x[1],
      P = React.useState(true),
      E = module23.default(P, 2),
      I = E[0],
      S = E[1],
      O = React.useState(),
      B = module23.default(O, 2),
      j = B[0],
      N = B[1],
      T = React.useState(false),
      A = module23.default(T, 2),
      _ = A[0],
      M = A[1],
      module552 = require('./552').useGlobals();

    React.useEffect(function () {
      var t, u;
      module76.default.async(
        function (l) {
          for (;;)
            switch ((l.prev = l.next)) {
              case 0:
                M(true);
                l.next = 3;
                return module76.default.awrap(f());

              case 3:
                if ((t = l.sent) && t.usr) {
                  l.next = 7;
                  break;
                }

                M(false);
                return l.abrupt('return');

              case 7:
                console.log('Saved login found');
                l.prev = 8;
                l.next = 11;
                return module76.default.awrap(require('./553').authenticateBakery(t.usr, t.pwd));

              case 11:
                if ((u = l.sent)) {
                  module552.setCompany({
                    id: t.id,
                    name: t.usr,
                    password: t.pwd,
                  });
                  module552.setBakeryInfo({
                    displayName: u.displayName,
                    name: u.name,
                    id: u.id,
                    email: u.email,
                    pfp: u.pfp,
                    password: k,
                    authority: u.fundAccountPubkey,
                    balance: u.balance,
                  });
                  s.dispatch(
                    require('./586').CommonActions.reset({
                      index: 1,
                      routes: [
                        {
                          name: 'Bakery',
                        },
                      ],
                    })
                  );
                }

                l.next = 20;
                break;

              case 15:
                l.prev = 15;
                l.t0 = l.catch(8);
                l.next = 19;
                return module76.default.awrap(c({}));

              case 19:
                M(false);

              case 20:
              case 'end':
                return l.stop();
            }
        },
        null,
        null,
        [[8, 15]],
        Promise
      );
    }, []);
    return React.default.createElement(
      ReactNative.SafeAreaView,
      {
        style: p.screen,
      },
      React.default.createElement(
        ReactNative.View,
        {
          style: p.logoContainer,
        },
        React.default.createElement(ReactNative.Image, {
          source: require('./676'),
          style: {
            width: 150,
            height: 150,
          },
        })
      ),
      React.default.createElement(
        ReactNative.View,
        {
          style: p.logInContainer,
        },
        j && React.default.createElement(ReactNative.Text, null, j),
        !_ &&
          React.default.createElement(
            React.default.Fragment,
            null,
            React.default.createElement(require('./678').TextInput, {
              label: 'Bakery Name',
              defaultValue: b,
              onChangeText: v,
              autoCapitalize: 'none',
              autoCorrect: false,
              autoFocus: true,
            }),
            React.default.createElement(require('./678').TextInput, {
              label: 'Password',
              secureTextEntry: I,
              defaultValue: k,
              onChangeText: C,
              autoCapitalize: 'none',
              autoCorrect: false,
              right: React.default.createElement(require('./678').TextInput.Icon, {
                name: I ? 'eye-off' : 'eye',
                onPress: function () {
                  return S(!I);
                },
              }),
            }),
            React.default.createElement(
              require('./678').Button,
              {
                mode: 'contained',
                onPress: function () {
                  return s.navigate('SignUp');
                },
              },
              'New Bakery?'
            )
          ),
        _
          ? React.default.createElement(require('./678').ActivityIndicator, {
              size: 'large',
            })
          : React.default.createElement(
              require('./678').Button,
              {
                mode: 'contained',
                disabled: '' === b || '' === k,
                onPress: function () {
                  var t;
                  return module76.default.async(
                    function (u) {
                      for (;;)
                        switch ((u.prev = u.next)) {
                          case 0:
                            M(true);
                            u.next = 3;
                            return module76.default.awrap(require('./553').authenticateBakery(b, k));

                          case 3:
                            if ((t = u.sent).id) {
                              c({
                                usr: t.name,
                                pwd: k,
                                id: t.id,
                              });
                              module552.setCompany({
                                id: t.id,
                                name: t.name,
                                password: k,
                              });
                              module552.setBakeryInfo({
                                displayName: t.displayName,
                                name: t.name,
                                id: t.id,
                                email: t.email,
                                pfp: t.pfp,
                                password: k,
                                authority: t.fundAccountPubkey,
                                balance: t.balance,
                              });
                              s.dispatch(
                                require('./586').CommonActions.reset({
                                  index: 1,
                                  routes: [
                                    {
                                      name: 'Bakery',
                                    },
                                  ],
                                })
                              );
                            } else {
                              N(t.error);
                              M(false);
                            }

                          case 5:
                          case 'end':
                            return u.stop();
                        }
                    },
                    null,
                    null,
                    null,
                    Promise
                  );
                },
              },
              'Log In'
            )
      )
    );
  };

exports.default = module553;
