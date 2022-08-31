exports._CRC32NK = K;

exports.authenticateEV2Part1 = function (t) {
  return B(_, t + '00');
};

exports.authenticateEV2Part2 = function (t, n) {
  var i = N(t, c, n.slice(0, 32)),
    E = '00000000000000000000000000000000' + C(i);
  return [B('AF', v(t, c, E)), i];
};

exports.bytesFromString = function (n) {
  return module891.hex.toBytes(n);
};

exports.changeFileSettings = function (t, n, c) {
  var i = x(c, o, t, n);
  return B(o, i);
};

exports.changeKey = function (t, n, c) {
  var i = arguments.length > 3 && undefined !== arguments[3] ? arguments[3] : '',
    E = t === c.keyNum ? n + '01' : D(n, i) + '01',
    o = x(c, l, t, E);
  return B(l, o);
};

exports.decodeHexString = function (n) {
  return module891.utf8.fromBytes(module891.hex.toBytes(n));
};

exports.decodeResponse = function (t, n) {
  var i = {
      status: n.slice(n.length - 4, n.length),
      mac: n.slice(n.length - 20, n.length - 4),
      encodedResponseData: n.slice(0, n.length - 20),
    },
    E = f + t.ti + t.counter + '0000000000000000',
    o = v(t.encKey, c, E);
  return N(t.encKey, o, i.encodedResponseData);
};

exports.decryptAES = N;

exports.encodeUTF8Hex = function (n) {
  return module891.hex.fromBytes(module891.utf8.toBytes(n));
};

exports.encryptAES = v;

exports.getCardUID = function (t) {
  var n = x(t, i, '', '');
  return B(i, n);
};

exports.getCmac = S;

exports.getConnectionData = function (t, n, i, E) {
  var o = N(n, c, i.slice(0, 64)),
    _ = T(o.slice(8, 40)),
    u = D(_.slice(4, 16), E.slice(0, 12)),
    s = '00010080' + _.slice(0, 4) + u + E.slice(12, 32) + _.slice(16, 32);

  return {
    keyNum: t,
    encKey: S(n, A + s),
    macKey: S(n, f + s),
    ti: o.slice(0, 8),
    counter: '0000',
    pdCap: o.slice(40, 52),
    pcdCap: o.slice(52, 64),
  };
};

exports.getURLWithCompanyId = function (t) {
  var c = n.lastIndexOf('*');
  return n.slice(0, c) + t + n.slice(c + 1);
};

exports.incrementCounter = function (n) {
  var c = parseInt(n.slice(2, 4) + n.slice(0, 2), 16),
    i = '00' + module891.hex.fromBytes([c + 1]);
  return i.slice(2, 4) + i.slice(0, 2);
};

exports.isoReadBinary = function () {
  return '00B0000000';
};

exports.isoSelectFile = function (t, n) {
  return B(s, n, '00', t + '0C');
};

exports.isoWrapCommand = B;
exports.leftShift = C;
exports.numBytesAsHex = h;
exports.padHex = I;
exports.rightShift = T;

exports.setConfiguration = function (t, n, c) {
  var i = x(t, E, n, c);
  return B(E, i);
};

exports.setTagReadOnly = function () {
  return '908D000019010E0000120000FF0506E1050080828300000000000000000000';
};

exports.stringFromBytes = function (n) {
  return module891.hex.fromBytes(n);
};

exports.truncateMAC = y;

exports.wrapNDEFData = function (t) {
  return '00' + h(F + t) + F + t;
};

exports.writeData = function (t, n, c) {
  var i = arguments.length > 3 && undefined !== arguments[3] ? arguments[3] : 'PLAIN',
    E = arguments.length > 4 && undefined !== arguments[4] ? arguments[4] : '000000',
    o = t + E + h(n) + '0000',
    _ = o + n;

  if ('FULL' == i) _ = x(c, u, o, n);
  return B(u, _);
};

exports.xorHex = D;

var module891 = require('./891').utils;

require('./892');

