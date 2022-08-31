var t =
    (this && this.__createBinding) ||
    (Object.create
      ? function (t, n, i, o) {
          if (undefined === o) o = i;
          var u = Object.getOwnPropertyDescriptor(n, i);
          if (!(u && ('get' in u ? n.__esModule : !u.writable && !u.configurable)))
            u = {
              enumerable: true,
              get: function () {
                return n[i];
              },
            };
          Object.defineProperty(t, o, u);
        }
      : function (t, n, i, o) {
          if (undefined === o) o = i;
          t[o] = n[i];
        }),
  n =
    (this && this.__setModuleDefault) ||
    (Object.create
      ? function (t, n) {
          Object.defineProperty(t, 'default', {
            enumerable: true,
            value: n,
          });
        }
      : function (t, n) {
          t.default = n;
        }),
  i =
    (this && this.__importStar) ||
    function (i) {
      if (i && i.__esModule) return i;
      var o = {};
      if (null != i) for (var u in i) 'default' !== u && Object.prototype.hasOwnProperty.call(i, u) && t(o, i, u);
      n(o, i);
      return o;
    };

var module904 = i(require('./904'));

function u(t, n) {
  for (var i = n - (t.length % n), o = '', u = 0; u < i; u++) o += '0';

  return '' + o + t;
}

function c(t) {
  return t
    .match(/.{1,2}/g)
    .reverse()
    .join('');
}

require('./1126');

exports.getCmac = function (t, n) {
  var i = module904.algo.CMAC.create(module904.enc.Hex.parse(t));
  return module904.enc.Hex.stringify(i.finalize(module904.enc.Hex.parse(n)));
};

exports.truncateMac = function (t) {
  for (var n = t.match(/.{1,2}/g), i = [], o = 0; o < n.length; o++) o % 2 == 0 && i.push(n[o]);

  return i.join('');
};

exports.xorHex = function (t, n) {
  for (var module891 = require('./891').utils.hex.toBytes(t), module891 = require('./891').utils.hex.toBytes(n), u = '', c = 0; c < 6; c++)
    u += require('./891').utils.hex.fromBytes([module891[c] ^ module891[c]]);

  return u;
};

exports.padHexString = u;

exports.asHexString = function (t, n, i) {
  var o = t.toString(16);
  if (i) o = u(o, i);
  if ('little' === n) o = c(o);
  return o;
};

exports.swapEndianType = c;

exports.numBytesAsHex = function (t) {
  return require('./891').utils.hex.fromBytes([t.length / 2]);
};

exports.encryptAES = function (t, n, i) {
  return require('./891').utils.hex.fromBytes(
    new (require('./891').ModeOfOperation.cbc)(require('./891').utils.hex.toBytes(t), require('./891').utils.hex.toBytes(n)).encrypt(require('./891').utils.hex.toBytes(i))
  );
};

exports.decryptAES = function (t, n, i) {
  return require('./891').utils.hex.fromBytes(
    new (require('./891').ModeOfOperation.cbc)(require('./891').utils.hex.toBytes(t), require('./891').utils.hex.toBytes(n)).decrypt(require('./891').utils.hex.toBytes(i))
  );
};

exports.leftShiftHex = function (t) {
  var n = t.match(/.{1,2}/g),
    i = n.shift();
  return '' + n.join('') + i;
};

exports.rightShiftHex = function (t) {
  var n = t.match(/.{1,2}/g);
  return '' + n.pop() + n.join('');
};

exports.randomHexString = function (t) {
  for (var n = '0123456789ABCDEF', i = '', o = 0; o < t; o++) i += n[Math.floor(Math.random() * n.length)];

  return i;
};
