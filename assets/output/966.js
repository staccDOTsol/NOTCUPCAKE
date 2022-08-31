function t(t, o) {
  var i = ('undefined' != typeof Symbol && t[Symbol.iterator]) || t['@@iterator'];
  if (i) return (i = i.call(t)).next.bind(i);

  if (Array.isArray(t) || (i = n(t)) || (o && t && 'number' == typeof t.length)) {
    if (i) t = i;
    var c = 0;
    return function () {
      return c >= t.length
        ? {
            done: true,
          }
        : {
            done: false,
            value: t[c++],
          };
    };
  }

  throw new TypeError('Invalid attempt to iterate non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.');
}

function n(t, n) {
  if (t) {
    if ('string' == typeof t) return o(t, n);
    var i = Object.prototype.toString.call(t).slice(8, -1);
    if ('Object' === i && t.constructor) i = t.constructor.name;
    return 'Map' === i || 'Set' === i ? Array.from(t) : 'Arguments' === i || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(i) ? o(t, n) : undefined;
  }
}

function o(t, n) {
  if (null == n || n > t.length) n = t.length;

  for (var o = 0, i = new Array(n); o < n; o++) i[o] = t[o];

  return i;
}

var i = 'Impossible case. Please create issue.',
  c = 'The tweak was out of range or the resulted private key is invalid',
  u = 'The tweak was out of range or equal to zero',
  s = 'Unknow error on context randomization',
  l = 'Private Key is invalid',
  w = 'Public Key could not be parsed',
  h = 'Public Key serialization error',
  p = 'The sum of the public keys is not valid',
  y = 'Signature could not be parsed',
  v = 'The nonce generation function failed, or the private key was invalid',
  f = 'Public key could not be recover',
  b = 'Scalar was invalid (zero or overflow)';

function E(t, n) {
  if (!t) throw new Error(n);
}

function k(t, n, o) {
  if ((E(n instanceof Uint8Array, 'Expected ' + t + ' to be an Uint8Array'), undefined !== o))
    if (Array.isArray(o)) {
      var i = 'Expected ' + t + ' to be an Uint8Array with length [' + o.join(', ') + ']';
      E(o.includes(n.length), i);
    } else {
      var c = 'Expected ' + t + ' to be an Uint8Array with length ' + o;
      E(n.length === o, c);
    }
}

function K(t) {
  E('Boolean' === A(t), 'Expected compressed to be a Boolean');
}

function x() {
  var t =
      arguments.length > 0 && undefined !== arguments[0]
        ? arguments[0]
        : function (t) {
            return new Uint8Array(t);
          },
    n = arguments.length > 1 ? arguments[1] : undefined;
  if ('function' == typeof t) t = t(n);
  k('output', t, n);
  return t;
}

function A(t) {
  return Object.prototype.toString.call(t).slice(8, -1);
}

