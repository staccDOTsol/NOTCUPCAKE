module.exports = {
  encodePayload: function (n) {
    var t, o, O;

    require('./882')
      .RTD_URI_PROTOCOLS.slice(1)
      .forEach(function (o) {
        if (!((t && 'urn:' !== t) || 0 !== n.indexOf(o))) t = o;
      });

    if (!t) t = '';
    O = require('./881').stringToBytes(n.slice(t.length));
    o = require('./882').RTD_URI_PROTOCOLS.indexOf(t);
    O.unshift(o);
    return O;
  },
  decodePayload: function (n) {
    var module882 = require('./882').RTD_URI_PROTOCOLS[n[0]];

    if (!module882) module882 = '';
    return module882 + require('./881').bytesToString(n.slice(1));
  },
};
