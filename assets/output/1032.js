!(function (n) {
  'use strict';

  function i(n, i, t) {
    return i <= n && n <= t;
  }

  if (undefined !== module && module.exports && !n['encoding-indexes']) n['encoding-indexes'] = require('./1033')['encoding-indexes'];
  var t = Math.floor;

  function o(n) {
    if (undefined === n) return {};
    if (n === Object(n)) return n;
    throw TypeError('Could not convert argument to dictionary');
  }

  function s(n) {
    for (var i = String(n), t = i.length, o = 0, s = []; o < t; ) {
      var a = i.charCodeAt(o);
      if (a < 55296 || a > 57343) s.push(a);
      else if (56320 <= a && a <= 57343) s.push(65533);
      else if (55296 <= a && a <= 56319)
        if (o === t - 1) s.push(65533);
        else {
          var u = i.charCodeAt(o + 1);

          if (56320 <= u && u <= 57343) {
            var l = 1023 & a,
              f = 1023 & u;
            s.push(65536 + (l << 10) + f);
            o += 1;
          } else s.push(65533);
        }
      o += 1;
    }

    return s;
  }

  function a(n) {
    for (var i = '', t = 0; t < n.length; ++t) {
      var o = n[t];
      if (o <= 65535) i += String.fromCharCode(o);
      else {
        o -= 65536;
        i += String.fromCharCode(55296 + (o >> 10), 56320 + (1023 & o));
      }
    }

    return i;
  }

  function u(n) {
    return 0 <= n && n <= 127;
  }

  var l = u,
    f = -1;

  function c(n) {
    this.tokens = [].slice.call(n);
    this.tokens.reverse();
  }

  c.prototype = {
    endOfStream: function () {
      return !this.tokens.length;
    },
    read: function () {
      return this.tokens.length ? this.tokens.pop() : f;
    },
    prepend: function (n) {
      if (Array.isArray(n)) for (var i = n; i.length; ) this.tokens.push(i.pop());
      else this.tokens.push(n);
    },
    push: function (n) {
      if (Array.isArray(n)) for (var i = n; i.length; ) this.tokens.unshift(i.shift());
      else this.tokens.unshift(n);
    },
  };
  var d = -1;

  function h(n, i) {
    if (n) throw TypeError('Decoder error');
    return i || 65533;
  }

  function p(n) {
    throw TypeError('The code point ' + n + ' could not be encoded.');
  }

  function _(n) {
    n = String(n).trim().toLowerCase();
    return Object.prototype.hasOwnProperty.call(w, n) ? w[n] : null;
  }

  var b = [
      {
        encodings: [
          {
            labels: ['unicode-1-1-utf-8', 'utf-8', 'utf8'],
            name: 'UTF-8',
          },
        ],
        heading: 'The Encoding',
      },
      {
        encodings: [
          {
            labels: ['866', 'cp866', 'csibm866', 'ibm866'],
            name: 'IBM866',
          },
          {
            labels: ['csisolatin2', 'iso-8859-2', 'iso-ir-101', 'iso8859-2', 'iso88592', 'iso_8859-2', 'iso_8859-2:1987', 'l2', 'latin2'],
            name: 'ISO-8859-2',
          },
          {
            labels: ['csisolatin3', 'iso-8859-3', 'iso-ir-109', 'iso8859-3', 'iso88593', 'iso_8859-3', 'iso_8859-3:1988', 'l3', 'latin3'],
            name: 'ISO-8859-3',
          },
          {
            labels: ['csisolatin4', 'iso-8859-4', 'iso-ir-110', 'iso8859-4', 'iso88594', 'iso_8859-4', 'iso_8859-4:1988', 'l4', 'latin4'],
            name: 'ISO-8859-4',
          },
          {
            labels: ['csisolatincyrillic', 'cyrillic', 'iso-8859-5', 'iso-ir-144', 'iso8859-5', 'iso88595', 'iso_8859-5', 'iso_8859-5:1988'],
            name: 'ISO-8859-5',
          },
          {
            labels: [
              'arabic',
              'asmo-708',
              'csiso88596e',
              'csiso88596i',
              'csisolatinarabic',
              'ecma-114',
              'iso-8859-6',
              'iso-8859-6-e',
              'iso-8859-6-i',
              'iso-ir-127',
              'iso8859-6',
              'iso88596',
              'iso_8859-6',
              'iso_8859-6:1987',
            ],
            name: 'ISO-8859-6',
          },
          {
            labels: [
              'csisolatingreek',
              'ecma-118',
              'elot_928',
              'greek',
              'greek8',
              'iso-8859-7',
              'iso-ir-126',
              'iso8859-7',
              'iso88597',
              'iso_8859-7',
              'iso_8859-7:1987',
              'sun_eu_greek',
            ],
            name: 'ISO-8859-7',
          },
          {
            labels: ['csiso88598e', 'csisolatinhebrew', 'hebrew', 'iso-8859-8', 'iso-8859-8-e', 'iso-ir-138', 'iso8859-8', 'iso88598', 'iso_8859-8', 'iso_8859-8:1988', 'visual'],
            name: 'ISO-8859-8',
          },
          {
            labels: ['csiso88598i', 'iso-8859-8-i', 'logical'],
            name: 'ISO-8859-8-I',
          },
          {
            labels: ['csisolatin6', 'iso-8859-10', 'iso-ir-157', 'iso8859-10', 'iso885910', 'l6', 'latin6'],
            name: 'ISO-8859-10',
          },
          {
            labels: ['iso-8859-13', 'iso8859-13', 'iso885913'],
            name: 'ISO-8859-13',
          },
          {
            labels: ['iso-8859-14', 'iso8859-14', 'iso885914'],
            name: 'ISO-8859-14',
          },
          {
            labels: ['csisolatin9', 'iso-8859-15', 'iso8859-15', 'iso885915', 'iso_8859-15', 'l9'],
            name: 'ISO-8859-15',
          },
          {
            labels: ['iso-8859-16'],
            name: 'ISO-8859-16',
          },
          {
            labels: ['cskoi8r', 'koi', 'koi8', 'koi8-r', 'koi8_r'],
            name: 'KOI8-R',
          },
          {
            labels: ['koi8-ru', 'koi8-u'],
            name: 'KOI8-U',
          },
          {
            labels: ['csmacintosh', 'mac', 'macintosh', 'x-mac-roman'],
            name: 'macintosh',
          },
          {
            labels: ['dos-874', 'iso-8859-11', 'iso8859-11', 'iso885911', 'tis-620', 'windows-874'],
            name: 'windows-874',
          },
          {
            labels: ['cp1250', 'windows-1250', 'x-cp1250'],
            name: 'windows-1250',
          },
          {
            labels: ['cp1251', 'windows-1251', 'x-cp1251'],
            name: 'windows-1251',
          },
          {
            labels: [
              'ansi_x3.4-1968',
              'ascii',
              'cp1252',
              'cp819',
              'csisolatin1',
              'ibm819',
              'iso-8859-1',
              'iso-ir-100',
              'iso8859-1',
              'iso88591',
              'iso_8859-1',
              'iso_8859-1:1987',
              'l1',
              'latin1',
              'us-ascii',
              'windows-1252',
              'x-cp1252',
            ],
            name: 'windows-1252',
          },
          {
            labels: ['cp1253', 'windows-1253', 'x-cp1253'],
            name: 'windows-1253',
          },
          {
            labels: ['cp1254', 'csisolatin5', 'iso-8859-9', 'iso-ir-148', 'iso8859-9', 'iso88599', 'iso_8859-9', 'iso_8859-9:1989', 'l5', 'latin5', 'windows-1254', 'x-cp1254'],
            name: 'windows-1254',
          },
          {
            labels: ['cp1255', 'windows-1255', 'x-cp1255'],
            name: 'windows-1255',
          },
          {
            labels: ['cp1256', 'windows-1256', 'x-cp1256'],
            name: 'windows-1256',
          },
          {
            labels: ['cp1257', 'windows-1257', 'x-cp1257'],
            name: 'windows-1257',
          },
          {
            labels: ['cp1258', 'windows-1258', 'x-cp1258'],
            name: 'windows-1258',
          },
          {
            labels: ['x-mac-cyrillic', 'x-mac-ukrainian'],
            name: 'x-mac-cyrillic',
          },
        ],
        heading: 'Legacy single-byte encodings',
      },
      {
        encodings: [
          {
            labels: ['chinese', 'csgb2312', 'csiso58gb231280', 'gb2312', 'gb_2312', 'gb_2312-80', 'gbk', 'iso-ir-58', 'x-gbk'],
            name: 'GBK',
          },
          {
            labels: ['gb18030'],
            name: 'gb18030',
          },
        ],
        heading: 'Legacy multi-byte Chinese (simplified) encodings',
      },
      {
        encodings: [
          {
            labels: ['big5', 'big5-hkscs', 'cn-big5', 'csbig5', 'x-x-big5'],
            name: 'Big5',
          },
        ],
        heading: 'Legacy multi-byte Chinese (traditional) encodings',
      },
      {
        encodings: [
          {
            labels: ['cseucpkdfmtjapanese', 'euc-jp', 'x-euc-jp'],
            name: 'EUC-JP',
          },
          {
            labels: ['csiso2022jp', 'iso-2022-jp'],
            name: 'ISO-2022-JP',
          },
          {
            labels: ['csshiftjis', 'ms932', 'ms_kanji', 'shift-jis', 'shift_jis', 'sjis', 'windows-31j', 'x-sjis'],
            name: 'Shift_JIS',
          },
        ],
        heading: 'Legacy multi-byte Japanese encodings',
      },
      {
        encodings: [
          {
            labels: ['cseuckr', 'csksc56011987', 'euc-kr', 'iso-ir-149', 'korean', 'ks_c_5601-1987', 'ks_c_5601-1989', 'ksc5601', 'ksc_5601', 'windows-949'],
            name: 'EUC-KR',
          },
        ],
        heading: 'Legacy multi-byte Korean encodings',
      },
      {
        encodings: [
          {
            labels: ['csiso2022kr', 'hz-gb-2312', 'iso-2022-cn', 'iso-2022-cn-ext', 'iso-2022-kr'],
            name: 'replacement',
          },
          {
            labels: ['utf-16be'],
            name: 'UTF-16BE',
          },
          {
            labels: ['utf-16', 'utf-16le'],
            name: 'UTF-16LE',
          },
          {
            labels: ['x-user-defined'],
            name: 'x-user-defined',
          },
        ],
        heading: 'Legacy miscellaneous encodings',
      },
    ],
    w = {};
  b.forEach(function (n) {
    n.encodings.forEach(function (n) {
      n.labels.forEach(function (i) {
        w[i] = n;
      });
    });
  });
  var v,
    y,
    x = {},
    O = {};

  function k(n, i) {
    return i ? i[n] : null;
  }

  function E(n, i) {
    var t = i.indexOf(n);
    return -1 === t ? null : t;
  }

  function j(i) {
    if (!('encoding-indexes' in n)) throw Error('Indexes missing. Did you forget to include encoding-indexes.js first?');
    return n['encoding-indexes'][i];
  }

  function B(n) {
    if ((n > 39419 && n < 189e3) || n > 1237575) return null;
    if (7457 === n) return 59335;
    var i,
      t = 0,
      o = 0,
      s = j('gb18030-ranges');

    for (i = 0; i < s.length; ++i) {
      var a = s[i];
      if (!(a[0] <= n)) break;
      t = a[0];
      o = a[1];
    }

    return o + n - t;
  }

  function S(n) {
    if (59335 === n) return 7457;
    var i,
      t = 0,
      o = 0,
      s = j('gb18030-ranges');

    for (i = 0; i < s.length; ++i) {
      var a = s[i];
      if (!(a[1] <= n)) break;
      t = a[1];
      o = a[0];
    }

    return o + n - t;
  }

  function T(n) {
    return (v =
      v ||
      j('jis0208').map(function (n, t) {
        return i(t, 8272, 8835) ? null : n;
      })).indexOf(n);
  }

  function I(n) {
    var i = (y =
      y ||
      j('big5').map(function (n, i) {
        return i < 5024 ? null : n;
      }));
    return 9552 === n || 9566 === n || 9569 === n || 9578 === n || 21313 === n || 21317 === n ? i.lastIndexOf(n) : E(n, i);
  }

  var U = 'utf-8';

  function C(n, i) {
    if (!(this instanceof C)) throw TypeError("Called as a function. Did you forget 'new'?");
    n = undefined !== n ? String(n) : U;
    i = o(i);
    this._encoding = null;
    this._decoder = null;
    this._ignoreBOM = false;
    this._BOMseen = false;
    this._error_mode = 'replacement';
    this._do_not_flush = false;

    var t = _(n);

    if (null === t || 'replacement' === t.name) throw RangeError('Unknown encoding: ' + n);
    if (!O[t.name]) throw Error('Decoder not present. Did you forget to include encoding-indexes.js first?');
    this._encoding = t;
    if (Boolean(i.fatal)) this._error_mode = 'fatal';
    if (Boolean(i.ignoreBOM)) this._ignoreBOM = true;

    if (!Object.defineProperty) {
      this.encoding = this._encoding.name.toLowerCase();
      this.fatal = 'fatal' === this._error_mode;
      this.ignoreBOM = this._ignoreBOM;
    }

    return this;
  }

  function A(i, t) {
    if (!(this instanceof A)) throw TypeError("Called as a function. Did you forget 'new'?");
    t = o(t);
    this._encoding = null;
    this._encoder = null;
    this._do_not_flush = false;
    this._fatal = Boolean(t.fatal) ? 'fatal' : 'replacement';

    if (Boolean(t.NONSTANDARD_allowLegacyEncoding)) {
      var s = _((i = undefined !== i ? String(i) : U));

      if (null === s || 'replacement' === s.name) throw RangeError('Unknown encoding: ' + i);
      if (!x[s.name]) throw Error('Encoder not present. Did you forget to include encoding-indexes.js first?');
      this._encoding = s;
    } else {
      this._encoding = _('utf-8');
      if (undefined !== i && 'console' in n) console.warn('TextEncoder constructor called with encoding label, which is ignored.');
    }

    if (!Object.defineProperty) this.encoding = this._encoding.name.toLowerCase();
    return this;
  }

  function L(n) {
    var t = n.fatal,
      o = 0,
      s = 0,
      a = 0,
      u = 128,
      l = 191;

    this.handler = function (n, c) {
      if (c === f && 0 !== a) {
        a = 0;
        return h(t);
      }

      if (c === f) return d;

      if (0 === a) {
        if (i(c, 0, 127)) return c;

        if (i(c, 194, 223)) {
          a = 1;
          o = 31 & c;
        } else if (i(c, 224, 239)) {
          if (224 === c) u = 160;
          if (237 === c) l = 159;
          a = 2;
          o = 15 & c;
        } else {
          if (!i(c, 240, 244)) return h(t);
          if (240 === c) u = 144;
          if (244 === c) l = 143;
          a = 3;
          o = 7 & c;
        }

        return null;
      }

      if (!i(c, u, l)) {
        o = a = s = 0;
        u = 128;
        l = 191;
        n.prepend(c);
        return h(t);
      }

      if (((u = 128), (l = 191), (o = (o << 6) | (63 & c)), (s += 1) !== a)) return null;
      var p = o;
      o = a = s = 0;
      return p;
    };
  }

  function M(n) {
    n.fatal;

    this.handler = function (n, t) {
      if (t === f) return d;
      if (l(t)) return t;
      var o, s;

      if (i(t, 128, 2047)) {
        o = 1;
        s = 192;
      } else if (i(t, 2048, 65535)) {
        o = 2;
        s = 224;
      } else if (i(t, 65536, 1114111)) {
        o = 3;
        s = 240;
      }

      for (var a = [(t >> (6 * o)) + s]; o > 0; ) {
        var u = t >> (6 * (o - 1));
        a.push(128 | (63 & u));
        o -= 1;
      }

      return a;
    };
  }

  function P(n, i) {
    var t = i.fatal;

    this.handler = function (i, o) {
      if (o === f) return d;
      if (u(o)) return o;
      var s = n[o - 128];
      return null === s ? h(t) : s;
    };
  }

  function D(n, i) {
    i.fatal;

    this.handler = function (i, t) {
      if (t === f) return d;
      if (l(t)) return t;
      var o = E(t, n);
      if (null === o) p(t);
      return o + 128;
    };
  }

  function F(n) {
    var t = n.fatal,
      o = 0,
      s = 0,
      a = 0;

    this.handler = function (n, l) {
      if (l === f && 0 === o && 0 === s && 0 === a) return d;
      var c;

      if ((l !== f || (0 === o && 0 === s && 0 === a) || ((o = 0), (s = 0), (a = 0), h(t)), 0 !== a)) {
        c = null;
        if (i(l, 48, 57)) c = B(10 * (126 * (10 * (o - 129) + s - 48) + a - 129) + l - 48);
        var p = [s, a, l];
        o = 0;
        s = 0;
        a = 0;

        if (null === c) {
          n.prepend(p);
          return h(t);
        } else return c;
      }

      if (0 !== s)
        if (i(l, 129, 254)) {
          a = l;
          return null;
        } else {
          n.prepend([s, l]);
          o = 0;
          s = 0;
          return h(t);
        }

      if (0 !== o) {
        if (i(l, 48, 57)) {
          s = l;
          return null;
        }

        var _ = o,
          b = null;
        o = 0;
        var w = l < 127 ? 64 : 65;
        if (i(l, 64, 126) || i(l, 128, 254)) b = 190 * (_ - 129) + (l - w);
        if (null === (c = null === b ? null : k(b, j('gb18030'))) && u(l)) n.prepend(l);
        return null === c ? h(t) : c;
      }

      return u(l) ? l : 128 === l ? 8364 : i(l, 129, 254) ? ((o = l), null) : h(t);
    };
  }

  function J(n, i) {
    n.fatal;

    this.handler = function (n, o) {
      if (o === f) return d;
      if (l(o)) return o;
      if (58853 === o) return p(o);
      if (i && 8364 === o) return 128;
      var s = E(o, j('gb18030'));

      if (null !== s) {
        var a = s % 190;
        return [t(s / 190) + 129, a + (a < 63 ? 64 : 65)];
      }

      if (i) return p(o);
      s = S(o);
      var u = t(s / 10 / 126 / 10),
        c = t((s -= 10 * u * 126 * 10) / 10 / 126),
        h = t((s -= 10 * c * 126) / 10);
      return [u + 129, c + 48, h + 129, s - 10 * h + 48];
    };
  }

  function K(n) {
    var t = n.fatal,
      o = 0;

    this.handler = function (n, s) {
      if (s === f && 0 !== o) {
        o = 0;
        return h(t);
      }

      if (s === f && 0 === o) return d;

      if (0 !== o) {
        var a = o,
          l = null;
        o = 0;
        var c = s < 127 ? 64 : 98;

        switch (((i(s, 64, 126) || i(s, 161, 254)) && (l = 157 * (a - 129) + (s - c)), l)) {
          case 1133:
            return [202, 772];

          case 1135:
            return [202, 780];

          case 1164:
            return [234, 772];

          case 1166:
            return [234, 780];
        }

        var p = null === l ? null : k(l, j('big5'));
        if (null === p && u(s)) n.prepend(s);
        return null === p ? h(t) : p;
      }

      return u(s) ? s : i(s, 129, 254) ? ((o = s), null) : h(t);
    };
  }

  function R(n) {
    n.fatal;

    this.handler = function (n, i) {
      if (i === f) return d;
      if (l(i)) return i;
      var o = I(i);
      if (null === o) return p(i);
      var s = t(o / 157) + 129;
      if (s < 161) return p(i);
      var a = o % 157;
      return [s, a + (a < 63 ? 64 : 98)];
    };
  }

  function G(n) {
    var t = n.fatal,
      o = false,
      s = 0;

    this.handler = function (n, a) {
      if (a === f && 0 !== s) {
        s = 0;
        return h(t);
      }

      if (a === f && 0 === s) return d;

      if (142 === s && i(a, 161, 223)) {
        s = 0;
        return 65216 + a;
      }

      if (143 === s && i(a, 161, 254)) {
        o = true;
        s = a;
        return null;
      }

      if (0 !== s) {
        var l = s;
        s = 0;
        var c = null;
        if (i(l, 161, 254) && i(a, 161, 254)) c = k(94 * (l - 161) + (a - 161), j(o ? 'jis0212' : 'jis0208'));
        o = false;
        if (!i(a, 161, 254)) n.prepend(a);
        return null === c ? h(t) : c;
      }

      return u(a) ? a : 142 === a || 143 === a || i(a, 161, 254) ? ((s = a), null) : h(t);
    };
  }

  function N(n) {
    n.fatal;

    this.handler = function (n, o) {
      if (o === f) return d;
      if (l(o)) return o;
      if (165 === o) return 92;
      if (8254 === o) return 126;
      if (i(o, 65377, 65439)) return [142, o - 65377 + 161];
      if (8722 === o) o = 65293;
      var s = E(o, j('jis0208'));
      return null === s ? p(o) : [t(s / 94) + 161, (s % 94) + 161];
    };
  }

  function z(n) {
    var t = n.fatal,
      o = 0,
      s = 1,
      a = 2,
      u = 3,
      l = 4,
      c = 5,
      p = 6,
      _ = o,
      b = o,
      w = 0,
      v = false;

    this.handler = function (n, y) {
      switch (_) {
        default:
        case o:
          if (27 === y) {
            _ = c;
            return null;
          } else if (i(y, 0, 127) && 14 !== y && 15 !== y && 27 !== y) {
            v = false;
            return y;
          } else if (y === f) return d;
          else {
            v = false;
            return h(t);
          }

        case s:
          if (27 === y) {
            _ = c;
            return null;
          } else if (92 === y) {
            v = false;
            return 165;
          } else if (126 === y) {
            v = false;
            return 8254;
          } else if (i(y, 0, 127) && 14 !== y && 15 !== y && 27 !== y && 92 !== y && 126 !== y) {
            v = false;
            return y;
          } else if (y === f) return d;
          else {
            v = false;
            return h(t);
          }

        case a:
          if (27 === y) {
            _ = c;
            return null;
          } else if (i(y, 33, 95)) {
            v = false;
            return 65344 + y;
          } else if (y === f) return d;
          else {
            v = false;
            return h(t);
          }

        case u:
          if (27 === y) {
            _ = c;
            return null;
          } else if (i(y, 33, 126)) {
            v = false;
            w = y;
            _ = l;
            return null;
          } else if (y === f) return d;
          else {
            v = false;
            return h(t);
          }

        case l:
          if (27 === y) {
            _ = c;
            return h(t);
          }

          if (i(y, 33, 126)) {
            _ = u;
            var x = k(94 * (w - 33) + y - 33, j('jis0208'));
            return null === x ? h(t) : x;
          }

          if (y === f) {
            _ = u;
            n.prepend(y);
            return h(t);
          } else {
            _ = u;
            return h(t);
          }

        case c:
          if (36 === y || 40 === y) {
            w = y;
            _ = p;
            return null;
          } else {
            n.prepend(y);
            v = false;
            _ = b;
            return h(t);
          }

        case p:
          var O = w;
          w = 0;
          var E = null;

          if ((40 === O && 66 === y && (E = o), 40 === O && 74 === y && (E = s), 40 === O && 73 === y && (E = a), 36 !== O || (64 !== y && 66 !== y) || (E = u), null !== E)) {
            _ = _ = E;
            var B = v;
            v = true;
            return B ? h(t) : null;
          }

          n.prepend([O, y]);
          v = false;
          _ = b;
          return h(t);
      }
    };
  }

  function q(n) {
    n.fatal;
    var i = 0,
      o = 1,
      s = 2,
      a = i;

    this.handler = function (n, u) {
      if (u === f && a !== i) {
        n.prepend(u);
        a = i;
        return [27, 40, 66];
      }

      if (u === f && a === i) return d;
      if (!((a !== i && a !== o) || (14 !== u && 15 !== u && 27 !== u))) return p(65533);
      if (a === i && l(u)) return u;

      if (a === o && ((l(u) && 92 !== u && 126 !== u) || 165 == u || 8254 == u)) {
        if (l(u)) return u;
        if (165 === u) return 92;
        if (8254 === u) return 126;
      }

      if (l(u) && a !== i) {
        n.prepend(u);
        a = i;
        return [27, 40, 66];
      }

      if ((165 === u || 8254 === u) && a !== o) {
        n.prepend(u);
        a = o;
        return [27, 40, 74];
      }

      if (8722 === u) u = 65293;
      var c = E(u, j('jis0208'));
      return null === c ? p(u) : a !== s ? (n.prepend(u), (a = s), [27, 36, 66]) : [t(c / 94) + 33, (c % 94) + 33];
    };
  }

  function H(n) {
    var t = n.fatal,
      o = 0;

    this.handler = function (n, s) {
      if (s === f && 0 !== o) {
        o = 0;
        return h(t);
      }

      if (s === f && 0 === o) return d;

      if (0 !== o) {
        var a = o,
          l = null;
        o = 0;
        var c = s < 127 ? 64 : 65,
          p = a < 160 ? 129 : 193;
        if (((i(s, 64, 126) || i(s, 128, 252)) && (l = 188 * (a - p) + s - c), i(l, 8836, 10715))) return 48508 + l;

        var _ = null === l ? null : k(l, j('jis0208'));

        if (null === _ && u(s)) n.prepend(s);
        return null === _ ? h(t) : _;
      }

      return u(s) || 128 === s ? s : i(s, 161, 223) ? 65216 + s : i(s, 129, 159) || i(s, 224, 252) ? ((o = s), null) : h(t);
    };
  }

  function Q(n) {
    n.fatal;

    this.handler = function (n, o) {
      if (o === f) return d;
      if (l(o) || 128 === o) return o;
      if (165 === o) return 92;
      if (8254 === o) return 126;
      if (i(o, 65377, 65439)) return o - 65377 + 161;
      if (8722 === o) o = 65293;
      var s = T(o);
      if (null === s) return p(o);
      var a = t(s / 188),
        u = s % 188;
      return [a + (a < 31 ? 129 : 193), u + (u < 63 ? 64 : 65)];
    };
  }

  function V(n) {
    var t = n.fatal,
      o = 0;

    this.handler = function (n, s) {
      if (s === f && 0 !== o) {
        o = 0;
        return h(t);
      }

      if (s === f && 0 === o) return d;

      if (0 !== o) {
        var a = o,
          l = null;
        o = 0;
        if (i(s, 65, 254)) l = 190 * (a - 129) + (s - 65);
        var c = null === l ? null : k(l, j('euc-kr'));
        if (null === l && u(s)) n.prepend(s);
        return null === c ? h(t) : c;
      }

      return u(s) ? s : i(s, 129, 254) ? ((o = s), null) : h(t);
    };
  }

  function W(n) {
    n.fatal;

    this.handler = function (n, i) {
      if (i === f) return d;
      if (l(i)) return i;
      var o = E(i, j('euc-kr'));
      return null === o ? p(i) : [t(o / 190) + 129, (o % 190) + 65];
    };
  }

  function X(n, i) {
    var t = n >> 8,
      o = 255 & n;
    return i ? [t, o] : [o, t];
  }

  function Y(n, t) {
    var o = t.fatal,
      s = null,
      a = null;

    this.handler = function (t, u) {
      if (u === f && (null !== s || null !== a)) return h(o);
      if (u === f && null === s && null === a) return d;

      if (null === s) {
        s = u;
        return null;
      }

      var l;

      if (((l = n ? (s << 8) + u : (u << 8) + s), (s = null), null !== a)) {
        var c = a;
        a = null;
        if (i(l, 56320, 57343)) return 65536 + 1024 * (c - 55296) + (l - 56320);
        else {
          t.prepend(X(l, n));
          return h(o);
        }
      }

      if (i(l, 55296, 56319)) {
        a = l;
        return null;
      } else return i(l, 56320, 57343) ? h(o) : l;
    };
  }

  function Z(n, t) {
    t.fatal;

    this.handler = function (t, o) {
      if (o === f) return d;
      if (i(o, 0, 65535)) return X(o, n);
      var s = X(55296 + ((o - 65536) >> 10), n),
        a = X(56320 + ((o - 65536) & 1023), n);
      return s.concat(a);
    };
  }

  function $(n) {
    n.fatal;

    this.handler = function (n, i) {
      return i === f ? d : u(i) ? i : 63360 + i - 128;
    };
  }

  function nn(n) {
    n.fatal;

    this.handler = function (n, t) {
      return t === f ? d : l(t) ? t : i(t, 63360, 63487) ? t - 63360 + 128 : p(t);
    };
  }

  if (Object.defineProperty) {
    Object.defineProperty(C.prototype, 'encoding', {
      get: function () {
        return this._encoding.name.toLowerCase();
      },
    });
    Object.defineProperty(C.prototype, 'fatal', {
      get: function () {
        return 'fatal' === this._error_mode;
      },
    });
    Object.defineProperty(C.prototype, 'ignoreBOM', {
      get: function () {
        return this._ignoreBOM;
      },
    });
  }

  C.prototype.decode = function (n, i) {
    var t;
    t =
      'object' == typeof n && n instanceof ArrayBuffer
        ? new Uint8Array(n)
        : 'object' == typeof n && 'buffer' in n && n.buffer instanceof ArrayBuffer
        ? new Uint8Array(n.buffer, n.byteOffset, n.byteLength)
        : new Uint8Array(0);
    i = o(i);

    if (!this._do_not_flush) {
      this._decoder = O[this._encoding.name]({
        fatal: 'fatal' === this._error_mode,
      });
      this._BOMseen = false;
    }

    this._do_not_flush = Boolean(i.stream);

    for (var s, u = new c(t), l = []; ; ) {
      var h = u.read();
      if (h === f) break;
      if ((s = this._decoder.handler(u, h)) === d) break;
      if (null !== s) Array.isArray(s) ? l.push.apply(l, s) : l.push(s);
    }

    if (!this._do_not_flush) {
      do {
        if ((s = this._decoder.handler(u, u.read())) === d) break;
        if (null !== s) Array.isArray(s) ? l.push.apply(l, s) : l.push(s);
      } while (!u.endOfStream());

      this._decoder = null;
    }

    return function (n) {
      var i, t;
      i = ['UTF-8', 'UTF-16LE', 'UTF-16BE'];
      t = this._encoding.name;
      if (!(-1 === i.indexOf(t) || this._ignoreBOM || this._BOMseen)) n.length > 0 && 65279 === n[0] ? ((this._BOMseen = true), n.shift()) : n.length > 0 && (this._BOMseen = true);
      return a(n);
    }.call(this, l);
  };

  if (Object.defineProperty)
    Object.defineProperty(A.prototype, 'encoding', {
      get: function () {
        return this._encoding.name.toLowerCase();
      },
    });

  A.prototype.encode = function (n, i) {
    n = undefined === n ? '' : String(n);
    i = o(i);
    if (!this._do_not_flush)
      this._encoder = x[this._encoding.name]({
        fatal: 'fatal' === this._fatal,
      });
    this._do_not_flush = Boolean(i.stream);

    for (var t, a = new c(s(n)), u = []; ; ) {
      var l = a.read();
      if (l === f) break;
      if ((t = this._encoder.handler(a, l)) === d) break;
      if (Array.isArray(t)) u.push.apply(u, t);
      else u.push(t);
    }

    if (!this._do_not_flush) {
      for (; (t = this._encoder.handler(a, a.read())) !== d; ) Array.isArray(t) ? u.push.apply(u, t) : u.push(t);

      this._encoder = null;
    }

    return new Uint8Array(u);
  };

  x['UTF-8'] = function (n) {
    return new M(n);
  };

  O['UTF-8'] = function (n) {
    return new L(n);
  };

  if ('encoding-indexes' in n)
    b.forEach(function (n) {
      if ('Legacy single-byte encodings' === n.heading)
        n.encodings.forEach(function (n) {
          var i = n.name,
            t = j(i.toLowerCase());

          O[i] = function (n) {
            return new P(t, n);
          };

          x[i] = function (n) {
            return new D(t, n);
          };
        });
    });

  O.GBK = function (n) {
    return new F(n);
  };

  x.GBK = function (n) {
    return new J(n, true);
  };

  x.gb18030 = function (n) {
    return new J(n);
  };

  O.gb18030 = function (n) {
    return new F(n);
  };

  x.Big5 = function (n) {
    return new R(n);
  };

  O.Big5 = function (n) {
    return new K(n);
  };

  x['EUC-JP'] = function (n) {
    return new N(n);
  };

  O['EUC-JP'] = function (n) {
    return new G(n);
  };

  x['ISO-2022-JP'] = function (n) {
    return new q(n);
  };

  O['ISO-2022-JP'] = function (n) {
    return new z(n);
  };

  x.Shift_JIS = function (n) {
    return new Q(n);
  };

  O.Shift_JIS = function (n) {
    return new H(n);
  };

  x['EUC-KR'] = function (n) {
    return new W(n);
  };

  O['EUC-KR'] = function (n) {
    return new V(n);
  };

  x['UTF-16BE'] = function (n) {
    return new Z(true, n);
  };

  O['UTF-16BE'] = function (n) {
    return new Y(true, n);
  };

  x['UTF-16LE'] = function (n) {
    return new Z(false, n);
  };

  O['UTF-16LE'] = function (n) {
    return new Y(false, n);
  };

  x['x-user-defined'] = function (n) {
    return new nn(n);
  };

  O['x-user-defined'] = function (n) {
    return new $(n);
  };

  if (!n.TextEncoder) n.TextEncoder = A;
  if (!n.TextDecoder) n.TextDecoder = C;
  if (undefined !== module && module.exports)
    module.exports = {
      TextEncoder: n.TextEncoder,
      TextDecoder: n.TextDecoder,
      EncodingIndexes: n['encoding-indexes'],
    };
})(this || {});
