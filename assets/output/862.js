var module76 = require('@babel/runtime/helpers/interopRequireDefault')(require('./76')),
  module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  s = require('@babel/runtime/helpers/interopRequireDefault')(require('react')),
  module863 = require('@babel/runtime/helpers/interopRequireDefault')(require('./863')),
  module864 = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var s = l(n);
    if (s && s.has(t)) return s.get(t);
    var o = {},
      c = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var u in t)
      if ('default' !== u && Object.prototype.hasOwnProperty.call(t, u)) {
        var i = c ? Object.getOwnPropertyDescriptor(t, u) : null;
        if (i && (i.get || i.set)) Object.defineProperty(o, u, i);
        else o[u] = t[u];
      }

    o.default = t;
    if (s) s.set(t, o);
    return o;
  })(require('./864'));

function l(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    s = new WeakMap();
  return (l = function (t) {
    return t ? s : n;
  })(t);
}

var u = function (t) {
  return new Promise(function (n) {
    return setTimeout(n, t);
  });
};

function i(n, s) {
  var module863, l, u, i, p, f, y, module553, b, v, w, x, S, h, E, k, A, B, T, C, D, P, O, U, _;

  return module76.default.async(
    function (M) {
      for (;;)
        switch ((M.prev = M.next)) {
          case 0:
            module864.default.setAlertMessage('Baking ... Please keep phone close to tag and wait...');
            module863 = '3A0001';
            M.t0 = require('./890').stringFromBytes;
            M.next = 5;
            return module76.default.awrap(n.transceive(require('./890').bytesFromString(module863)));

          case 5:
            M.t1 = M.sent;
            l = M.t0(M.t1).toUpperCase();
            console.log('get uid resp:', l);
            u = l.slice(0, 6) + l.slice(8);
            console.log('uid:', u);
            i = 'A22B00010203';
            console.log('Change password cmd:', i);
            M.t2 = require('./890').stringFromBytes;
            M.next = 15;
            return module76.default.awrap(n.transceive(require('./890').bytesFromString(i)));

          case 15:
            if (((M.t3 = M.sent), (p = M.t2(M.t3).toUpperCase()), console.log('Change password resp:', p), '0A' === p)) {
              M.next = 21;
              break;
            }

            console.warn('Not a fresh tag');
            return M.abrupt('return');

          case 21:
            f = '1B00010203';
            console.log('Authenticate cmd:', f);
            M.t4 = require('./890').stringFromBytes;
            M.next = 26;
            return module76.default.awrap(n.transceive(require('./890').bytesFromString(f)));

          case 26:
            if (((M.t5 = M.sent), (y = M.t4(M.t5).toUpperCase()), console.log('Authenticate resp:', y), '0000' === y)) {
              M.next = 32;
              break;
            }

            console.warn('Authentication failed');
            return M.abrupt('return');

          case 32:
            module553 = false;
            b = '60';
            M.t6 = require('./890').stringFromBytes;
            M.next = 37;
            return module76.default.awrap(n.transceive(require('./890').bytesFromString(b)));

          case 37:
            M.t7 = M.sent;
            v = M.t6(M.t7).toUpperCase();
            if ('03' === v.slice(6, 8)) module553 = true;
            console.log('HAS TT:', module553);
            w = 'cupcake.com/claim?co=' + s + '&m=00000000000000x000000x000000000&cmac=0000000000000000';
            x = 'A205340359D1';
            console.log('Write ndef TLV cmd:', x);
            M.t8 = require('./890').stringFromBytes;
            M.next = 48;
            return module76.default.awrap(n.transceive(require('./890').bytesFromString(x)));

          case 48:
            M.t9 = M.sent;
            S = M.t8(M.t9).toUpperCase();
            console.log('Write ndef TLV resp:', S);
            console.log('\n');
            h = 'A20601555502';
            console.log('Write ndef header cmd:', h);
            M.t10 = require('./890').stringFromBytes;
            M.next = 57;
            return module76.default.awrap(n.transceive(require('./890').bytesFromString(h)));

          case 57:
            M.t11 = M.sent;
            E = M.t10(M.t11).toUpperCase();
            console.log('Write ndef header resp:', E);
            console.log('\n');
            k = 0;

          case 62:
            if (!(k < w.length / 4)) {
              M.next = 84;
              break;
            }

            console.log('\n');
            if ((A = (7 + k).toString(16)).length < 2) A = '0' + A;
            console.log('page num:', 7 + k, A);
            if ((B = w.slice(4 * k, 4 * k + 4)).length < 4) B = '' + B + '0'.repeat(4 - B.length);
            console.log('ndef chunk:', B);
            T = require('./890').encodeUTF8Hex(B);
            console.log('ndef chunk hex:', T);
            C = 'A2' + A + T;
            console.log('Write ndef page cmd:', C);
            M.t12 = require('./890').stringFromBytes;
            M.next = 77;
            return module76.default.awrap(n.transceive(require('./890').bytesFromString(C)));

          case 77:
            M.t13 = M.sent;
            D = M.t12(M.t13).toUpperCase();
            console.log('Write ndef page resp:', D);
            console.log('\n');

          case 81:
            k++;
            M.next = 62;
            break;

          case 84:
            P = module553 ? 'A229F0060FFF' : 'A229E0000FFF';
            console.log('set config 1 cmd:', P);
            M.t14 = require('./890').stringFromBytes;
            M.next = 89;
            return module76.default.awrap(n.transceive(require('./890').bytesFromString(P)));

          case 89:
            M.t15 = M.sent;
            O = M.t14(M.t15).toUpperCase();
            console.log('set config 1 resp:', O);
            console.log('\n');
            U = 'A22A30000000';
            console.log('set config 2 cmd:', U);
            M.t16 = require('./890').stringFromBytes;
            M.next = 98;
            return module76.default.awrap(n.transceive(require('./890').bytesFromString(U)));

          case 98:
            M.t17 = M.sent;
            _ = M.t16(M.t17).toUpperCase();
            console.log('set config 2 resp:', _);
            return M.abrupt('return', {
              uid: u,
              tagSpec: module553 ? 3 : 1,
            });

          case 102:
          case 'end':
            return M.stop();
        }
    },
    null,
    null,
    null,
    Promise
  );
}

