var module968 = new (require('./968').ec)('secp256k1'),
  n = module968.curve,
  t = n.n.constructor;

function u(u, i) {
  var c = new t(i);
  if (c.cmp(n.p) >= 0) return null;
  var l = (c = c.toRed(n.red)).redSqr().redIMul(c).redIAdd(n.b).redSqrt();
  if ((3 === u) !== l.isOdd()) l = l.redNeg();
  return module968.keyPair({
    pub: {
      x: c,
      y: l,
    },
  });
}

function i(u, i, c) {
  var l = new t(i),
    o = new t(c);
  if (l.cmp(n.p) >= 0 || o.cmp(n.p) >= 0) return null;
  if (((l = l.toRed(n.red)), (o = o.toRed(n.red)), (6 === u || 7 === u) && o.isOdd() !== (7 === u))) return null;
  var f = l.redSqr().redIMul(l);
  return o.redSqr().redISub(f.redIAdd(n.b)).isZero()
    ? module968.keyPair({
        pub: {
          x: l,
          y: o,
        },
      })
    : null;
}

function c(r) {
  var n = r[0];

  switch (n) {
    case 2:
    case 3:
      return 33 !== r.length ? null : u(n, r.subarray(1, 33));

    case 4:
    case 6:
    case 7:
      return 65 !== r.length ? null : i(n, r.subarray(1, 33), r.subarray(33, 65));

    default:
      return null;
  }
}

function l(r, n) {
  for (var t = n.encode(null, 33 === r.length), u = 0; u < r.length; ++u) r[u] = t[u];
}