module891 = require('./891').utils;
var n = 'cupcake.com/claim?co=*&uid=00000000000000&ctr=000000&tt=00&cmac=0000000000000000';
exports.URL_FORMAT = n;
var c = '00000000000000000000000000000000';
exports.ZERO_KEY = c;
exports.ONE_KEY = '10000000000000000000000000000000';
exports.APP_MASTER_KEY = '00';
exports.APP_KEY = '01';
exports.APP_UPDATE_KEY = '02';
exports.APP_ENC_KEY = '03';
exports.ISO_DF_NAME = 'D2760000850101';
exports.CC_EF_ID = 'E103';
exports.NDEF_EF_ID = 'E104';
exports.DATA_EF_ID = 'E105';
exports.CC_FILE = '01';
exports.NDEF_FILE = '02';
exports.DATA_FILE = '03';
var i = '51';
exports.GET_CARD_UID = i;
var E = '5C';
exports.SET_CONFIGURATION = E;
var o = '5F';
exports.CHANGE_FILE_SETTINGS = o;
var _ = '71';
exports.AUTH_EV2_FIRST = _;
var u = '8D';
exports.WRITE_DATA = u;
var s = 'A4';
exports.SELECT_FILE = s;
exports.READ_DATA = 'AD';
var l = 'C4';
exports.CHANGE_KEY = l;
exports.GET_FILE_SETTINGS = 'F5';
exports.FILE_BY_ID = '00';
exports.DF_BY_NAME = '04';
var A = 'A55A';
exports.ENC_IV = A;
var f = '5AA5';
exports.MAC_IV = f;
var F = 'D1015A55';
exports.NDEF_HEADER = F;

function I(t, n) {
  var c = t + '80';
  if (c.length / 2 == n) return c;
  var i = 0;
  i = c.length / 2 < n ? n - c.length / 2 : c.length / 2 - ((c.length / 2) % n) + n - c.length / 2;

  for (var E = 0; E < i; E++) c += '00';

  return c;
}

function D(n, c) {
  for (var i = module891.hex.toBytes(n), E = module891.hex.toBytes(c), o = '', _ = 0; _ < 6; _++) o += module891.hex.fromBytes([i[_] ^ E[_]]);

  return o;
}

function h(n) {
  return module891.hex.fromBytes([n.length / 2]);
}

function C(t) {
  return t.slice(2, t.length) + t.slice(0, 2);
}

function T(t) {
  return t.slice(t.length - 2, t.length) + t.slice(0, t.length - 2);
}

function y(t) {
  return t.slice(2, 4) + t.slice(6, 8) + t.slice(10, 12) + t.slice(14, 16) + t.slice(18, 20) + t.slice(22, 24) + t.slice(26, 28) + t.slice(30, 32);
}

function v(n, c, i) {
  return module891.hex.fromBytes(new (require('./891').ModeOfOperation.cbc)(module891.hex.toBytes(n), module891.hex.toBytes(c)).encrypt(module891.hex.toBytes(i)));
}

function N(n, c, i) {
  return module891.hex.fromBytes(new (require('./891').ModeOfOperation.cbc)(module891.hex.toBytes(n), module891.hex.toBytes(c)).decrypt(module891.hex.toBytes(i)));
}

function S(t, n) {
  var module904 = require('./904').algo.CMAC.create(require('./904').enc.Hex.parse(t));

  return require('./904').enc.Hex.stringify(module904.finalize(require('./904').enc.Hex.parse(n)));
}

function B(t, n) {
  return (
    (arguments.length > 2 && undefined !== arguments[2] ? arguments[2] : '90') +
    t +
    (arguments.length > 3 && undefined !== arguments[3] ? arguments[3] : '0000') +
    (n.length > 0 ? h(n) : '') +
    n +
    '00'
  );
}

function x(t, n, i, E) {
  var o = I(E, 16);
  if (E.length > 0) E = o;

  var _ = A + t.ti + t.counter + '0000000000000000',
    u = v(t.encKey, c, _);

  return R(t, n, i, v(t.encKey, u, E));
}

function R(t, n, c, i) {
  var E = n + t.counter + t.ti + c + i;
  return c + i + y(S(t.macKey, E));
}

function K(t) {
  return '';
}

exports.CUPCAKE_NDEF_FILE_SETTINGS = '4000E0C9FEE02B00003E0000480000070000500000';