function p(s, o) {
  var module864, l, u, i, p, f, y, module553, b, v, w, x, S, h, E, k, A, B, T, C, D, P, O, U, _, M, N, I, R, W;

  return module76.default.async(
    function (H) {
      for (;;)
        switch ((H.prev = H.next)) {
          case 0:
            H.prev = 0;
            H.next = 3;
            return module76.default.awrap(
              s.transceive(require('./890').bytesFromString(require('./890').isoSelectFile(require('./890').DF_BY_NAME, require('./890').ISO_DF_NAME)))
            );

          case 3:
            module864 = '9060000000';
            H.t0 = require('./890').stringFromBytes;
            H.next = 7;
            return module76.default.awrap(s.transceive(require('./890').bytesFromString(module864)));

          case 7:
            H.t1 = H.sent;
            l = H.t0(H.t1);
            console.log('get version p1 resp:', l);
            u = '90AF000000';
            H.t2 = require('./890').stringFromBytes;
            H.next = 14;
            return module76.default.awrap(s.transceive(require('./890').bytesFromString(u)));

          case 14:
            H.t3 = H.sent;
            i = H.t2(H.t3);
            console.log('get version p2 resp:', i);
            p = '90AF000000';
            H.t4 = require('./890').stringFromBytes;
            H.next = 21;
            return module76.default.awrap(s.transceive(require('./890').bytesFromString(p)));

          case 21:
            H.t5 = H.sent;
            f = H.t4(H.t5);
            console.log('get version p3 resp:', f);
            y = false;
            module553 = l.slice(4, 6);
            console.log('HW sub type:', module553);
            if (!('08' !== module553 && '88' !== module553)) y = true;
            console.log('HAS TT:', y);
            b = require('./890').authenticateEV2Part1('00');
            console.warn('authEv2P1cmd ' + b);
            v = require('./890').bytesFromString(b);
            H.t6 = require('./890').stringFromBytes;
            H.next = 35;
            return module76.default.awrap(s.transceive(v));

          case 35:
            H.t7 = H.sent;
            w = H.t6(H.t7);
            console.warn('partOneResp ' + w);
            x = require('./890').authenticateEV2Part2(require('./890').ZERO_KEY, w);
            S = module23.default(x, 2);
            h = S[0];
            E = S[1];
            H.t8 = require('./890').stringFromBytes;
            H.next = 42;
            return module76.default.awrap(s.transceive(require('./890').bytesFromString(h)));

          case 42:
            if (
              ((H.t9 = H.sent), (k = H.t8(H.t9)), console.warn('p2r ' + k), (A = require('./890').getConnectionData('00', require('./890').ZERO_KEY, k, E)), console.warn(A), !y)
            ) {
              H.next = 56;
              break;
            }

            B = require('./890').setConfiguration(A, '07', '010E');
            H.t10 = require('./890').stringFromBytes;
            H.next = 52;
            return module76.default.awrap(s.transceive(require('./890').bytesFromString(B)));

          case 52:
            H.t11 = H.sent;
            T = H.t10(H.t11);
            A.counter = require('./890').incrementCounter(A.counter);
            console.log('Enabled TT:', T);

          case 56:
            C = '4000E0' + (y ? 'C9' : 'C1') + 'FEE02B00003E0000' + (y ? '480000' : '') + '070000500000';
            console.log('file settings:', C);
            D = require('./890').bytesFromString(require('./890').changeFileSettings(require('./890').NDEF_FILE, C, A));
            H.t12 = require('./890').stringFromBytes;
            H.next = 62;
            return module76.default.awrap(s.transceive(D));

          case 62:
            H.t13 = H.sent;
            P = H.t12(H.t13);
            A.counter = require('./890').incrementCounter(A.counter);
            console.log('CHANGE SETTINGS CMD', require('./890').stringFromBytes(D));
            console.log('CHANGE SETTINGS RESP', P);
            O = require('./890').getURLWithCompanyId(o);
            console.warn('Dynamic URL:', O);
            U = require('./890').encodeUTF8Hex(O);
            _ = require('./890').bytesFromString(require('./890').writeData(require('./890').NDEF_FILE, '005ED1015A5502' + U, A));
            H.t14 = require('./890').stringFromBytes;
            H.next = 74;
            return module76.default.awrap(s.transceive(_));

          case 74:
            H.t15 = H.sent;
            M = H.t14(H.t15);
            console.log('WRITE DATA RESP:', M);
            A.counter = require('./890').incrementCounter(A.counter);
            N = require('./890').bytesFromString(require('./890').getCardUID(A));
            H.t16 = require('./890').stringFromBytes;
            H.next = 82;
            return module76.default.awrap(s.transceive(N));

          case 82:
            H.t17 = H.sent;
            I = H.t16(H.t17);
            console.log('GET UID RESP:', I);
            A.counter = require('./890').incrementCounter(A.counter);
            R = require('./890').decodeResponse(A, I);
            W = R.slice(0, R.lastIndexOf('80')).toUpperCase();
            console.log('DECODED RESP', W);
            return H.abrupt('return', {
              uid: W,
              tagSpec: y ? 0 : 4,
            });

          case 92:
            H.prev = 92;
            H.t18 = H.catch(0);
            console.log('ERR', H.t18);
            return H.abrupt('return');

          case 96:
          case 'end':
            return H.stop();
        }
    },
    null,
    null,
    [[0, 92]],
    Promise
  );
}

