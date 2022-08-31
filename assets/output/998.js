function r(t, n) {
  if (t instanceof r) return t;

  if (!this._importDER(t, n)) {
    require('./970').assert(t.r && t.s, 'Signature without r or s');

    this.r = new (require('./973'))(t.r, 16);
    this.s = new (require('./973'))(t.s, 16);
    if (undefined === t.recoveryParam) this.recoveryParam = null;
    else this.recoveryParam = t.recoveryParam;
  }
}

function t() {
  this.place = 0;
}

function n(r, t) {
  var n = r[t.place++];
  if (!(128 & n)) return n;
  var i = 15 & n;
  if (0 === i || i > 4) return false;

  for (var c = 0, o = 0, s = t.place; o < i; o++, s++) {
    c <<= 8;
    c |= r[s];
    c >>>= 0;
  }

  return !(c <= 127) && ((t.place = s), c);
}

function i(r) {
  for (var t = 0, n = r.length - 1; !r[t] && !(128 & r[t + 1]) && t < n; ) t++;

  return 0 === t ? r : r.slice(t);
}

function c(r, t) {
  if (t < 128) r.push(t);
  else {
    var n = 1 + ((Math.log(t) / Math.LN2) >>> 3);

    for (r.push(128 | n); --n; ) r.push((t >>> (n << 3)) & 255);

    r.push(t);
  }
}

module.exports = r;

r.prototype._importDER = function (r, i) {
  r = require('./970').toArray(r, i);
  var c = new t();
  if (48 !== r[c.place++]) return false;
  var o = n(r, c);
  if (false === o) return false;
  if (o + c.place !== r.length) return false;
  if (2 !== r[c.place++]) return false;
  var s = n(r, c);
  if (false === s) return false;
  var u = r.slice(c.place, s + c.place);
  if (((c.place += s), 2 !== r[c.place++])) return false;
  var l = n(r, c);
  if (false === l) return false;
  if (r.length !== l + c.place) return false;
  var f = r.slice(c.place, l + c.place);

  if (0 === u[0]) {
    if (!(128 & u[1])) return false;
    u = u.slice(1);
  }

  if (0 === f[0]) {
    if (!(128 & f[1])) return false;
    f = f.slice(1);
  }

  this.r = new (require('./973'))(u);
  this.s = new (require('./973'))(f);
  this.recoveryParam = null;
  return true;
};

r.prototype.toDER = function (r) {
  var t = this.r.toArray(),
    n = this.s.toArray();

  for (128 & t[0] && (t = [0].concat(t)), 128 & n[0] && (n = [0].concat(n)), t = i(t), n = i(n); !(n[0] || 128 & n[1]); ) n = n.slice(1);

  var o = [2];
  c(o, t.length);
  (o = o.concat(t)).push(2);
  c(o, n.length);
  var s = o.concat(n),
    u = [48];
  c(u, s.length);
  u = u.concat(s);
  return require('./970').encode(u, r);
};
