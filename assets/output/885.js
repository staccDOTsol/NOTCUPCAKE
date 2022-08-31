var t = [16, 14],
  n = [16, 69],
  l = [16, 3],
  o = [16, 39],
  i = {
    OPEN: [0, 0],
    WPA2_PSK: [0, 32],
  };

function c(t, n) {
  if (t.length !== n.length) return false;

  for (var l = 0; l < t.length; l++) if (t[l] !== n[l]) return false;

  return true;
}

function h(t) {
  var n = t.slice(0, 2),
    l = t.slice(2, 4);
  return {
    type: n,
    length: l,
    value: t.slice(4, 4 + (256 * l[0] + l[1])),
  };
}

module.exports = {
  encodePayload: function (c) {
    var h = c.ssid,
      u = c.networkKey,
      s = c.authType,
      y = undefined === s ? i.WPA2_PSK : s;
    if ('string' != typeof h || 'string' != typeof u) throw new Error('');
    h = require('./881').stringToBytes(h);
    u = require('./881').stringToBytes(u);
    var v,
      module35 = [].concat(l, [0, y.length], require('./35')(y)),
      module35 = [].concat(n, [0, h.length], require('./35')(h)),
      module35 = [].concat(o, [0, u.length], require('./35')(u)),
      module35 = [].concat(require('./35')(module35), require('./35')(module35), require('./35')(module35));
    return [].concat(t, require('./35')((v = module35).length > 255 ? [Math.floor(v.length / 256), v.length % 256] : [0, v.length]), require('./35')(module35));
  },
  decodePayload: function (i) {
    for (var u = {}; i.length > 0; ) {
      var s = h(i),
        y = s.type,
        v = s.value;
      if (((i = i.slice(4 + v.length, i.length)), c(t, y)))
        for (var f = v; f.length > 0; ) {
          var p = h(f);
          f = f.slice(4 + p.value.length, f.length);
          if (c(l, p.type)) u.authType = p.value;
          else if (c(n, p.type)) u.ssid = require('./881').bytesToString(p.value);
          else if (c(o, p.type)) u.networkKey = require('./881').bytesToString(p.value);
        }
    }

    return u;
  },
  authTypes: i,
};