function f(n, s, o) {
  var module864, l, u, i, p, f, y, module553, b;
  return module76.default.async(
    function (s) {
      for (;;)
        switch ((s.prev = s.next)) {
          case 0:
            module864 = require('./890').encodeUTF8Hex(o.slice(0, 2));
            l = 'A21D633D' + module864;
            console.log('set cmac 1 cmd:', l);
            s.t0 = require('./890').stringFromBytes;
            s.next = 6;
            return module76.default.awrap(n.transceive(require('./890').bytesFromString(l)));

          case 6:
            s.t1 = s.sent;
            u = s.t0(s.t1).toUpperCase();
            console.log('set cmac 1 resp:', u);
            o = o.slice(2);
            i = 0;

          case 11:
            if (!(i < o.length / 4)) {
              s.next = 33;
              break;
            }

            console.log('\n');
            if ((p = (30 + i).toString(16)).length < 2) p = '0' + p;
            console.log('page num:', 30 + i, p);
            if ((f = o.slice(4 * i, 4 * i + 4)).length < 4) f = '' + f + '0'.repeat(4 - f.length);
            console.log('cmac chunk:', f);
            y = require('./890').encodeUTF8Hex(f);
            console.log('cmac chunk hex:', y);
            module553 = 'A2' + p + y;
            console.log('Write cmac page cmd:', module553);
            s.t2 = require('./890').stringFromBytes;
            s.next = 26;
            return module76.default.awrap(n.transceive(require('./890').bytesFromString(module553)));

          case 26:
            s.t3 = s.sent;
            b = s.t2(s.t3).toUpperCase();
            console.log('Write ndef chunk resp:', b);
            console.log('\n');

          case 30:
            i++;
            s.next = 11;
            break;

          case 33:
          case 'end':
            return s.stop();
        }
    },
    null,
    null,
    null,
    Promise
  );
}