module.exports = function (n) {
  return {
    contextRandomize: function (t) {
      switch ((E(null === t || t instanceof Uint8Array, 'Expected seed to be an Uint8Array or null'), null !== t && k('seed', t, 32), n.contextRandomize(t))) {
        case 1:
          throw new Error(s);
      }
    },
    privateKeyVerify: function (t) {
      k('private key', t, 32);
      return 0 === n.privateKeyVerify(t);
    },
    privateKeyNegate: function (t) {
      switch ((k('private key', t, 32), n.privateKeyNegate(t))) {
        case 0:
          return t;

        case 1:
          throw new Error(i);
      }
    },
    privateKeyTweakAdd: function (t, o) {
      switch ((k('private key', t, 32), k('tweak', o, 32), n.privateKeyTweakAdd(t, o))) {
        case 0:
          return t;

        case 1:
          throw new Error(c);
      }
    },
    privateKeyTweakMul: function (t, o) {
      switch ((k('private key', t, 32), k('tweak', o, 32), n.privateKeyTweakMul(t, o))) {
        case 0:
          return t;

        case 1:
          throw new Error(u);
      }
    },
    publicKeyVerify: function (t) {
      k('public key', t, [33, 65]);
      return 0 === n.publicKeyVerify(t);
    },
    publicKeyCreate: function (t) {
      var o = !(arguments.length > 1 && undefined !== arguments[1]) || arguments[1],
        i = arguments.length > 2 ? arguments[2] : undefined;

      switch ((k('private key', t, 32), K(o), (i = x(i, o ? 33 : 65)), n.publicKeyCreate(i, t))) {
        case 0:
          return i;

        case 1:
          throw new Error(l);

        case 2:
          throw new Error(h);
      }
    },
    publicKeyConvert: function (t) {
      var o = !(arguments.length > 1 && undefined !== arguments[1]) || arguments[1],
        i = arguments.length > 2 ? arguments[2] : undefined;

      switch ((k('public key', t, [33, 65]), K(o), (i = x(i, o ? 33 : 65)), n.publicKeyConvert(i, t))) {
        case 0:
          return i;

        case 1:
          throw new Error(w);

        case 2:
          throw new Error(h);
      }
    },
    publicKeyNegate: function (t) {
      var o = !(arguments.length > 1 && undefined !== arguments[1]) || arguments[1],
        c = arguments.length > 2 ? arguments[2] : undefined;

      switch ((k('public key', t, [33, 65]), K(o), (c = x(c, o ? 33 : 65)), n.publicKeyNegate(c, t))) {
        case 0:
          return c;

        case 1:
          throw new Error(w);

        case 2:
          throw new Error(i);

        case 3:
          throw new Error(h);
      }
    },
    publicKeyCombine: function (o) {
      var i = !(arguments.length > 1 && undefined !== arguments[1]) || arguments[1],
        c = arguments.length > 2 ? arguments[2] : undefined;
      E(Array.isArray(o), 'Expected public keys to be an Array');
      E(o.length > 0, 'Expected public keys array will have more than zero items');

      for (var u, s = t(o); !(u = s()).done; ) {
        k('public key', u.value, [33, 65]);
      }

      switch ((K(i), (c = x(c, i ? 33 : 65)), n.publicKeyCombine(c, o))) {
        case 0:
          return c;

        case 1:
          throw new Error(w);

        case 2:
          throw new Error(p);

        case 3:
          throw new Error(h);
      }
    },
    publicKeyTweakAdd: function (t, o) {
      var i = !(arguments.length > 2 && undefined !== arguments[2]) || arguments[2],
        u = arguments.length > 3 ? arguments[3] : undefined;

      switch ((k('public key', t, [33, 65]), k('tweak', o, 32), K(i), (u = x(u, i ? 33 : 65)), n.publicKeyTweakAdd(u, t, o))) {
        case 0:
          return u;

        case 1:
          throw new Error(w);

        case 2:
          throw new Error(c);
      }
    },
    publicKeyTweakMul: function (t, o) {
      var i = !(arguments.length > 2 && undefined !== arguments[2]) || arguments[2],
        c = arguments.length > 3 ? arguments[3] : undefined;

      switch ((k('public key', t, [33, 65]), k('tweak', o, 32), K(i), (c = x(c, i ? 33 : 65)), n.publicKeyTweakMul(c, t, o))) {
        case 0:
          return c;

        case 1:
          throw new Error(w);

        case 2:
          throw new Error(u);
      }
    },
    signatureNormalize: function (t) {
      switch ((k('signature', t, 64), n.signatureNormalize(t))) {
        case 0:
          return t;

        case 1:
          throw new Error(y);
      }
    },
    signatureExport: function (t, o) {
      k('signature', t, 64);
      var c = {
        output: (o = x(o, 72)),
        outputlen: 72,
      };

      switch (n.signatureExport(c, t)) {
        case 0:
          return o.slice(0, c.outputlen);

        case 1:
          throw new Error(y);

        case 2:
          throw new Error(i);
      }
    },
    signatureImport: function (t, o) {
      switch ((k('signature', t), (o = x(o, 64)), n.signatureImport(o, t))) {
        case 0:
          return o;

        case 1:
          throw new Error(y);

        case 2:
          throw new Error(i);
      }
    },
    ecdsaSign: function (t, o) {
      var c = arguments.length > 2 && undefined !== arguments[2] ? arguments[2] : {},
        u = arguments.length > 3 ? arguments[3] : undefined;
      k('message', t, 32);
      k('private key', o, 32);
      E('Object' === A(c), 'Expected options to be an Object');
      if (undefined !== c.data) k('options.data', c.data);
      if (undefined !== c.noncefn) E('Function' === A(c.noncefn), 'Expected options.noncefn to be a Function');
      var s = {
        signature: (u = x(u, 64)),
        recid: null,
      };

      switch (n.ecdsaSign(s, t, o, c.data, c.noncefn)) {
        case 0:
          return s;

        case 1:
          throw new Error(v);

        case 2:
          throw new Error(i);
      }
    },
    ecdsaVerify: function (t, o, i) {
      switch ((k('signature', t, 64), k('message', o, 32), k('public key', i, [33, 65]), n.ecdsaVerify(t, o, i))) {
        case 0:
          return true;

        case 3:
          return false;

        case 1:
          throw new Error(y);

        case 2:
          throw new Error(w);
      }
    },
    ecdsaRecover: function (t, o, c) {
      var u = !(arguments.length > 3 && undefined !== arguments[3]) || arguments[3],
        s = arguments.length > 4 ? arguments[4] : undefined;

      switch (
        (k('signature', t, 64),
        E('Number' === A(o) && o >= 0 && o <= 3, 'Expected recovery id to be a Number within interval [0, 3]'),
        k('message', c, 32),
        K(u),
        (s = x(s, u ? 33 : 65)),
        n.ecdsaRecover(s, t, o, c))
      ) {
        case 0:
          return s;

        case 1:
          throw new Error(y);

        case 2:
          throw new Error(f);

        case 3:
          throw new Error(i);
      }
    },
    ecdh: function (t, o) {
      var i = arguments.length > 2 && undefined !== arguments[2] ? arguments[2] : {},
        c = arguments.length > 3 ? arguments[3] : undefined;

      switch (
        (k('public key', t, [33, 65]),
        k('private key', o, 32),
        E('Object' === A(i), 'Expected options to be an Object'),
        undefined !== i.data && k('options.data', i.data),
        undefined !== i.hashfn
          ? (E('Function' === A(i.hashfn), 'Expected options.hashfn to be a Function'),
            undefined !== i.xbuf && k('options.xbuf', i.xbuf, 32),
            undefined !== i.ybuf && k('options.ybuf', i.ybuf, 32),
            k('output', c))
          : (c = x(c, 32)),
        n.ecdh(c, t, o, i.data, i.hashfn, i.xbuf, i.ybuf))
      ) {
        case 0:
          return c;

        case 1:
          throw new Error(w);

        case 2:
          throw new Error(b);
      }
    },
  };
};
