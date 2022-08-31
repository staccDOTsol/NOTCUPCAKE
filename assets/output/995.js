function t(e) {
  if (!(this instanceof t)) return new t(e);

  if ('string' == typeof e) {
    require('./970').assert(Object.prototype.hasOwnProperty.call(require('./981'), e), 'Unknown curve ' + e);

    e = require('./981')[e];
  }

  if (e instanceof require('./981').PresetCurve)
    e = {
      curve: e,
    };
  this.curve = e.curve.curve;
  this.n = this.curve.n;
  this.nh = this.n.ushrn(1);
  this.g = this.curve.g;
  this.g = e.curve.g;
  this.g.precompute(e.curve.n.bitLength() + 1);
  this.hash = e.hash || e.curve.hash;
}

module.exports = t;

t.prototype.keyPair = function (t) {
  return new (require('./996'))(this, t);
};

t.prototype.keyFromPrivate = function (t, e) {
  return require('./996').fromPrivate(this, t, e);
};

t.prototype.keyFromPublic = function (t, e) {
  return require('./996').fromPublic(this, t, e);
};

t.prototype.genKeyPair = function (t) {
  if (!t) t = {};

  for (
    var module974 = new (require('./997'))({
        hash: this.hash,
        pers: t.pers,
        persEnc: t.persEnc || 'utf8',
        entropy: t.entropy || require('./974')(this.hash.hmacStrength),
        entropyEnc: (t.entropy && t.entropyEnc) || 'utf8',
        nonce: this.n.toArray(),
      }),
      r = this.n.byteLength(),
      module973 = this.n.sub(new (require('./973'))(2));
    ;

  ) {
    var module973 = new (require('./973'))(module974.generate(r));

    if (!(module973.cmp(module973) > 0)) {
      module973.iaddn(1);
      return this.keyFromPrivate(module973);
    }
  }
};

t.prototype._truncateToN = function (t, e) {
  var r = 8 * t.byteLength() - this.n.bitLength();
  if (r > 0) t = t.ushrn(r);
  return !e && t.cmp(this.n) >= 0 ? t.sub(this.n) : t;
};

t.prototype.sign = function (t, e, r, n) {
  if ('object' == typeof r) {
    n = r;
    r = null;
  }

  if (!n) n = {};
  e = this.keyFromPrivate(e, r);
  t = this._truncateToN(new (require('./973'))(t, 16));

  for (
    var i = this.n.byteLength(),
      s = e.getPrivate().toArray('be', i),
      o = t.toArray('be', i),
      module997 = new (require('./997'))({
        hash: this.hash,
        entropy: s,
        nonce: o,
        pers: n.pers,
        persEnc: n.persEnc || 'utf8',
      }),
      module973 = this.n.sub(new (require('./973'))(1)),
      c = 0;
    ;
    c++
  ) {
    var module973 = n.k ? n.k(c) : new (require('./973'))(module997.generate(this.n.byteLength()));

    if (!((module973 = this._truncateToN(module973, true)).cmpn(1) <= 0 || module973.cmp(module973) >= 0)) {
      var v = this.g.mul(module973);

      if (!v.isInfinity()) {
        var y = v.getX(),
          f = y.umod(this.n);

        if (0 !== f.cmpn(0)) {
          var l = module973.invm(this.n).mul(f.mul(e.getPrivate()).iadd(t));

          if (0 !== (l = l.umod(this.n)).cmpn(0)) {
            var b = (v.getY().isOdd() ? 1 : 0) | (0 !== y.cmp(f) ? 2 : 0);

            if (n.canonical && l.cmp(this.nh) > 0) {
              l = this.n.sub(l);
              b ^= 1;
            }

            return new (require('./998'))({
              r: f,
              s: l,
              recoveryParam: b,
            });
          }
        }
      }
    }
  }
};

t.prototype.verify = function (t, e, r, n) {
  t = this._truncateToN(new (require('./973'))(t, 16));
  r = this.keyFromPublic(r, n);
  var module998 = (e = new (require('./998'))(e, 'hex')).r,
    s = e.s;
  if (module998.cmpn(1) < 0 || module998.cmp(this.n) >= 0) return false;
  if (s.cmpn(1) < 0 || s.cmp(this.n) >= 0) return false;
  var o,
    h = s.invm(this.n),
    u = h.mul(t).umod(this.n),
    c = h.mul(module998).umod(this.n);
  return this.curve._maxwellTrick
    ? !(o = this.g.jmulAdd(u, r.getPublic(), c)).isInfinity() && o.eqXToP(module998)
    : !(o = this.g.mulAdd(u, r.getPublic(), c)).isInfinity() && 0 === o.getX().umod(this.n).cmp(module998);
};

t.prototype.recoverPubKey = function (t, e, r, n) {
  require('./970').assert((3 & r) === r, 'The recovery param is more than two bits');

  e = new (require('./998'))(e, n);
  var i = this.n,
    module973 = new (require('./973'))(t),
    o = e.r,
    h = e.s,
    u = 1 & r,
    c = r >> 1;
  if (o.cmp(this.curve.p.umod(this.curve.n)) >= 0 && c) throw new Error('Unable to find sencond key candinate');
  o = c ? this.curve.pointFromX(o.add(this.curve.n), u) : this.curve.pointFromX(o, u);
  var p = e.r.invm(i),
    v = i.sub(module973).mul(p).umod(i),
    y = h.mul(p).umod(i);
  return this.g.mulAdd(v, o, y);
};

t.prototype.getKeyRecoveryParam = function (t, e, r, n) {
  if (null !== (e = new (require('./998'))(e, n)).recoveryParam) return e.recoveryParam;

  for (var i = 0; i < 4; i++) {
    var s;

    try {
      s = this.recoverPubKey(t, e, i);
    } catch (t) {
      continue;
    }

    if (s.eq(r)) return i;
  }

  throw new Error('Unable to find valid recovery factor');
};
