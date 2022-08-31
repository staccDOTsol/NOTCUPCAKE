var module76 = require('@babel/runtime/helpers/interopRequireDefault')(require('./76')),
  React = require('@babel/runtime/helpers/interopRequireDefault')(require('react')),
  ReactNative = require('react-native'),
  module863 = require('@babel/runtime/helpers/interopRequireDefault')(require('./863')),
  module864 = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = c(n);
    if (o && o.has(t)) return o.get(t);
    var u = {},
      s = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var l in t)
      if ('default' !== l && Object.prototype.hasOwnProperty.call(t, l)) {
        var f = s ? Object.getOwnPropertyDescriptor(t, l) : null;
        if (f && (f.get || f.set)) Object.defineProperty(u, l, f);
        else u[l] = t[l];
      }

    u.default = t;
    if (o) o.set(t, u);
    return u;
  })(require('./864'));

function c(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (c = function (t) {
    return t ? o : n;
  })(t);
}

function l(n) {
  var o, u;
  return module76.default.async(
    function (t) {
      for (;;)
        switch ((t.prev = t.next)) {
          case 0:
            o = new (require('./1123').Tag)([
              require('./1129').ZERO_KEY,
              require('./1129').ZERO_KEY,
              require('./1129').ZERO_KEY,
              require('./1129').ZERO_KEY,
              require('./1129').ZERO_KEY,
            ]);
            console.log(o);
            u = o.authenticateEv2P1(0);
            console.log(u);

          case 4:
          case 'end':
            return t.stop();
        }
    },
    null,
    null,
    null,
    Promise
  );
}

var module678 = function (c) {
  c.navigation;

  var module552 = require('./552').useGlobals(),
    p = module552.companyId,
    v = module552.company,
    b = module552.password,
    w = ReactNative.StyleSheet.create({
      fab: {
        position: 'absolute',
        margin: 5,
        right: 0,
        bottom: 0,
      },
    });

  React.default.useEffect(function () {
    module76.default.async(
      function (n) {
        for (;;)
          switch ((n.prev = n.next)) {
            case 0:
              n.prev = 0;
              n.next = 3;
              return module76.default.awrap(module863.default.isEnabled());

            case 3:
              if (!n.sent) {
                n.next = 7;
                break;
              }

              n.next = 7;
              return module76.default.awrap(module864.default.start());

            case 7:
              n.next = 12;
              break;

            case 9:
              n.prev = 9;
              n.t0 = n.catch(0);
              console.warn(n.t0);

            case 12:
            case 'end':
              return n.stop();
          }
      },
      null,
      null,
      [[0, 9]],
      Promise
    );
  }, []);
  return React.default.createElement(require('./678').FAB, {
    icon: 'database-search',
    style: w.fab,
    mode: 'contained',
    disabled: !v || !b || !p,
    onPress: function () {
      var React;
      return module76.default.async(
        function (o) {
          for (;;)
            switch ((o.prev = o.next)) {
              case 0:
                if ((console.log('Reading Sprinkle...'), v && b && p)) {
                  o.next = 3;
                  break;
                }

                return o.abrupt('return');

              case 3:
                o.next = 5;
                return module76.default.awrap(
                  module864.default.requestTechnology([module864.NfcTech.IsoDep], {
                    alertMessage: 'Read Sprinkle. Please tap NFC tag.',
                  })
                );

              case 5:
                o.next = 7;
                return module76.default.awrap(
                  new Promise(function (t) {
                    return setTimeout(t, 50);
                  })
                );

              case 7:
                o.prev = 7;
                o.next = 10;
                return module76.default.awrap(l(module864.default.isoDepHandler));

              case 10:
                React = o.sent;
                console.log(React);
                module864.default.setAlertMessage('Done, Sprinkle read.');
                o.next = 15;
                return module76.default.awrap(
                  new Promise(function (t) {
                    return setTimeout(t, 50);
                  })
                );

              case 15:
                o.next = 20;
                break;

              case 17:
                o.prev = 17;
                o.t0 = o.catch(7);
                console.warn(o.t0);

              case 20:
                o.prev = 20;
                module864.default.cancelTechnologyRequest();
                return o.finish(20);

              case 23:
              case 'end':
                return o.stop();
            }
        },
        null,
        null,
        [[7, 17, 20, 23]],
        Promise
      );
    },
  });
};

exports.default = module678;
