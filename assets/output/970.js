var n = exports;
n.assert = require('./971');
n.toArray = require('./972').toArray;
n.zero2 = require('./972').zero2;
n.toHex = require('./972').toHex;
n.encode = require('./972').encode;

n.getNAF = function (n, t, o) {
  var i = new Array(n.bitLength() ** o + 1);
  i.fill(0);

  for (var u = 1 << (t + 1), c = n.clone(), s = 0; s < i.length; s++) {
    var h,
      l = c.andln(u - 1);

    if (c.isOdd()) {
      h = l > (u >> 1) - 1 ? (u >> 1) - l : l;
      c.isubn(h);
    } else h = 0;

    i[s] = h;
    c.iushrn(1);
  }

  return i;
};

n.getJSF = function (n, t) {
  var o = [[], []];
  n = n.clone();
  t = t.clone();

  for (var i, u = 0, c = 0; n.cmpn(-u) > 0 || t.cmpn(-c) > 0; ) {
    var s,
      h,
      l = (n.andln(3) + u) & 3,
      f = (t.andln(3) + c) & 3;
    if (3 === l) l = -1;
    if (3 === f) f = -1;
    s = 0 == (1 & l) ? 0 : (3 != (i = (n.andln(7) + u) & 7) && 5 !== i) || 2 !== f ? l : -l;
    o[0].push(s);
    h = 0 == (1 & f) ? 0 : (3 != (i = (t.andln(7) + c) & 7) && 5 !== i) || 2 !== l ? f : -f;
    o[1].push(h);
    if (2 * u === s + 1) u = 1 - u;
    if (2 * c === h + 1) c = 1 - c;
    n.iushrn(1);
    t.iushrn(1);
  }

  return o;
};

n.cachedProperty = function (n, t, o) {
  var i = '_' + t;

  n.prototype[t] = function () {
    return undefined !== this[i] ? this[i] : (this[i] = o.call(this));
  };
};

n.parseBytes = function (t) {
  return 'string' == typeof t ? n.toArray(t, 'hex') : t;
};

n.intFromLE = function (n) {
  return new (require('./973'))(n, 'hex', 'le');
};
