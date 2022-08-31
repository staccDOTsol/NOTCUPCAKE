var module76 = require('@babel/runtime/helpers/interopRequireDefault')(require('./76')),
  module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  React = require('@babel/runtime/helpers/interopRequireDefault')(require('react')),
  module863 = require('@babel/runtime/helpers/interopRequireDefault')(require('./863')),
  module864 = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var s = l(n);
    if (s && s.has(t)) return s.get(t);
    var u = {},
      c = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var o in t)
      if ('default' !== o && Object.prototype.hasOwnProperty.call(t, o)) {
        var f = c ? Object.getOwnPropertyDescriptor(t, o) : null;
        if (f && (f.get || f.set)) Object.defineProperty(u, o, f);
        else u[o] = t[o];
      }

    u.default = t;
    if (s) s.set(t, u);
    return u;
  })(require('./864'));

function l(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    s = new WeakMap();
  return (l = function (t) {
    return t ? s : n;
  })(t);
}

var o = function (t) {
  return new Promise(function (n) {
    return setTimeout(n, t);
  });
};

function f(s, u, c) {
  var l, o, f, module678, y, v, w, b, x, k, F, S, h, _, E;

  return module76.default.async(
    function (O) {
      for (;;)
        switch ((O.prev = O.next)) {
          case 0:
            O.prev = 0;
            O.next = 3;
            return module76.default.awrap(
              s.transceive(require('./890').bytesFromString(require('./890').isoSelectFile(require('./890').DF_BY_NAME, require('./890').ISO_DF_NAME)))
            );

          case 3:
            O.next = 5;
            return module76.default.awrap(s.transceive(require('./890').bytesFromString(require('./890').isoSelectFile(require('./890').FILE_BY_ID, require('./890').NDEF_EF_ID))));

          case 5:
            O.next = 7;
            return module76.default.awrap(s.transceive(require('./890').bytesFromString(require('./890').isoReadBinary())));

          case 7:
            l = O.sent;
            o = require('./890').decodeHexString(
              ((P = l),
              Array.from(P, function (t) {
                return ('0' + (255 & t).toString(16)).slice(-2);
              }).join(''))
            );
            f = o.slice(o.lastIndexOf('uid=') + 4, o.lastIndexOf('uid=') + 18);
            O.next = 12;
            return module76.default.awrap(require('./553').readSprinkle(u, f, c));

          case 12:
            module678 = O.sent;
            y = module678.dataKey;
            v = require('./890').authenticateEV2Part1('00');
            w = require('./890').bytesFromString(v);
            O.t0 = require('./890').stringFromBytes;
            O.next = 19;
            return module76.default.awrap(s.transceive(w));

          case 19:
            O.t1 = O.sent;
            b = O.t0(O.t1);
            console.log('p1r', b);
            x = require('./890').authenticateEV2Part2(y, b);
            k = module23.default(x, 2);
            F = k[0];
            S = k[1];
            O.t2 = require('./890').stringFromBytes;
            O.next = 26;
            return module76.default.awrap(s.transceive(require('./890').bytesFromString(F)));

          case 26:
            O.t3 = O.sent;
            h = O.t2(O.t3);
            console.log('p2r', h);
            _ = require('./890').getConnectionData('00', y, h, S);
            console.warn(_);
            E = require('./890').changeKey('00', require('./890').ZERO_KEY, _, y);
            O.next = 34;
            return module76.default.awrap(s.transceive(require('./890').bytesFromString(E)));

          case 34:
            return O.abrupt('return', f);

          case 37:
            O.prev = 37;
            O.t4 = O.catch(0);
            console.warn('Reset failed');

          case 40:
          case 'end':
            return O.stop();
        }

      var P;
    },
    null,
    null,
    [[0, 37]],
    Promise
  );
}

var module678 = function (n) {
  var l = n.navigation,
    module552 = require('./552').useGlobals(),
    y = module552.companyId,
    v = module552.company,
    w = module552.password;

  React.default.useEffect(function () {
    module76.default.async(
      function (n) {
        for (;;)
          switch ((n.prev = n.next)) {
            case 0:
              n.prev = 0;
              n.next = 3;
              return module76.default.awrap(module863.default.init());

            case 3:
              n.next = 5;
              return module76.default.awrap(module863.default.isEnabled());

            case 5:
              n.next = 10;
              break;

            case 7:
              n.prev = 7;
              n.t0 = n.catch(0);
              console.warn(n.t0);

            case 10:
            case 'end':
              return n.stop();
          }
      },
      null,
      null,
      [[0, 7]],
      Promise
    );
  }, []);
  return React.default.createElement(
    require('./678').Button,
    {
      mode: 'contained',
      disabled: !v || !w || !y,
      style: {
        marginVertical: 30,
      },
      onPress: function () {
        var n;
        return module76.default.async(
          function (s) {
            for (;;)
              switch ((s.prev = s.next)) {
                case 0:
                  if ((console.warn('Resetting sprinkle...'), (s.prev = 1), v && w && y)) {
                    s.next = 4;
                    break;
                  }

                  return s.abrupt('return');

                case 4:
                  s.next = 6;
                  return module76.default.awrap(
                    module864.default.requestTechnology([module864.NfcTech.IsoDep], {
                      alertMessage: 'Reset Sprinkle. Please tap NFC tag.',
                    })
                  );

                case 6:
                  s.next = 8;
                  return module76.default.awrap(o(50));

                case 8:
                  s.next = 10;
                  return module76.default.awrap(f(module864.default.isoDepHandler, v, w));

                case 10:
                  if (!(n = s.sent)) {
                    s.next = 18;
                    break;
                  }

                  module864.default.setAlertMessage('Done. Your sprinkle is reset.');
                  s.next = 15;
                  return module76.default.awrap(o(50));

                case 15:
                  l.navigate('Gallery', {
                    screen: 'Sprinkle',
                    params: {
                      bakeryName: v,
                      sprinkleUid: n,
                    },
                  });
                  s.next = 19;
                  break;

                case 18:
                  module864.default.setAlertMessage('Write Error.');

                case 19:
                  s.next = 25;
                  break;

                case 21:
                  s.prev = 21;
                  s.t0 = s.catch(1);
                  console.warn(JSON.stringify(s.t0));
                  module864.default.setAlertMessage('Reset Error.');

                case 25:
                  s.prev = 25;
                  module864.default.cancelTechnologyRequest();
                  return s.finish(25);

                case 28:
                case 'end':
                  return s.stop();
              }
          },
          null,
          null,
          [[1, 21, 25, 28]],
          Promise
        );
      },
    },
    'Reset Sprinkle (NTAG424)'
  );
};

exports.default = module678;