function y(s, o) {
  var module864, l, u, i, p, f, y, module553, b, v, w;
  return module76.default.async(
    function (x) {
      for (;;)
        switch ((x.prev = x.next)) {
          case 0:
            x.prev = 0;
            x.next = 3;
            return module76.default.awrap(
              s.transceive(require('./890').bytesFromString(require('./890').isoSelectFile(require('./890').DF_BY_NAME, require('./890').ISO_DF_NAME)))
            );

          case 3:
            console.log('DATAKEY', o);
            module864 = require('./890').authenticateEV2Part1('00');
            l = require('./890').bytesFromString(module864);
            x.t0 = require('./890').stringFromBytes;
            x.next = 9;
            return module76.default.awrap(s.transceive(l));

          case 9:
            x.t1 = x.sent;
            u = x.t0(x.t1);
            console.log('p1r', u);
            i = require('./890').authenticateEV2Part2(require('./890').ZERO_KEY, u);
            p = module23.default(i, 2);
            f = p[0];
            y = p[1];
            x.t2 = require('./890').stringFromBytes;
            x.next = 16;
            return module76.default.awrap(s.transceive(require('./890').bytesFromString(f)));

          case 16:
            x.t3 = x.sent;
            module553 = x.t2(x.t3);
            console.log('p2r', module553);
            b = require('./890').getConnectionData('00', require('./890').ZERO_KEY, module553, y);
            console.log(b);
            v = require('./890').changeKey('00', o, b, require('./890').ZERO_KEY);
            console.log('change key cmd', v);
            x.t4 = require('./890').stringFromBytes;
            x.next = 26;
            return module76.default.awrap(s.transceive(require('./890').bytesFromString(v)));

          case 26:
            x.t5 = x.sent;
            w = x.t4(x.t5);
            console.log('change key resp:', w);
            return x.abrupt('return', true);

          case 32:
            x.prev = 32;
            x.t6 = x.catch(0);
            console.warn('Locking Error', x.t6);
            return x.abrupt('return', false);

          case 36:
          case 'end':
            return x.stop();
        }
    },
    null,
    null,
    [[0, 32]],
    Promise
  );
}

