function t(t, s) {
  var i = ('undefined' != typeof Symbol && t[Symbol.iterator]) || t['@@iterator'];
  if (i) return (i = i.call(t)).next.bind(i);

  if (Array.isArray(t) || (i = e(t)) || (s && t && 'number' == typeof t.length)) {
    if (i) t = i;
    var h = 0;
    return function () {
      return h >= t.length
        ? {
            done: true,
          }
        : {
            done: false,
            value: t[h++],
          };
    };
  }

  throw new TypeError('Invalid attempt to iterate non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.');
}

function e(t, e) {
  if (t) {
    if ('string' == typeof t) return s(t, e);
    var i = Object.prototype.toString.call(t).slice(8, -1);
    if ('Object' === i && t.constructor) i = t.constructor.name;
    return 'Map' === i || 'Set' === i ? Array.from(t) : 'Arguments' === i || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(i) ? s(t, e) : undefined;
  }
}

function s(t, e) {
  if (null == e || e > t.length) e = t.length;

  for (var s = 0, i = new Array(e); s < e; s++) i[s] = t[s];

  return i;
}

var i = {
    ftp: 21,
    file: null,
    http: 80,
    https: 443,
    ws: 80,
    wss: 443,
  },
  h = Symbol('failure');

function n(t) {
  return require('./1021').ucs2.decode(t).length;
}

function u(t, e) {
  var s = t[e];
  return isNaN(s) ? undefined : String.fromCodePoint(s);
}

function o(t) {
  return '.' === t || '%2e' === t.toLowerCase();
}

function l(t) {
  return 2 === t.length && require('./1022').isASCIIAlpha(t.codePointAt(0)) && (':' === t[1] || '|' === t[1]);
}

function p(t) {
  return undefined !== i[t];
}

function f(t) {
  return p(t.scheme);
}

function c(t) {
  return !p(t.scheme);
}

function b(t) {
  return i[t];
}

function v(t) {
  for (var module1023 = require('./1023').Buffer.from(t), s = '', i = 0; i < module1023.length; ++i) s += require('./1024').percentEncode(module1023[i]);

  return s;
}

function y(t) {
  return t <= 31 || t > 126;
}

var A = new Set([47, 58, 59, 61, 64, 91, 92, 93, 94, 124]);

function w(t) {
  return O(t) || A.has(t);
}

var I = new Set([32, 34, 60, 62, 96]);

function S(t) {
  return y(t) || I.has(t);
}

var E = new Set([35, 63, 123, 125]);

function O(t) {
  return S(t) || E.has(t);
}

function C(t, e) {
  var s = String.fromCodePoint(t);
  return e(t) ? v(s) : s;
}

function q(t) {
  var e = 10;
  if (
    (t.length >= 2 && '0' === t.charAt(0) && 'x' === t.charAt(1).toLowerCase()
      ? ((t = t.substring(2)), (e = 16))
      : t.length >= 2 && '0' === t.charAt(0) && ((t = t.substring(1)), (e = 8)),
    '' === t)
  )
    return 0;
  var s = /[^0-7]/;
  if (10 === e) s = /[^0-9]/;
  if (16 === e) s = /[^0-9A-Fa-f]/;
  return s.test(t) ? h : parseInt(t, e);
}

function N(e) {
  var s = e.split('.');
  if (('' === s[s.length - 1] && s.length > 1 && s.pop(), s.length > 4)) return e;

  for (var i, n = [], u = t(s); !(i = u()).done; ) {
    var o = i.value;
    if ('' === o) return e;
    var l = q(o);
    if (l === h) return e;
    n.push(l);
  }

  for (var p = 0; p < n.length - 1; ++p) if (n[p] > 255) return h;

  if (n[n.length - 1] >= 256 ** (5 - n.length)) return h;

  for (var f = n.pop(), c = 0, b = 0, v = n; b < v.length; b++) {
    f += v[b] * 256 ** (3 - c);
    ++c;
  }

  return f;
}