module.exports = {
  contextRandomize: function () {
    return 0;
  },
  privateKeyVerify: function (r) {
    var u = new t(r);
    return u.cmp(n.n) < 0 && !u.isZero() ? 0 : 1;
  },
  privateKeyNegate: function (r) {
    var u = new t(r),
      i = n.n.sub(u).umod(n.n).toArrayLike(Uint8Array, 'be', 32);
    r.set(i);
    return 0;
  },
  privateKeyTweakAdd: function (r, u) {
    var i = new t(u);
    if (i.cmp(n.n) >= 0) return 1;
    if ((i.iadd(new t(r)), i.cmp(n.n) >= 0 && i.isub(n.n), i.isZero())) return 1;
    var c = i.toArrayLike(Uint8Array, 'be', 32);
    r.set(c);
    return 0;
  },
  privateKeyTweakMul: function (r, u) {
    var i = new t(u);
    if (i.cmp(n.n) >= 0 || i.isZero()) return 1;
    i.imul(new t(r));
    if (i.cmp(n.n) >= 0) i = i.umod(n.n);
    var c = i.toArrayLike(Uint8Array, 'be', 32);
    r.set(c);
    return 0;
  },
  publicKeyVerify: function (r) {
    return null === c(r) ? 1 : 0;
  },
  publicKeyCreate: function (u, i) {
    var c = new t(i);
    if (c.cmp(n.n) >= 0 || c.isZero()) return 1;
    else {
      l(u, module968.keyFromPrivate(i).getPublic());
      return 0;
    }
  },
  publicKeyConvert: function (r, n) {
    var t = c(n);
    if (null === t) return 1;
    else {
      l(r, t.getPublic());
      return 0;
    }
  },
  publicKeyNegate: function (r, n) {
    var t = c(n);
    if (null === t) return 1;
    var u = t.getPublic();
    u.y = u.y.redNeg();
    l(r, u);
    return 0;
  },
  publicKeyCombine: function (r, n) {
    for (var t = new Array(n.length), u = 0; u < n.length; ++u) if (((t[u] = c(n[u])), null === t[u])) return 1;

    for (var i = t[0].getPublic(), o = 1; o < t.length; ++o) i = i.add(t[o].pub);

    if (i.isInfinity()) return 2;
    else {
      l(r, i);
      return 0;
    }
  },
  publicKeyTweakAdd: function (r, u, i) {
    var o = c(u);
    if (null === o) return 1;
    if ((i = new t(i)).cmp(n.n) >= 0) return 2;
    var f = o.getPublic().add(n.g.mul(i));
    if (f.isInfinity()) return 2;
    else {
      l(r, f);
      return 0;
    }
  },
  publicKeyTweakMul: function (r, u, i) {
    var o = c(u);
    return null === o ? 1 : (i = new t(i)).cmp(n.n) >= 0 || i.isZero() ? 2 : (l(r, o.getPublic().mul(i)), 0);
  },
  signatureNormalize: function (u) {
    var i = new t(u.subarray(0, 32)),
      c = new t(u.subarray(32, 64));
    if (i.cmp(n.n) >= 0 || c.cmp(n.n) >= 0) return 1;
    else {
      if (1 === c.cmp(module968.nh)) u.set(n.n.sub(c).toArrayLike(Uint8Array, 'be', 32), 32);
      return 0;
    }
  },
  signatureExport: function (r, u) {
    var i = u.subarray(0, 32),
      c = u.subarray(32, 64);
    if (new t(i).cmp(n.n) >= 0) return 1;
    if (new t(c).cmp(n.n) >= 0) return 1;
    var l = r.output,
      o = l.subarray(4, 37);
    o[0] = 0;
    o.set(i, 1);

    for (var f = 33, s = 0; f > 1 && 0 === o[s] && !(128 & o[s + 1]); --f, ++s);

    if (128 & (o = o.subarray(s))[0]) return 1;
    if (f > 1 && 0 === o[0] && !(128 & o[1])) return 1;
    var y = l.subarray(39, 72);
    y[0] = 0;
    y.set(c, 1);

    for (var v = 33, b = 0; v > 1 && 0 === y[b] && !(128 & y[b + 1]); --v, ++b);

    return 128 & (y = y.subarray(b))[0]
      ? 1
      : v > 1 && 0 === y[0] && !(128 & y[1])
      ? 1
      : ((r.outputlen = 6 + f + v), (l[0] = 48), (l[1] = r.outputlen - 2), (l[2] = 2), (l[3] = o.length), l.set(o, 4), (l[4 + f] = 2), (l[5 + f] = y.length), l.set(y, 6 + f), 0);
  },
  signatureImport: function (r, u) {
    if (u.length < 8) return 1;
    if (u.length > 72) return 1;
    if (48 !== u[0]) return 1;
    if (u[1] !== u.length - 2) return 1;
    if (2 !== u[2]) return 1;
    var i = u[3];
    if (0 === i) return 1;
    if (5 + i >= u.length) return 1;
    if (2 !== u[4 + i]) return 1;
    var c = u[5 + i];
    if (0 === c) return 1;
    if (6 + i + c !== u.length) return 1;
    if (128 & u[4]) return 1;
    if (i > 1 && 0 === u[4] && !(128 & u[5])) return 1;
    if (128 & u[i + 6]) return 1;
    if (c > 1 && 0 === u[i + 6] && !(128 & u[i + 7])) return 1;
    var l = u.subarray(4, 4 + i);
    if ((33 === l.length && 0 === l[0] && (l = l.subarray(1)), l.length > 32)) return 1;
    var o = u.subarray(6 + i);
    if ((33 === o.length && 0 === o[0] && (o = o.slice(1)), o.length > 32)) throw new Error('S length is too long');
    var f = new t(l);
    if (f.cmp(n.n) >= 0) f = new t(0);
    var s = new t(u.subarray(6 + i));
    if (s.cmp(n.n) >= 0) s = new t(0);
    r.set(f.toArrayLike(Uint8Array, 'be', 32), 0);
    r.set(s.toArrayLike(Uint8Array, 'be', 32), 32);
    return 0;
  },
  ecdsaSign: function (u, i, c, l, o) {
    if (o) {
      var f = o;

      o = function (r) {
        var n = f(i, c, null, l, r);
        if (!(n instanceof Uint8Array && 32 === n.length)) throw new Error('This is the way');
        return new t(n);
      };
    }

    var s,
      y = new t(c);
    if (y.cmp(n.n) >= 0 || y.isZero()) return 1;

    try {
      s = module968.sign(i, c, {
        canonical: true,
        k: o,
        pers: l,
      });
    } catch (r) {
      return 1;
    }

    u.signature.set(s.r.toArrayLike(Uint8Array, 'be', 32), 0);
    u.signature.set(s.s.toArrayLike(Uint8Array, 'be', 32), 32);
    u.recid = s.recoveryParam;
    return 0;
  },
  ecdsaVerify: function (u, i, l) {
    var o = {
        r: u.subarray(0, 32),
        s: u.subarray(32, 64),
      },
      f = new t(o.r),
      s = new t(o.s);
    if (f.cmp(n.n) >= 0 || s.cmp(n.n) >= 0) return 1;
    if (1 === s.cmp(module968.nh) || f.isZero() || s.isZero()) return 3;
    var y = c(l);
    if (null === y) return 2;
    var v = y.getPublic();
    return module968.verify(i, o, v) ? 0 : 3;
  },
  ecdsaRecover: function (u, i, c, o) {
    var f,
      s = {
        r: i.slice(0, 32),
        s: i.slice(32, 64),
      },
      y = new t(s.r),
      v = new t(s.s);
    if (y.cmp(n.n) >= 0 || v.cmp(n.n) >= 0) return 1;
    if (y.isZero() || v.isZero()) return 2;

    try {
      f = module968.recoverPubKey(o, s, c);
    } catch (r) {
      return 2;
    }

    l(u, f);
    return 0;
  },
  ecdh: function (u, i, l, o, f, s, y) {
    var v = c(i);
    if (null === v) return 1;
    var b = new t(l);
    if (b.cmp(n.n) >= 0 || b.isZero()) return 2;
    var p = v.getPublic().mul(b);
    if (undefined === f) for (var d = p.encode(null, true), w = module968.hash().update(d).digest(), h = 0; h < 32; ++h) u[h] = w[h];
    else {
      if (!s) s = new Uint8Array(32);

      for (var A = p.getX().toArray('be', 32), k = 0; k < 32; ++k) s[k] = A[k];

      if (!y) y = new Uint8Array(32);

      for (var P = p.getY().toArray('be', 32), K = 0; K < 32; ++K) y[K] = P[K];

      var U = f(s, y, o);
      if (!(U instanceof Uint8Array && U.length === u.length)) return 2;
      u.set(U);
    }
    return 0;
  },
};