var module553 = function (n) {
  n.navigation;

  var l = n.tagType,
    module678 = n.claims,
    b = n.perUser,
    v = n.pricePerMint,
    w = n.tokenMint,
    x = n.candyMachine,
    S = n.message,
    module552 = require('./552').useGlobals(),
    E = module552.companyId,
    k = module552.company,
    A = module552.password;

  console.log(l, 'SSSSSS');
  s.default.useEffect(function () {
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
  return s.default.createElement(
    require('./678').Button,
    {
      style: {
        marginBottom: 10,
      },
      mode: 'contained',
      disabled:
        !k || !A || !E || ([0, 1, 3, 4, 5].includes(l) && !w) || (2 === l && !x.id) || (![1, 3, 6].includes(l) && (undefined === module678 || undefined === b)) || (6 === l && !S),
      onPress: function () {
        return module76.default.async(
          function (S) {
            for (;;)
              switch ((S.prev = S.next)) {
                case 0:
                  if (E && A) {
                    S.next = 2;
                    break;
                  }

                  return S.abrupt('return');

                case 2:
                  console.warn('writing');
                  S.next = 5;
                  return module76.default.awrap(u(50));

                case 5:
                  S.next = 7;
                  return module76.default.awrap(
                    module864.default.requestTechnology([module864.NfcTech.IsoDep, module864.NfcTech.MifareIOS], {
                      alertMessage: 'Tap an NFC tag to bake your cupcake!',
                    })
                  );

                case 7:
                  n = S.sent;
                  console.log('Sprinkle Tech:', n);
                  S.prev = 9;
                  S.t0 = n;
                  S.next = S.t0 === module864.NfcTech.IsoDep ? 13 : S.t0 === module864.NfcTech.MifareIOS ? 17 : 21;
                  break;

                case 13:
                  S.next = 15;
                  return module76.default.awrap(p(module864.default.isoDepHandler, E));

                case 15:
                  s = S.sent;
                  return S.abrupt('break', 21);

                case 17:
                  S.next = 19;
                  return module76.default.awrap(i(module864.default.nfcAHandler, E));

                case 19:
                  s = S.sent;
                  return S.abrupt('break', 21);

                case 21:
                  console.log('Sprinkle Params:', s);
                  S.next = 24;
                  return module76.default.awrap(
                    require('./553').createSprinkle(s.tagSpec, E, A, s.uid, l, module678 || 0, b || 0, false, w || undefined, v || undefined, x || undefined)
                  );

                case 24:
                  o = S.sent;
                  console.log('Bake Response:', o);
                  S.t1 = n;
                  S.next = S.t1 === module864.NfcTech.IsoDep ? 29 : S.t1 === module864.NfcTech.MifareIOS ? 35 : 39;
                  break;

                case 29:
                  S.next = 31;
                  return module76.default.awrap(u(50));

                case 31:
                  S.next = 33;
                  return module76.default.awrap(y(module864.default.isoDepHandler, o.dataKey));

                case 33:
                  return S.abrupt('break', 39);

                case 35:
                  S.next = 37;
                  return module76.default.awrap(f(module864.default.nfcAHandler, o.dataKey, o.cmac));

                case 37:
                  return S.abrupt('break', 39);

                case 39:
                  S.next = 45;
                  break;

                case 41:
                  S.prev = 41;
                  S.t2 = S.catch(9);
                  console.warn(JSON.stringify(S.t2));
                  module864.default.setAlertMessage('Write Error.');

                case 45:
                  S.prev = 45;
                  module864.default.cancelTechnologyRequest();
                  return S.finish(45);

                case 48:
                case 'end':
                  return S.stop();
              }
          },
          null,
          null,
          [[9, 41, 45, 48]],
          Promise
        );
        var n, s, o;
      },
    },
    'Bake Sprinkle'
  );
};

exports.default = module553;