function x(t) {
  for (var e = '', s = t, i = 1; i <= 4; ++i) {
    e = String(s % 256) + e;
    if (4 !== i) e = '.' + e;
    s = Math.floor(s / 256);
  }

  return e;
}

function L(t) {
  var e = [0, 0, 0, 0, 0, 0, 0, 0],
    s = 0,
    i = null,
    n = 0;

  if (58 === (t = require('./1021').ucs2.decode(t))[n]) {
    if (58 !== t[n + 1]) return h;
    n += 2;
    i = ++s;
  }

  for (; n < t.length; ) {
    if (8 === s) return h;

    if (58 !== t[n]) {
      for (var o = 0, l = 0; l < 4 && require('./1022').isASCIIHex(t[n]); ) {
        o = 16 * o + parseInt(u(t, n), 16);
        ++n;
        ++l;
      }

      if (46 === t[n]) {
        if (0 === l) return h;
        if (((n -= l), s > 6)) return h;

        for (var p = 0; undefined !== t[n]; ) {
          var f = null;

          if (p > 0) {
            if (!(46 === t[n] && p < 4)) return h;
            ++n;
          }

          if (!require('./1022').isASCIIDigit(t[n])) return h;

          for (; require('./1022').isASCIIDigit(t[n]); ) {
            var c = parseInt(u(t, n));
            if (null === f) f = c;
            else {
              if (0 === f) return h;
              f = 10 * f + c;
            }
            if (f > 255) return h;
            ++n;
          }

          e[s] = 256 * e[s] + f;
          if (!(2 !== ++p && 4 !== p)) ++s;
        }

        if (4 !== p) return h;
        break;
      }

      if (58 === t[n]) {
        if (undefined === t[++n]) return h;
      } else if (undefined !== t[n]) return h;

      e[s] = o;
      ++s;
    } else {
      if (null !== i) return h;
      ++n;
      i = ++s;
    }
  }

  if (null !== i) {
    var b = s - i;

    for (s = 7; 0 !== s && b > 0; ) {
      var v = e[i + b - 1];
      e[i + b - 1] = e[s];
      e[s] = v;
      --s;
      --b;
    }
  } else if (null === i && 8 !== s) return h;

  return e;
}

function U(t) {
  for (var e = '', s = F(t).idx, i = false, h = 0; h <= 7; ++h) {
    if (!i || 0 !== t[h])
      if ((i && (i = false), s !== h)) {
        e += t[h].toString(16);
        if (7 !== h) e += ':';
      } else {
        e += 0 === h ? '::' : ':';
        i = true;
      }
  }

  return e;
}

