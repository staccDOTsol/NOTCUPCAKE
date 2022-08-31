function t(t, n, s, i) {
  if (undefined === t || undefined === n || undefined === s || undefined === i) throw new Error('missing required param');
  if (n instanceof Array) n = require('./881').bytesToString(n);
  if (!(s instanceof Array)) s = require('./881').stringToBytes(s);
  if (!(i instanceof Array)) i = require('./881').stringToBytes(i);
  return {
    tnf: t,
    type: n,
    id: s,
    payload: i,
  };
}

module.exports = {
  createNdefRecord: t,
  encodeNdefMessage: function (t) {
    var n,
      s,
      i,
      o,
      f,
      c,
      h,
      p = function (t) {
        var n = t.mb,
          s = t.me,
          i = t.cf,
          o = t.sr,
          f = t.il,
          c = t.tnf;
        if (n) c |= 128;
        if (s) c |= 64;
        if (i) c |= 32;
        if (o) c |= 16;
        if (f) c |= 8;
        return c;
      },
      u = [];

    for (f = 0; f < t.length; f++) {
      n = p({
        mb: 0 === f,
        me: f === t.length - 1,
        cf: false,
        sr: (c = t[f].payload.length < 255),
        il: (h = t[f].id.length > 0),
        tnf: t[f].tnf,
      });
      u.push(n);
      s = require('./881').stringToBytes(t[f].type);
      u.push(s.length);

      if (c) {
        i = t[f].payload.length;
        u.push(i);
      } else {
        i = t[f].payload.length;
        u.push(i >> 24);
        u.push(i >> 16);
        u.push(i >> 8);
        u.push(255 & i);
      }

      if (h) {
        o = t[f].id.length;
        u.push(o);
      }

      u = u.concat(s);
      if (h) u = u.concat(t[f].id);
      u = u.concat(t[f].payload);
    }

    return u;
  },
  decodeNdefMessage: function (n) {
    var s,
      i = function (t) {
        return {
          mb: 0 != (128 & t),
          me: 0 != (64 & t),
          cf: 0 != (32 & t),
          sr: 0 != (16 & t),
          il: 0 != (8 & t),
          tnf: 7 & t,
        };
      };

    if (!(n instanceof Array)) throw new Error('ndef.decodeMessage requires a Buffer or an Array of bytes');
    s = (s = n.slice(0)).slice(0);

    for (
      var o, f = [], c = 0, h = 0, p = 0, u = [], y = [], l = [];
      s.length &&
      ((o = i(s.shift())),
      (c = s.shift()),
      (h = o.sr ? s.shift() : ((255 & s.shift()) << 24) | ((255 & s.shift()) << 16) | ((255 & s.shift()) << 8) | (255 & s.shift())),
      (p = o.il ? s.shift() : 0),
      (u = s.splice(0, c)),
      (y = s.splice(0, p)),
      (l = s.splice(0, h)),
      f.push(t(o.tnf, u, y, l)),
      !o.me);

    );

    return f;
  },
  equalToRecordType: function (t, n, s) {
    return t.tnf === n ? (Array.isArray(t.type) ? require('./881').bytesToString(t.type) === s : t.type === s) : t.tnf === n && t.type === s;
  },
};
