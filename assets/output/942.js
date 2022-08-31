module.exports = function (o) {
  if (o.length >= 255) throw new TypeError('Alphabet too long');

  for (var t = new Uint8Array(256), n = 0; n < t.length; n++) t[n] = 255;

  for (var f = 0; f < o.length; f++) {
    var i = o.charAt(f),
      h = i.charCodeAt(0);
    if (255 !== t[h]) throw new TypeError(i + ' is ambiguous');
    t[h] = f;
  }

  var c = o.length,
    u = o.charAt(0),
    l = Math.log(c) / Math.log(256),
    v = Math.log(256) / Math.log(c);

  function w(o) {
    if ('string' != typeof o) throw new TypeError('Expected String');
    if (0 === o.length) return require('./943').Buffer.alloc(0);

    for (var n = 0, f = 0, i = 0; o[n] === u; ) {
      f++;
      n++;
    }

    for (var h = ((o.length - n) * l + 1) >>> 0, v = new Uint8Array(h); o[n]; ) {
      var w = t[o.charCodeAt(n)];
      if (255 === w) return;

      for (var y = 0, s = h - 1; (0 !== w || y < i) && -1 !== s; s--, y++) {
        w += (c * v[s]) >>> 0;
        v[s] = w % 256 >>> 0;
        w = (w / 256) >>> 0;
      }

      if (0 !== w) throw new Error('Non-zero carry');
      i = y;
      n++;
    }

    for (var A = h - i; A !== h && 0 === v[A]; ) A++;

    var module943 = require('./943').Buffer.allocUnsafe(f + (h - A));

    module943.fill(0, 0, f);

    for (var E = f; A !== h; ) module943[E++] = v[A++];

    return module943;
  }

  return {
    encode: function (t) {
      if (((Array.isArray(t) || t instanceof Uint8Array) && (t = require('./943').Buffer.from(t)), !require('./943').Buffer.isBuffer(t))) throw new TypeError('Expected Buffer');
      if (0 === t.length) return '';

      for (var n = 0, f = 0, i = 0, h = t.length; i !== h && 0 === t[i]; ) {
        i++;
        n++;
      }

      for (var l = ((h - i) * v + 1) >>> 0, w = new Uint8Array(l); i !== h; ) {
        for (var y = t[i], s = 0, A = l - 1; (0 !== y || s < f) && -1 !== A; A--, s++) {
          y += (256 * w[A]) >>> 0;
          w[A] = y % c >>> 0;
          y = (y / c) >>> 0;
        }

        if (0 !== y) throw new Error('Non-zero carry');
        f = s;
        i++;
      }

      for (var p = l - f; p !== l && 0 === w[p]; ) p++;

      for (var E = u.repeat(n); p < l; ++p) E += o.charAt(w[p]);

      return E;
    },
    decodeUnsafe: w,
    decode: function (o) {
      var t = w(o);
      if (t) return t;
      throw new Error('Non-base' + c + ' character');
    },
  };
};