function R(t) {
  var e = arguments.length > 1 && undefined !== arguments[1] && arguments[1];
  if ('[' === t[0]) return ']' !== t[t.length - 1] ? h : L(t.substring(1, t.length - 1));
  if (e) return B(t);
  var module1023 = H(require('./1024').percentDecode(require('./1023').Buffer.from(t)).toString());
  if (module1023 === h) return h;
  if (-1 !== module1023.search(/\u0000|\u0009|\u000A|\u000D|\u0020|#|%|\/|:|\?|@|\[|\\|\]/)) return h;
  var i = N(module1023);
  return 'number' == typeof i || i === h ? i : module1023;
}

function B(t) {
  if (-1 !== t.search(/\u0000|\u0009|\u000A|\u000D|\u0020|#|\/|:|\?|@|\[|\\|\]/)) return h;

  for (var e = '', module1021 = require('./1021').ucs2.decode(t), i = 0; i < module1021.length; ++i) e += C(module1021[i], y);

  return e;
}

function F(t) {
  for (var e = null, s = 1, i = null, h = 0, n = 0; n < t.length; ++n) 0 !== t[n] ? (h > s && ((e = i), (s = h)), (i = null), (h = 0)) : (null === i && (i = n), ++h);

  if (h > s) {
    e = i;
    s = h;
  }

  return {
    idx: e,
    len: s,
  };
}

function P(t) {
  return 'number' == typeof t ? x(t) : t instanceof Array ? '[' + U(t) + ']' : t;
}

function H(t) {
  return null === t ? h : t;
}

function k(t) {
  return t.replace(/^[\u0000-\u001F\u0020]+|[\u0000-\u001F\u0020]+$/g, '');
}

function D(t) {
  return t.replace(/\u0009|\u000A|\u000D/g, '');
}

function T(t) {
  var e,
    s = t.path;
  if (0 !== s.length) ('file' === t.scheme && 1 === s.length && ((e = s[0]), /^[A-Za-z]:$/.test(e))) || s.pop();
}

function z(t) {
  return '' !== t.username || '' !== t.password;
}

function M(t, e, s, i, n) {
  if (
    ((this.pointer = 0),
    (this.input = t),
    (this.base = e || null),
    (this.encodingOverride = s || 'utf-8'),
    (this.stateOverride = n),
    (this.url = i),
    (this.failure = false),
    (this.parseError = false),
    !this.url)
  ) {
    this.url = {
      scheme: '',
      username: '',
      password: '',
      host: null,
      port: null,
      path: [],
      query: null,
      fragment: null,
      cannotBeABaseURL: false,
    };
    var u = k(this.input);
    if (u !== this.input) this.parseError = true;
    this.input = u;
  }

  var o = D(this.input);

  for (
    o !== this.input && (this.parseError = true),
      this.input = o,
      this.state = n || 'scheme start',
      this.buffer = '',
      this.atFlag = false,
      this.arrFlag = false,
      this.passwordTokenSeenFlag = false,
      this.input = require('./1021').ucs2.decode(this.input);
    this.pointer <= this.input.length;
    ++this.pointer
  ) {
    var l = this.input[this.pointer],
      p = isNaN(l) ? undefined : String.fromCodePoint(l),
      f = this['parse ' + this.state](l, p);
    if (!f) break;

    if (f === h) {
      this.failure = true;
      break;
    }
  }
}

M.prototype['parse scheme start'] = function (t, e) {
  if (require('./1022').isASCIIAlpha(t)) {
    this.buffer += e.toLowerCase();
    this.state = 'scheme';
  } else {
    if (this.stateOverride) {
      this.parseError = true;
      return h;
    }

    this.state = 'no scheme';
    --this.pointer;
  }

  return true;
};

M.prototype['parse scheme'] = function (t, e) {
  if (require('./1022').isASCIIAlphanumeric(t) || 43 === t || 45 === t || 46 === t) this.buffer += e.toLowerCase();
  else if (58 === t) {
    if (this.stateOverride) {
      if (f(this.url) && !p(this.buffer)) return false;
      if (!f(this.url) && p(this.buffer)) return false;
      if ((z(this.url) || null !== this.url.port) && 'file' === this.buffer) return false;
      if ('file' === this.url.scheme && ('' === this.url.host || null === this.url.host)) return false;
    }

    if (((this.url.scheme = this.buffer), this.stateOverride)) {
      if (this.url.port === b(this.url.scheme)) this.url.port = null;
      return false;
    }

    this.buffer = '';

    if ('file' === this.url.scheme) {
      if (!(47 === this.input[this.pointer + 1] && 47 === this.input[this.pointer + 2])) this.parseError = true;
      this.state = 'file';
    } else if (f(this.url) && null !== this.base && this.base.scheme === this.url.scheme) this.state = 'special relative or authority';
    else if (f(this.url)) this.state = 'special authority slashes';
    else if (47 === this.input[this.pointer + 1]) {
      this.state = 'path or authority';
      ++this.pointer;
    } else {
      this.url.cannotBeABaseURL = true;
      this.url.path.push('');
      this.state = 'cannot-be-a-base-URL path';
    }
  } else {
    if (this.stateOverride) {
      this.parseError = true;
      return h;
    }

    this.buffer = '';
    this.state = 'no scheme';
    this.pointer = -1;
  }
  return true;
};

M.prototype['parse no scheme'] = function (t) {
  if (null === this.base || (this.base.cannotBeABaseURL && 35 !== t)) return h;
  else {
    if (this.base.cannotBeABaseURL && 35 === t) {
      this.url.scheme = this.base.scheme;
      this.url.path = this.base.path.slice();
      this.url.query = this.base.query;
      this.url.fragment = '';
      this.url.cannotBeABaseURL = true;
      this.state = 'fragment';
    } else if ('file' === this.base.scheme) {
      this.state = 'file';
      --this.pointer;
    } else {
      this.state = 'relative';
      --this.pointer;
    }

    return true;
  }
};

M.prototype['parse special relative or authority'] = function (t) {
  if (47 === t && 47 === this.input[this.pointer + 1]) {
    this.state = 'special authority ignore slashes';
    ++this.pointer;
  } else {
    this.parseError = true;
    this.state = 'relative';
    --this.pointer;
  }

  return true;
};

M.prototype['parse path or authority'] = function (t) {
  if (47 === t) this.state = 'authority';
  else {
    this.state = 'path';
    --this.pointer;
  }
  return true;
};

M.prototype['parse relative'] = function (t) {
  this.url.scheme = this.base.scheme;

  if (isNaN(t)) {
    this.url.username = this.base.username;
    this.url.password = this.base.password;
    this.url.host = this.base.host;
    this.url.port = this.base.port;
    this.url.path = this.base.path.slice();
    this.url.query = this.base.query;
  } else if (47 === t) this.state = 'relative slash';
  else if (63 === t) {
    this.url.username = this.base.username;
    this.url.password = this.base.password;
    this.url.host = this.base.host;
    this.url.port = this.base.port;
    this.url.path = this.base.path.slice();
    this.url.query = '';
    this.state = 'query';
  } else if (35 === t) {
    this.url.username = this.base.username;
    this.url.password = this.base.password;
    this.url.host = this.base.host;
    this.url.port = this.base.port;
    this.url.path = this.base.path.slice();
    this.url.query = this.base.query;
    this.url.fragment = '';
    this.state = 'fragment';
  } else if (f(this.url) && 92 === t) {
    this.parseError = true;
    this.state = 'relative slash';
  } else {
    this.url.username = this.base.username;
    this.url.password = this.base.password;
    this.url.host = this.base.host;
    this.url.port = this.base.port;
    this.url.path = this.base.path.slice(0, this.base.path.length - 1);
    this.state = 'path';
    --this.pointer;
  }

  return true;
};

M.prototype['parse relative slash'] = function (t) {
  if (!f(this.url) || (47 !== t && 92 !== t))
    47 === t
      ? (this.state = 'authority')
      : ((this.url.username = this.base.username),
        (this.url.password = this.base.password),
        (this.url.host = this.base.host),
        (this.url.port = this.base.port),
        (this.state = 'path'),
        --this.pointer);
  else {
    if (92 === t) this.parseError = true;
    this.state = 'special authority ignore slashes';
  }
  return true;
};

M.prototype['parse special authority slashes'] = function (t) {
  if (47 === t && 47 === this.input[this.pointer + 1]) {
    this.state = 'special authority ignore slashes';
    ++this.pointer;
  } else {
    this.parseError = true;
    this.state = 'special authority ignore slashes';
    --this.pointer;
  }

  return true;
};

M.prototype['parse special authority ignore slashes'] = function (t) {
  if (47 !== t && 92 !== t) {
    this.state = 'authority';
    --this.pointer;
  } else this.parseError = true;

  return true;
};

M.prototype['parse authority'] = function (t, e) {
  if (64 === t) {
    this.parseError = true;
    if (this.atFlag) this.buffer = '%40' + this.buffer;
    this.atFlag = true;

    for (var s = n(this.buffer), i = 0; i < s; ++i) {
      var u = this.buffer.codePointAt(i);

      if (58 !== u || this.passwordTokenSeenFlag) {
        var o = C(u, w);
        if (this.passwordTokenSeenFlag) this.url.password += o;
        else this.url.username += o;
      } else this.passwordTokenSeenFlag = true;
    }

    this.buffer = '';
  } else if (isNaN(t) || 47 === t || 63 === t || 35 === t || (f(this.url) && 92 === t)) {
    if (this.atFlag && '' === this.buffer) {
      this.parseError = true;
      return h;
    }

    this.pointer -= n(this.buffer) + 1;
    this.buffer = '';
    this.state = 'host';
  } else this.buffer += e;

  return true;
};

M.prototype['parse hostname'] = M.prototype['parse host'] = function (t, e) {
  if (this.stateOverride && 'file' === this.url.scheme) {
    --this.pointer;
    this.state = 'file host';
  } else if (58 !== t || this.arrFlag) {
    if (isNaN(t) || 47 === t || 63 === t || 35 === t || (f(this.url) && 92 === t)) {
      if ((--this.pointer, f(this.url) && '' === this.buffer)) {
        this.parseError = true;
        return h;
      }

      if (this.stateOverride && '' === this.buffer && (z(this.url) || null !== this.url.port)) {
        this.parseError = true;
        return false;
      }

      var s = R(this.buffer, c(this.url));
      if (s === h) return h;
      if (((this.url.host = s), (this.buffer = ''), (this.state = 'path start'), this.stateOverride)) return false;
    } else {
      if (91 === t) this.arrFlag = true;
      else if (93 === t) this.arrFlag = false;
      this.buffer += e;
    }
  } else {
    if ('' === this.buffer) {
      this.parseError = true;
      return h;
    }

    var i = R(this.buffer, c(this.url));
    if (i === h) return h;
    if (((this.url.host = i), (this.buffer = ''), (this.state = 'port'), 'hostname' === this.stateOverride)) return false;
  }

  return true;
};

M.prototype['parse port'] = function (t, e) {
  if (require('./1022').isASCIIDigit(t)) this.buffer += e;
  else {
    if (!(isNaN(t) || 47 === t || 63 === t || 35 === t || (f(this.url) && 92 === t) || this.stateOverride)) {
      this.parseError = true;
      return h;
    }

    if ('' !== this.buffer) {
      var s = parseInt(this.buffer);

      if (s > 2 ** 16 - 1) {
        this.parseError = true;
        return h;
      }

      this.url.port = s === b(this.url.scheme) ? null : s;
      this.buffer = '';
    }

    if (this.stateOverride) return false;
    this.state = 'path start';
    --this.pointer;
  }
  return true;
};

var j = new Set([47, 92, 63, 35]);

function $(t, e) {
  var s,
    i,
    h = t.length - e;
  return h >= 2 && ((s = t[e]), (i = t[e + 1]), require('./1022').isASCIIAlpha(s) && (58 === i || 124 === i)) && (2 === h || j.has(t[e + 2]));
}

M.prototype['parse file'] = function (t) {
  this.url.scheme = 'file';

  if (47 === t || 92 === t) {
    if (92 === t) this.parseError = true;
    this.state = 'file slash';
  } else if (null !== this.base && 'file' === this.base.scheme)
    isNaN(t)
      ? ((this.url.host = this.base.host), (this.url.path = this.base.path.slice()), (this.url.query = this.base.query))
      : 63 === t
      ? ((this.url.host = this.base.host), (this.url.path = this.base.path.slice()), (this.url.query = ''), (this.state = 'query'))
      : 35 === t
      ? ((this.url.host = this.base.host), (this.url.path = this.base.path.slice()), (this.url.query = this.base.query), (this.url.fragment = ''), (this.state = 'fragment'))
      : ($(this.input, this.pointer) ? (this.parseError = true) : ((this.url.host = this.base.host), (this.url.path = this.base.path.slice()), T(this.url)),
        (this.state = 'path'),
        --this.pointer);
  else {
    this.state = 'path';
    --this.pointer;
  }

  return true;
};

M.prototype['parse file slash'] = function (t) {
  var e;

  if (47 === t || 92 === t) {
    if (92 === t) this.parseError = true;
    this.state = 'file host';
  } else {
    if (!(null === this.base || 'file' !== this.base.scheme || $(this.input, this.pointer)))
      2 === (e = this.base.path[0]).length && require('./1022').isASCIIAlpha(e.codePointAt(0)) && ':' === e[1]
        ? this.url.path.push(this.base.path[0])
        : (this.url.host = this.base.host);
    this.state = 'path';
    --this.pointer;
  }

  return true;
};

M.prototype['parse file host'] = function (t, e) {
  if (isNaN(t) || 47 === t || 92 === t || 63 === t || 35 === t) {
    if ((--this.pointer, !this.stateOverride && l(this.buffer))) {
      this.parseError = true;
      this.state = 'path';
    } else if ('' === this.buffer) {
      if (((this.url.host = ''), this.stateOverride)) return false;
      this.state = 'path start';
    } else {
      var s = R(this.buffer, c(this.url));
      if (s === h) return h;
      if (('localhost' === s && (s = ''), (this.url.host = s), this.stateOverride)) return false;
      this.buffer = '';
      this.state = 'path start';
    }
  } else this.buffer += e;
  return true;
};

M.prototype['parse path start'] = function (t) {
  if (f(this.url)) {
    if (92 === t) this.parseError = true;
    this.state = 'path';
    if (47 !== t && 92 !== t) --this.pointer;
  } else if (this.stateOverride || 63 !== t)
    this.stateOverride || 35 !== t ? undefined !== t && ((this.state = 'path'), 47 !== t && --this.pointer) : ((this.url.fragment = ''), (this.state = 'fragment'));
  else {
    this.url.query = '';
    this.state = 'query';
  }

  return true;
};

M.prototype['parse path'] = function (t) {
  if (isNaN(t) || 47 === t || (f(this.url) && 92 === t) || (!this.stateOverride && (63 === t || 35 === t))) {
    if (
      (f(this.url) && 92 === t && (this.parseError = true),
      '..' === (e = (e = this.buffer).toLowerCase()) || '%2e.' === e || '.%2e' === e || '%2e%2e' === e
        ? (T(this.url), 47 === t || (f(this.url) && 92 === t) || this.url.path.push(''))
        : !o(this.buffer) || 47 === t || (f(this.url) && 92 === t)
        ? o(this.buffer) ||
          ('file' === this.url.scheme &&
            0 === this.url.path.length &&
            l(this.buffer) &&
            ('' !== this.url.host && null !== this.url.host && ((this.parseError = true), (this.url.host = '')), (this.buffer = this.buffer[0] + ':')),
          this.url.path.push(this.buffer))
        : this.url.path.push(''),
      (this.buffer = ''),
      'file' === this.url.scheme && (undefined === t || 63 === t || 35 === t))
    )
      for (; this.url.path.length > 1 && '' === this.url.path[0]; ) {
        this.parseError = true;
        this.url.path.shift();
      }

    if (63 === t) {
      this.url.query = '';
      this.state = 'query';
    }

    if (35 === t) {
      this.url.fragment = '';
      this.state = 'fragment';
    }
  } else {
    if (!(37 !== t || (require('./1022').isASCIIHex(this.input[this.pointer + 1]) && require('./1022').isASCIIHex(this.input[this.pointer + 2])))) this.parseError = true;
    this.buffer += C(t, O);
  }

  var e;
  return true;
};

M.prototype['parse cannot-be-a-base-URL path'] = function (t) {
  if (63 === t) {
    this.url.query = '';
    this.state = 'query';
  } else if (35 === t) {
    this.url.fragment = '';
    this.state = 'fragment';
  } else {
    if (!(isNaN(t) || 37 === t)) this.parseError = true;
    if (!(37 !== t || (require('./1022').isASCIIHex(this.input[this.pointer + 1]) && require('./1022').isASCIIHex(this.input[this.pointer + 2])))) this.parseError = true;
    if (!isNaN(t)) this.url.path[0] += C(t, y);
  }

  return true;
};

M.prototype['parse query'] = function (t, e) {
  if (isNaN(t) || (!this.stateOverride && 35 === t)) {
    if (!(f(this.url) && 'ws' !== this.url.scheme && 'wss' !== this.url.scheme)) this.encodingOverride = 'utf-8';

    for (var module1023 = require('./1023').Buffer.from(this.buffer), i = 0; i < module1023.length; ++i)
      module1023[i] < 33 ||
      module1023[i] > 126 ||
      34 === module1023[i] ||
      35 === module1023[i] ||
      60 === module1023[i] ||
      62 === module1023[i] ||
      (39 === module1023[i] && f(this.url))
        ? (this.url.query += require('./1024').percentEncode(module1023[i]))
        : (this.url.query += String.fromCodePoint(module1023[i]));

    this.buffer = '';

    if (35 === t) {
      this.url.fragment = '';
      this.state = 'fragment';
    }
  } else {
    if (!(37 !== t || (require('./1022').isASCIIHex(this.input[this.pointer + 1]) && require('./1022').isASCIIHex(this.input[this.pointer + 2])))) this.parseError = true;
    this.buffer += e;
  }

  return true;
};

M.prototype['parse fragment'] = function (t) {
  if (!isNaN(t))
    0 === t
      ? (this.parseError = true)
      : (37 !== t || (require('./1022').isASCIIHex(this.input[this.pointer + 1]) && require('./1022').isASCIIHex(this.input[this.pointer + 2])) || (this.parseError = true),
        (this.url.fragment += C(t, S)));
  return true;
};

module.exports.serializeURL = function (e, s) {
  var i = e.scheme + ':';
  if (
    (null !== e.host
      ? ((i += '//'),
        ('' === e.username && '' === e.password) || ((i += e.username), '' !== e.password && (i += ':' + e.password), (i += '@')),
        (i += P(e.host)),
        null !== e.port && (i += ':' + e.port))
      : null === e.host && 'file' === e.scheme && (i += '//'),
    e.cannotBeABaseURL)
  )
    i += e.path[0];
  else for (var h, n = t(e.path); !(h = n()).done; ) i += '/' + h.value;
  if (null !== e.query) i += '?' + e.query;
  if (!(s || null === e.fragment)) i += '#' + e.fragment;
  return i;
};

module.exports.serializeURLOrigin = function (t) {
  switch (t.scheme) {
    case 'blob':
      try {
        return module.exports.serializeURLOrigin(module.exports.parseURL(t.path[0]));
      } catch (t) {
        return 'null';
      }

    case 'ftp':
    case 'http':
    case 'https':
    case 'ws':
    case 'wss':
      e = {
        scheme: t.scheme,
        host: t.host,
        port: t.port,
      };
      s = e.scheme + '://';
      s += P(e.host);
      if (null !== e.port) s += ':' + e.port;
      return s;

    case 'file':
    default:
      return 'null';
  }

  var e, s;
};

module.exports.basicURLParse = function (t, e) {
  if (undefined === e) e = {};
  var s = new M(t, e.baseURL, e.encodingOverride, e.url, e.stateOverride);
  return s.failure ? null : s.url;
};

module.exports.setTheUsername = function (t, e) {
  t.username = '';

  for (var module1021 = require('./1021').ucs2.decode(e), i = 0; i < module1021.length; ++i) t.username += C(module1021[i], w);
};

module.exports.setThePassword = function (t, e) {
  t.password = '';

  for (var module1021 = require('./1021').ucs2.decode(e), i = 0; i < module1021.length; ++i) t.password += C(module1021[i], w);
};

module.exports.serializeHost = P;

module.exports.cannotHaveAUsernamePasswordPort = function (t) {
  return null === t.host || '' === t.host || t.cannotBeABaseURL || 'file' === t.scheme;
};

module.exports.serializeInteger = function (t) {
  return String(t);
};

module.exports.parseURL = function (t, e) {
  if (undefined === e) e = {};
  return module.exports.basicURLParse(t, {
    baseURL: e.baseURL,
    encodingOverride: e.encodingOverride,
  });
};
