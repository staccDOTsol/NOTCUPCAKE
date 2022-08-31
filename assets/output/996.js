function t(t, n) {
  this.ec = t;
  this.priv = null;
  this.pub = null;
  if (n.priv) this._importPrivate(n.priv, n.privEnc);
  if (n.pub) this._importPublic(n.pub, n.pubEnc);
}

module.exports = t;

t.fromPublic = function (n, u, p) {
  return u instanceof t
    ? u
    : new t(n, {
        pub: u,
        pubEnc: p,
      });
};

t.fromPrivate = function (n, u, p) {
  return u instanceof t
    ? u
    : new t(n, {
        priv: u,
        privEnc: p,
      });
};

t.prototype.validate = function () {
  var t = this.getPublic();
  return t.isInfinity()
    ? {
        result: false,
        reason: 'Invalid public key',
      }
    : t.validate()
    ? t.mul(this.ec.curve.n).isInfinity()
      ? {
          result: true,
          reason: null,
        }
      : {
          result: false,
          reason: 'Public key * N != O',
        }
    : {
        result: false,
        reason: 'Public key is not a point',
      };
};

t.prototype.getPublic = function (t, n) {
  if ('string' == typeof t) {
    n = t;
    t = null;
  }

  if (!this.pub) this.pub = this.ec.g.mul(this.priv);
  return n ? this.pub.encode(n, t) : this.pub;
};

t.prototype.getPrivate = function (t) {
  return 'hex' === t ? this.priv.toString(16, 2) : this.priv;
};

t.prototype._importPrivate = function (t, n) {
  this.priv = new (require('./973'))(t, n || 16);
  this.priv = this.priv.umod(this.ec.curve.n);
};

t.prototype._importPublic = function (t, n) {
  if (t.x || t.y) {
    if ('mont' === this.ec.curve.type) require('./970').assert(t.x, 'Need x coordinate');
    else if (!('short' !== this.ec.curve.type && 'edwards' !== this.ec.curve.type)) require('./970').assert(t.x && t.y, 'Need both x and y coordinate');
    return void (this.pub = this.ec.curve.point(t.x, t.y));
  }

  this.pub = this.ec.curve.decodePoint(t, n);
};

t.prototype.derive = function (t) {
  if (!t.validate()) require('./970').assert(t.validate(), 'public point not validated');
  return t.mul(this.priv).getX();
};

t.prototype.sign = function (t, n, u) {
  return this.ec.sign(t, this, n, u);
};

t.prototype.verify = function (t, n) {
  return this.ec.verify(t, n, this);
};

t.prototype.inspect = function () {
  return '<Key priv: ' + (this.priv && this.priv.toString(16, 2)) + ' pub: ' + (this.pub && this.pub.inspect()) + ' >';
};
