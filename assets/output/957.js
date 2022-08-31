var t,
  module953 =
    (t = require('./953')) && t.__esModule
      ? t
      : {
          default: t,
        };

var s = function (t) {
  if (!module953.default(t)) throw TypeError('Invalid UUID');
  var s,
    l = new Uint8Array(16);
  l[0] = (s = parseInt(t.slice(0, 8), 16)) >>> 24;
  l[1] = (s >>> 16) & 255;
  l[2] = (s >>> 8) & 255;
  l[3] = 255 & s;
  l[4] = (s = parseInt(t.slice(9, 13), 16)) >>> 8;
  l[5] = 255 & s;
  l[6] = (s = parseInt(t.slice(14, 18), 16)) >>> 8;
  l[7] = 255 & s;
  l[8] = (s = parseInt(t.slice(19, 23), 16)) >>> 8;
  l[9] = 255 & s;
  l[10] = ((s = parseInt(t.slice(24, 36), 16)) / 1099511627776) & 255;
  l[11] = (s / 4294967296) & 255;
  l[12] = (s >>> 24) & 255;
  l[13] = (s >>> 16) & 255;
  l[14] = (s >>> 8) & 255;
  l[15] = 255 & s;
  return l;
};

exports.default = s;
