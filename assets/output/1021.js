function n(n, o) {
  var i = ('undefined' != typeof Symbol && n[Symbol.iterator]) || n['@@iterator'];
  if (i) return (i = i.call(n)).next.bind(i);

  if (Array.isArray(n) || (i = t(n)) || (o && n && 'number' == typeof n.length)) {
    if (i) n = i;
    var u = 0;
    return function () {
      return u >= n.length
        ? {
            done: true,
          }
        : {
            done: false,
            value: n[u++],
          };
    };
  }

  throw new TypeError('Invalid attempt to iterate non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.');
}

function t(n, t) {
  if (n) {
    if ('string' == typeof n) return o(n, t);
    var i = Object.prototype.toString.call(n).slice(8, -1);
    if ('Object' === i && n.constructor) i = n.constructor.name;
    return 'Map' === i || 'Set' === i ? Array.from(n) : 'Arguments' === i || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(i) ? o(n, t) : undefined;
  }
}

function o(n, t) {
  if (null == t || t > n.length) t = n.length;

  for (var o = 0, i = new Array(t); o < t; o++) i[o] = n[o];

  return i;
}

var i = 2147483647,
  u = /^xn--/,
  f = /[^\0-\x7E]/,
  l = /[\x2E\u3002\uFF0E\uFF61]/g,
  c = {
    overflow: 'Overflow: input needs wider integers to process',
    'not-basic': 'Illegal input >= 0x80 (not a basic code point)',
    'invalid-input': 'Invalid input',
  },
  v = Math.floor,
  s = String.fromCharCode;

function p(n) {
  throw new RangeError(c[n]);
}

function h(n, t) {
  for (var o = [], i = n.length; i--; ) o[i] = t(n[i]);

  return o;
}

function b(n, t) {
  var o = n.split('@'),
    i = '';

  if (o.length > 1) {
    i = o[0] + '@';
    n = o[1];
  }

  return i + h((n = n.replace(l, '.')).split('.'), t).join('.');
}

function y(n) {
  for (var t = [], o = 0, i = n.length; o < i; ) {
    var u = n.charCodeAt(o++);

    if (u >= 55296 && u <= 56319 && o < i) {
      var f = n.charCodeAt(o++);
      if (56320 == (64512 & f)) t.push(((1023 & u) << 10) + (1023 & f) + 65536);
      else {
        t.push(u);
        o--;
      }
    } else t.push(u);
  }

  return t;
}

var m = function (n, t) {
    return n + 22 + 75 * (n < 26) - ((0 != t) << 5);
  },
  w = function (n, t, o) {
    var i = 0;

    for (n = o ? v(n / 700) : n >> 1, n += v(n / t); n > 455; i += 36) n = v(n / 35);

    return v(i + (36 * n) / (n + 38));
  },
  A = function (n) {
    var t,
      o = [],
      u = n.length,
      f = 0,
      l = 128,
      c = 72,
      s = n.lastIndexOf('-');
    if (s < 0) s = 0;

    for (var h = 0; h < s; ++h) {
      if (n.charCodeAt(h) >= 128) p('not-basic');
      o.push(n.charCodeAt(h));
    }

    for (var b = s > 0 ? s + 1 : 0; b < u; ) {
      for (var y = f, m = 1, A = 36; ; A += 36) {
        if (b >= u) p('invalid-input');
        var C = (t = n.charCodeAt(b++)) - 48 < 10 ? t - 22 : t - 65 < 26 ? t - 65 : t - 97 < 26 ? t - 97 : 36;
        if (C >= 36 || C > v((i - f) / m)) p('overflow');
        f += C * m;
        var S = A <= c ? 1 : A >= c + 26 ? 26 : A - c;
        if (C < S) break;
        var x = 36 - S;
        if (m > v(i / x)) p('overflow');
        m *= x;
      }

      var I = o.length + 1;
      c = w(f - y, I, 0 == y);
      if (v(f / I) > i - l) p('overflow');
      l += v(f / I);
      f %= I;
      o.splice(f++, 0, l);
    }

    return String.fromCodePoint.apply(String, o);
  },
  C = function (t) {
    for (var o, u = [], f = (t = y(t)).length, l = 128, c = 0, h = 72, b = n(t); !(o = b()).done; ) {
      var A = o.value;
      if (A < 128) u.push(s(A));
    }

    var C = u.length,
      S = C;

    for (C && u.push('-'); S < f; ) {
      for (var x, I = i, j = n(t); !(x = j()).done; ) {
        var E = x.value;
        if (E >= l && E < I) I = E;
      }

      var F = S + 1;
      if (I - l > v((i - c) / F)) p('overflow');
      c += (I - l) * F;
      l = I;

      for (var O, k = n(t); !(O = k()).done; ) {
        var M = O.value;

        if ((M < l && ++c > i && p('overflow'), M == l)) {
          for (var P = c, U = 36; ; U += 36) {
            var _ = U <= h ? 1 : U >= h + 26 ? 26 : U - h;

            if (P < _) break;
            var L = P - _,
              R = 36 - _;
            u.push(s(m(_ + (L % R), 0)));
            P = v(L / R);
          }

          u.push(s(m(P, 0)));
          h = w(c, F, S == C);
          c = 0;
          ++S;
        }
      }

      ++c;
      ++l;
    }

    return u.join('');
  },
  module35 = {
    version: '2.1.0',
    ucs2: {
      decode: y,
      encode: function (n) {
        return String.fromCodePoint.apply(String, require('./35')(n));
      },
    },
    decode: A,
    encode: C,
    toASCII: function (n) {
      return b(n, function (n) {
        return f.test(n) ? 'xn--' + C(n) : n;
      });
    },
    toUnicode: function (n) {
      return b(n, function (n) {
        return u.test(n) ? A(n.slice(4).toLowerCase()) : n;
      });
    },
  };

module.exports = module35;
