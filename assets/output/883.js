module.exports = {
  encodePayload: function (n, t, o) {
    if (!t) t = 'en';

    var module881 = require('./881').stringToBytes(t + n);

    module881.unshift(t.length);
    return module881;
  },
  decodePayload: function (n) {
    var t = 63 & n[0];
    return require('./881').bytesToString(n.slice(t + 1));
  },
};
