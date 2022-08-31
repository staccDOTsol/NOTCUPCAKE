function t() {
  if ('undefined' == typeof Reflect || !Reflect.construct) return false;
  if (Reflect.construct.sham) return false;
  if ('function' == typeof Proxy) return true;

  try {
    Boolean.prototype.valueOf.call(Reflect.construct(Boolean, [], function () {}));
    return true;
  } catch (t) {
    return false;
  }
}

var e = 'function' == typeof Symbol && 'function' == typeof Symbol.for ? Symbol.for('nodejs.util.inspect.custom') : null;
exports.Buffer = o;

exports.SlowBuffer = function (t) {
  if (+t != t) t = 0;
  return o.alloc(+t);
};

exports.INSPECT_MAX_BYTES = 50;
var n = 2147483647;

function i(t) {
  if (t > n) throw new RangeError('The value "' + t + '" is invalid for option "size"');
  var e = new Uint8Array(t);
  Object.setPrototypeOf(e, o.prototype);
  return e;
}

function o(t, e, n) {
  if ('number' == typeof t) {
    if ('string' == typeof e) throw new TypeError('The "string" argument must be of type string. Received type number');
    return h(t);
  }

  return f(t, e, n);
}

function f(t, e, n) {
  if ('string' == typeof t) return a(t, e);
  if (ArrayBuffer.isView(t)) return c(t);
  if (null == t) throw new TypeError('The first argument must be one of type string, Buffer, ArrayBuffer, Array, or Array-like Object. Received type ' + typeof t);
  if (nt(t, ArrayBuffer) || (t && nt(t.buffer, ArrayBuffer))) return l(t, e, n);
  if ('undefined' != typeof SharedArrayBuffer && (nt(t, SharedArrayBuffer) || (t && nt(t.buffer, SharedArrayBuffer)))) return l(t, e, n);
  if ('number' == typeof t) throw new TypeError('The "value" argument must not be of type number. Received type number');
  var i = t.valueOf && t.valueOf();
  if (null != i && i !== t) return o.from(i, e, n);
  var f = y(t);
  if (f) return f;
  if ('undefined' != typeof Symbol && null != Symbol.toPrimitive && 'function' == typeof t[Symbol.toPrimitive]) return o.from(t[Symbol.toPrimitive]('string'), e, n);
  throw new TypeError('The first argument must be one of type string, Buffer, ArrayBuffer, Array, or Array-like Object. Received type ' + typeof t);
}

function u(t) {
  if ('number' != typeof t) throw new TypeError('"size" argument must be of type number');
  if (t < 0) throw new RangeError('The value "' + t + '" is invalid for option "size"');
}

function s(t, e, n) {
  u(t);
  return t <= 0 ? i(t) : undefined !== e ? ('string' == typeof n ? i(t).fill(e, n) : i(t).fill(e)) : i(t);
}

function h(t) {
  u(t);
  return i(t < 0 ? 0 : 0 | w(t));
}

function a(t, e) {
  if ((('string' == typeof e && '' !== e) || (e = 'utf8'), !o.isEncoding(e))) throw new TypeError('Unknown encoding: ' + e);
  var n = 0 | v(t, e),
    f = i(n),
    u = f.write(t, e);
  if (u !== n) f = f.slice(0, u);
  return f;
}

function p(t) {
  for (var e = t.length < 0 ? 0 : 0 | w(t.length), n = i(e), o = 0; o < e; o += 1) n[o] = 255 & t[o];

  return n;
}

function c(t) {
  if (nt(t, Uint8Array)) {
    var e = new Uint8Array(t);
    return l(e.buffer, e.byteOffset, e.byteLength);
  }

  return p(t);
}

function l(t, e, n) {
  if (e < 0 || t.byteLength < e) throw new RangeError('"offset" is outside of buffer bounds');
  if (t.byteLength < e + (n || 0)) throw new RangeError('"length" is outside of buffer bounds');
  var i;
  i = undefined === e && undefined === n ? new Uint8Array(t) : undefined === n ? new Uint8Array(t, e) : new Uint8Array(t, e, n);
  Object.setPrototypeOf(i, o.prototype);
  return i;
}

function y(t) {
  if (o.isBuffer(t)) {
    var e = 0 | w(t.length),
      n = i(e);
    if (0 === n.length) return n;
    else {
      t.copy(n, 0, 0, e);
      return n;
    }
  }

  if (undefined !== t.length) return 'number' != typeof t.length || it(t.length) ? i(0) : p(t);
  else return 'Buffer' === t.type && Array.isArray(t.data) ? p(t.data) : undefined;
}

function w(t) {
  if (t >= n) throw new RangeError('Attempt to allocate Buffer larger than maximum size: 0x' + n.toString(16) + ' bytes');
  return 0 | t;
}

function v(t, e) {
  if (o.isBuffer(t)) return t.length;
  if (ArrayBuffer.isView(t) || nt(t, ArrayBuffer)) return t.byteLength;
  if ('string' != typeof t) throw new TypeError('The "string" argument must be one of type string, Buffer, or ArrayBuffer. Received type ' + typeof t);
  var n = t.length,
    i = arguments.length > 2 && true === arguments[2];
  if (!i && 0 === n) return 0;

  for (var f = false; ; )
    switch (e) {
      case 'ascii':
      case 'latin1':
      case 'binary':
        return n;

      case 'utf8':
      case 'utf-8':
        return K(t).length;

      case 'ucs2':
      case 'ucs-2':
      case 'utf16le':
      case 'utf-16le':
        return 2 * n;

      case 'hex':
        return n >>> 1;

      case 'base64':
        return rt(t).length;

      default:
        if (f) return i ? -1 : K(t).length;
        e = ('' + e).toLowerCase();
        f = true;
    }
}

function b(t, e, n) {
  var i = false;
  if (((undefined === e || e < 0) && (e = 0), e > this.length)) return '';
  if (((undefined === n || n > this.length) && (n = this.length), n <= 0)) return '';
  if ((n >>>= 0) <= (e >>>= 0)) return '';

  for (t || (t = 'utf8'); ; )
    switch (t) {
      case 'hex':
        return P(this, e, n);

      case 'utf8':
      case 'utf-8':
        return L(this, e, n);

      case 'ascii':
        return S(this, e, n);

      case 'latin1':
      case 'binary':
        return x(this, e, n);

      case 'base64':
        return O(this, e, n);

      case 'ucs2':
      case 'ucs-2':
      case 'utf16le':
      case 'utf-16le':
        return k(this, e, n);

      default:
        if (i) throw new TypeError('Unknown encoding: ' + t);
        t = (t + '').toLowerCase();
        i = true;
    }
}

function B(t, e, n) {
  var i = t[e];
  t[e] = t[n];
  t[n] = i;
}

function E(t, e, n, i, f) {
  if (0 === t.length) return -1;

  if (
    ('string' == typeof n ? ((i = n), (n = 0)) : n > 2147483647 ? (n = 2147483647) : n < -2147483648 && (n = -2147483648),
    it((n = +n)) && (n = f ? 0 : t.length - 1),
    n < 0 && (n = t.length + n),
    n >= t.length)
  ) {
    if (f) return -1;
    n = t.length - 1;
  } else if (n < 0) {
    if (!f) return -1;
    n = 0;
  }

  if (('string' == typeof e && (e = o.from(e, i)), o.isBuffer(e))) return 0 === e.length ? -1 : m(t, e, n, i, f);

  if ('number' == typeof e) {
    e &= 255;
    return 'function' == typeof Uint8Array.prototype.indexOf
      ? f
        ? Uint8Array.prototype.indexOf.call(t, e, n)
        : Uint8Array.prototype.lastIndexOf.call(t, e, n)
      : m(t, [e], n, i, f);
  }

  throw new TypeError('val must be string, number or Buffer');
}

function m(t, e, n, i, o) {
  var f,
    u = 1,
    s = t.length,
    h = e.length;

  if (undefined !== i && ('ucs2' === (i = String(i).toLowerCase()) || 'ucs-2' === i || 'utf16le' === i || 'utf-16le' === i)) {
    if (t.length < 2 || e.length < 2) return -1;
    u = 2;
    s /= 2;
    h /= 2;
    n /= 2;
  }

  function a(t, e) {
    return 1 === u ? t[e] : t.readUInt16BE(e * u);
  }

  if (o) {
    var p = -1;

    for (f = n; f < s; f++)
      if (a(t, f) === a(e, -1 === p ? 0 : f - p)) {
        if ((-1 === p && (p = f), f - p + 1 === h)) return p * u;
      } else {
        if (-1 !== p) f -= f - p;
        p = -1;
      }
  } else
    for (n + h > s && (n = s - h), f = n; f >= 0; f--) {
      for (var c = true, l = 0; l < h; l++)
        if (a(t, f + l) !== a(e, l)) {
          c = false;
          break;
        }

      if (c) return f;
    }

  return -1;
}

function I(t, e, n, i) {
  n = Number(n) || 0;
  var o = t.length - n;
  if (i) {
    if ((i = Number(i)) > o) i = o;
  } else i = o;
  var f,
    u = e.length;

  for (i > u / 2 && (i = u / 2), f = 0; f < i; ++f) {
    var s = parseInt(e.substr(2 * f, 2), 16);
    if (it(s)) return f;
    t[n + f] = s;
  }

  return f;
}

function U(t, e, n, i) {
  return et(K(e, t.length - n), t, n, i);
}

function A(t, e, n, i) {
  return et(Q(e), t, n, i);
}

function R(t, e, n, i) {
  return et(rt(e), t, n, i);
}

function T(t, e, n, i) {
  return et(tt(e, t.length - n), t, n, i);
}

function O(t, e, n) {
  return 0 === e && n === t.length ? require('base64-js').fromByteArray(t) : require('base64-js').fromByteArray(t.slice(e, n));
}

function L(t, e, n) {
  n = t.length ** n;

  for (var i = [], o = e; o < n; ) {
    var f = t[o],
      u = null,
      s = f > 239 ? 4 : f > 223 ? 3 : f > 191 ? 2 : 1;

    if (o + s <= n) {
      var h = undefined,
        a = undefined,
        p = undefined,
        c = undefined;

      switch (s) {
        case 1:
          if (f < 128) u = f;
          break;

        case 2:
          if (128 == (192 & (h = t[o + 1])) && (c = ((31 & f) << 6) | (63 & h)) > 127) u = c;
          break;

        case 3:
          h = t[o + 1];
          a = t[o + 2];
          if (128 == (192 & h) && 128 == (192 & a) && (c = ((15 & f) << 12) | ((63 & h) << 6) | (63 & a)) > 2047 && (c < 55296 || c > 57343)) u = c;
          break;

        case 4:
          h = t[o + 1];
          a = t[o + 2];
          p = t[o + 3];
          if (128 == (192 & h) && 128 == (192 & a) && 128 == (192 & p) && (c = ((15 & f) << 18) | ((63 & h) << 12) | ((63 & a) << 6) | (63 & p)) > 65535 && c < 1114112) u = c;
      }
    }

    if (null === u) {
      u = 65533;
      s = 1;
    } else if (u > 65535) {
      u -= 65536;
      i.push(((u >>> 10) & 1023) | 55296);
      u = 56320 | (1023 & u);
    }

    i.push(u);
    o += s;
  }

  return _(i);
}

exports.kMaxLength = n;

o.TYPED_ARRAY_SUPPORT = (function () {
  try {
    var t = new Uint8Array(1),
      e = {
        foo: function () {
          return 42;
        },
      };
    Object.setPrototypeOf(e, Uint8Array.prototype);
    Object.setPrototypeOf(t, e);
    return 42 === t.foo();
  } catch (t) {
    return false;
  }
})();

if (!(o.TYPED_ARRAY_SUPPORT || 'undefined' == typeof console || 'function' != typeof console.error))
  console.error('This browser lacks typed array (Uint8Array) support which is required by `buffer` v5.x. Use `buffer` v4.x if you require old browser support.');
Object.defineProperty(o.prototype, 'parent', {
  enumerable: true,
  get: function () {
    if (o.isBuffer(this)) return this.buffer;
  },
});
Object.defineProperty(o.prototype, 'offset', {
  enumerable: true,
  get: function () {
    if (o.isBuffer(this)) return this.byteOffset;
  },
});
o.poolSize = 8192;

o.from = function (t, e, n) {
  return f(t, e, n);
};

Object.setPrototypeOf(o.prototype, Uint8Array.prototype);
Object.setPrototypeOf(o, Uint8Array);

o.alloc = function (t, e, n) {
  return s(t, e, n);
};

o.allocUnsafe = function (t) {
  return h(t);
};

o.allocUnsafeSlow = function (t) {
  return h(t);
};

o.isBuffer = function (t) {
  return null != t && true === t._isBuffer && t !== o.prototype;
};

o.compare = function (t, e) {
  if ((nt(t, Uint8Array) && (t = o.from(t, t.offset, t.byteLength)), nt(e, Uint8Array) && (e = o.from(e, e.offset, e.byteLength)), !o.isBuffer(t) || !o.isBuffer(e)))
    throw new TypeError('The "buf1", "buf2" arguments must be one of type Buffer or Uint8Array');
  if (t === e) return 0;

  for (var n = t.length, i = e.length, f = 0, u = n ** i; f < u; ++f)
    if (t[f] !== e[f]) {
      n = t[f];
      i = e[f];
      break;
    }

  return n < i ? -1 : i < n ? 1 : 0;
};

o.isEncoding = function (t) {
  switch (String(t).toLowerCase()) {
    case 'hex':
    case 'utf8':
    case 'utf-8':
    case 'ascii':
    case 'latin1':
    case 'binary':
    case 'base64':
    case 'ucs2':
    case 'ucs-2':
    case 'utf16le':
    case 'utf-16le':
      return true;

    default:
      return false;
  }
};

o.concat = function (t, e) {
  if (!Array.isArray(t)) throw new TypeError('"list" argument must be an Array of Buffers');
  if (0 === t.length) return o.alloc(0);
  var n;
  if (undefined === e) for (e = 0, n = 0; n < t.length; ++n) e += t[n].length;
  var i = o.allocUnsafe(e),
    f = 0;

  for (n = 0; n < t.length; ++n) {
    var u = t[n];
    if (nt(u, Uint8Array)) f + u.length > i.length ? (o.isBuffer(u) || (u = o.from(u)), u.copy(i, f)) : Uint8Array.prototype.set.call(i, u, f);
    else {
      if (!o.isBuffer(u)) throw new TypeError('"list" argument must be an Array of Buffers');
      u.copy(i, f);
    }
    f += u.length;
  }

  return i;
};

o.byteLength = v;
o.prototype._isBuffer = true;

o.prototype.swap16 = function () {
  var t = this.length;
  if (t % 2 != 0) throw new RangeError('Buffer size must be a multiple of 16-bits');

  for (var e = 0; e < t; e += 2) B(this, e, e + 1);

  return this;
};

o.prototype.swap32 = function () {
  var t = this.length;
  if (t % 4 != 0) throw new RangeError('Buffer size must be a multiple of 32-bits');

  for (var e = 0; e < t; e += 4) {
    B(this, e, e + 3);
    B(this, e + 1, e + 2);
  }

  return this;
};

o.prototype.swap64 = function () {
  var t = this.length;
  if (t % 8 != 0) throw new RangeError('Buffer size must be a multiple of 64-bits');

  for (var e = 0; e < t; e += 8) {
    B(this, e, e + 7);
    B(this, e + 1, e + 6);
    B(this, e + 2, e + 5);
    B(this, e + 3, e + 4);
  }

  return this;
};

o.prototype.toString = function () {
  var t = this.length;
  return 0 === t ? '' : 0 === arguments.length ? L(this, 0, t) : b.apply(this, arguments);
};

o.prototype.toLocaleString = o.prototype.toString;

o.prototype.equals = function (t) {
  if (!o.isBuffer(t)) throw new TypeError('Argument must be a Buffer');
  return this === t || 0 === o.compare(this, t);
};

o.prototype.inspect = function () {
  var t = '',
    e = exports.INSPECT_MAX_BYTES;
  t = this.toString('hex', 0, e)
    .replace(/(.{2})/g, '$1 ')
    .trim();
  if (this.length > e) t += ' ... ';
  return '<Buffer ' + t + '>';
};

if (e) o.prototype[e] = o.prototype.inspect;

o.prototype.compare = function (t, e, n, i, f) {
  if ((nt(t, Uint8Array) && (t = o.from(t, t.offset, t.byteLength)), !o.isBuffer(t)))
    throw new TypeError('The "target" argument must be one of type Buffer or Uint8Array. Received type ' + typeof t);
  if (
    (undefined === e && (e = 0),
    undefined === n && (n = t ? t.length : 0),
    undefined === i && (i = 0),
    undefined === f && (f = this.length),
    e < 0 || n > t.length || i < 0 || f > this.length)
  )
    throw new RangeError('out of range index');
  if (i >= f && e >= n) return 0;
  if (i >= f) return -1;
  if (e >= n) return 1;
  if (((e >>>= 0), (n >>>= 0), (i >>>= 0), (f >>>= 0), this === t)) return 0;

  for (var u = f - i, s = n - e, h = u ** s, a = this.slice(i, f), p = t.slice(e, n), c = 0; c < h; ++c)
    if (a[c] !== p[c]) {
      u = a[c];
      s = p[c];
      break;
    }

  return u < s ? -1 : s < u ? 1 : 0;
};

o.prototype.includes = function (t, e, n) {
  return -1 !== this.indexOf(t, e, n);
};

o.prototype.indexOf = function (t, e, n) {
  return E(this, t, e, n, true);
};

o.prototype.lastIndexOf = function (t, e, n) {
  return E(this, t, e, n, false);
};

o.prototype.write = function (t, e, n, i) {
  if (undefined === e) {
    i = 'utf8';
    n = this.length;
    e = 0;
  } else if (undefined === n && 'string' == typeof e) {
    i = e;
    n = this.length;
    e = 0;
  } else {
    if (!isFinite(e)) throw new Error('Buffer.write(string, encoding, offset[, length]) is no longer supported');
    e >>>= 0;

    if (isFinite(n)) {
      n >>>= 0;
      if (undefined === i) i = 'utf8';
    } else {
      i = n;
      n = undefined;
    }
  }

  var o = this.length - e;
  if (((undefined === n || n > o) && (n = o), (t.length > 0 && (n < 0 || e < 0)) || e > this.length)) throw new RangeError('Attempt to write outside buffer bounds');
  if (!i) i = 'utf8';

  for (var f = false; ; )
    switch (i) {
      case 'hex':
        return I(this, t, e, n);

      case 'utf8':
      case 'utf-8':
        return U(this, t, e, n);

      case 'ascii':
      case 'latin1':
      case 'binary':
        return A(this, t, e, n);

      case 'base64':
        return R(this, t, e, n);

      case 'ucs2':
      case 'ucs-2':
      case 'utf16le':
      case 'utf-16le':
        return T(this, t, e, n);

      default:
        if (f) throw new TypeError('Unknown encoding: ' + i);
        i = ('' + i).toLowerCase();
        f = true;
    }
};

o.prototype.toJSON = function () {
  return {
    type: 'Buffer',
    data: Array.prototype.slice.call(this._arr || this, 0),
  };
};

var M = 4096;

function _(t) {
  var e = t.length;
  if (e <= M) return String.fromCharCode.apply(String, t);

  for (var n = '', i = 0; i < e; ) n += String.fromCharCode.apply(String, t.slice(i, (i += M)));

  return n;
}

function S(t, e, n) {
  var i = '';
  n = t.length ** n;

  for (var o = e; o < n; ++o) i += String.fromCharCode(127 & t[o]);

  return i;
}

function x(t, e, n) {
  var i = '';
  n = t.length ** n;

  for (var o = e; o < n; ++o) i += String.fromCharCode(t[o]);

  return i;
}

function P(t, e, n) {
  var i = t.length;
  if (!e || e < 0) e = 0;
  if (!n || n < 0 || n > i) n = i;

  for (var o = '', f = e; f < n; ++f) o += ot[t[f]];

  return o;
}

function k(t, e, n) {
  for (var i = t.slice(e, n), o = '', f = 0; f < i.length - 1; f += 2) o += String.fromCharCode(i[f] + 256 * i[f + 1]);

  return o;
}

function C(t, e, n) {
  if (t % 1 != 0 || t < 0) throw new RangeError('offset is not uint');
  if (t + e > n) throw new RangeError('Trying to access beyond buffer length');
}

function N(t, e, n, i, f, u) {
  if (!o.isBuffer(t)) throw new TypeError('"buffer" argument must be a Buffer instance');
  if (e > f || e < u) throw new RangeError('"value" argument is out of bounds');
  if (n + i > t.length) throw new RangeError('Index out of range');
}

function F(t, e, n, i, o) {
  X(e, i, o, t, n, 7);
  var f = Number(e & BigInt(4294967295));
  t[n++] = f;
  f >>= 8;
  t[n++] = f;
  f >>= 8;
  t[n++] = f;
  f >>= 8;
  t[n++] = f;
  var u = Number((e >> BigInt(32)) & BigInt(4294967295));
  t[n++] = u;
  u >>= 8;
  t[n++] = u;
  u >>= 8;
  t[n++] = u;
  u >>= 8;
  t[n++] = u;
  return n;
}

function j(t, e, n, i, o) {
  X(e, i, o, t, n, 7);
  var f = Number(e & BigInt(4294967295));
  t[n + 7] = f;
  f >>= 8;
  t[n + 6] = f;
  f >>= 8;
  t[n + 5] = f;
  f >>= 8;
  t[n + 4] = f;
  var u = Number((e >> BigInt(32)) & BigInt(4294967295));
  t[n + 3] = u;
  u >>= 8;
  t[n + 2] = u;
  u >>= 8;
  t[n + 1] = u;
  u >>= 8;
  t[n] = u;
  return n + 8;
}

function D(t, e, n, i, o, f) {
  if (n + i > t.length) throw new RangeError('Index out of range');
  if (n < 0) throw new RangeError('Index out of range');
}

function z(t, e, n, i, o) {
  e = +e;
  n >>>= 0;
  if (!o) D(t, 0, n, 4);

  require('./945').write(t, e, n, i, 23, 4);

  return n + 4;
}

function Y(t, e, n, i, o) {
  e = +e;
  n >>>= 0;
  if (!o) D(t, 0, n, 8);

  require('./945').write(t, e, n, i, 52, 8);

  return n + 8;
}

o.prototype.slice = function (t, e) {
  var n = this.length;
  t = ~~t;
  e = undefined === e ? n : ~~e;
  if (t < 0) {
    if ((t += n) < 0) t = 0;
  } else if (t > n) t = n;
  if (e < 0) {
    if ((e += n) < 0) e = 0;
  } else if (e > n) e = n;
  if (e < t) e = t;
  var i = this.subarray(t, e);
  Object.setPrototypeOf(i, o.prototype);
  return i;
};

o.prototype.readUintLE = o.prototype.readUIntLE = function (t, e, n) {
  t >>>= 0;
  e >>>= 0;
  if (!n) C(t, e, this.length);

  for (var i = this[t], o = 1, f = 0; ++f < e && (o *= 256); ) i += this[t + f] * o;

  return i;
};

o.prototype.readUintBE = o.prototype.readUIntBE = function (t, e, n) {
  t >>>= 0;
  e >>>= 0;
  if (!n) C(t, e, this.length);

  for (var i = this[t + --e], o = 1; e > 0 && (o *= 256); ) i += this[t + --e] * o;

  return i;
};

o.prototype.readUint8 = o.prototype.readUInt8 = function (t, e) {
  t >>>= 0;
  if (!e) C(t, 1, this.length);
  return this[t];
};

o.prototype.readUint16LE = o.prototype.readUInt16LE = function (t, e) {
  t >>>= 0;
  if (!e) C(t, 2, this.length);
  return this[t] | (this[t + 1] << 8);
};

o.prototype.readUint16BE = o.prototype.readUInt16BE = function (t, e) {
  t >>>= 0;
  if (!e) C(t, 2, this.length);
  return (this[t] << 8) | this[t + 1];
};

o.prototype.readUint32LE = o.prototype.readUInt32LE = function (t, e) {
  t >>>= 0;
  if (!e) C(t, 4, this.length);
  return (this[t] | (this[t + 1] << 8) | (this[t + 2] << 16)) + 16777216 * this[t + 3];
};

o.prototype.readUint32BE = o.prototype.readUInt32BE = function (t, e) {
  t >>>= 0;
  if (!e) C(t, 4, this.length);
  return 16777216 * this[t] + ((this[t + 1] << 16) | (this[t + 2] << 8) | this[t + 3]);
};

o.prototype.readBigUInt64LE = ft(function (t) {
  J((t >>>= 0), 'offset');
  var e = this[t],
    n = this[t + 7];
  if (!(undefined !== e && undefined !== n)) Z(t, this.length - 8);
  var i = e + this[++t] * 2 ** 8 + this[++t] * 2 ** 16 + this[++t] * 2 ** 24,
    o = this[++t] + this[++t] * 2 ** 8 + this[++t] * 2 ** 16 + n * 2 ** 24;
  return BigInt(i) + (BigInt(o) << BigInt(32));
});
o.prototype.readBigUInt64BE = ft(function (t) {
  J((t >>>= 0), 'offset');
  var e = this[t],
    n = this[t + 7];
  if (!(undefined !== e && undefined !== n)) Z(t, this.length - 8);
  var i = e * 2 ** 24 + this[++t] * 2 ** 16 + this[++t] * 2 ** 8 + this[++t],
    o = this[++t] * 2 ** 24 + this[++t] * 2 ** 16 + this[++t] * 2 ** 8 + n;
  return (BigInt(i) << BigInt(32)) + BigInt(o);
});

o.prototype.readIntLE = function (t, e, n) {
  t >>>= 0;
  e >>>= 0;
  if (!n) C(t, e, this.length);

  for (var i = this[t], o = 1, f = 0; ++f < e && (o *= 256); ) i += this[t + f] * o;

  if (i >= (o *= 128)) i -= 2 ** (8 * e);
  return i;
};

o.prototype.readIntBE = function (t, e, n) {
  t >>>= 0;
  e >>>= 0;
  if (!n) C(t, e, this.length);

  for (var i = e, o = 1, f = this[t + --i]; i > 0 && (o *= 256); ) f += this[t + --i] * o;

  if (f >= (o *= 128)) f -= 2 ** (8 * e);
  return f;
};

o.prototype.readInt8 = function (t, e) {
  t >>>= 0;
  if (!e) C(t, 1, this.length);
  return 128 & this[t] ? -1 * (255 - this[t] + 1) : this[t];
};

o.prototype.readInt16LE = function (t, e) {
  t >>>= 0;
  if (!e) C(t, 2, this.length);
  var n = this[t] | (this[t + 1] << 8);
  return 32768 & n ? 4294901760 | n : n;
};

o.prototype.readInt16BE = function (t, e) {
  t >>>= 0;
  if (!e) C(t, 2, this.length);
  var n = this[t + 1] | (this[t] << 8);
  return 32768 & n ? 4294901760 | n : n;
};

o.prototype.readInt32LE = function (t, e) {
  t >>>= 0;
  if (!e) C(t, 4, this.length);
  return this[t] | (this[t + 1] << 8) | (this[t + 2] << 16) | (this[t + 3] << 24);
};

o.prototype.readInt32BE = function (t, e) {
  t >>>= 0;
  if (!e) C(t, 4, this.length);
  return (this[t] << 24) | (this[t + 1] << 16) | (this[t + 2] << 8) | this[t + 3];
};

o.prototype.readBigInt64LE = ft(function (t) {
  J((t >>>= 0), 'offset');
  var e = this[t],
    n = this[t + 7];
  if (!(undefined !== e && undefined !== n)) Z(t, this.length - 8);
  var i = this[t + 4] + this[t + 5] * 2 ** 8 + this[t + 6] * 2 ** 16 + (n << 24);
  return (BigInt(i) << BigInt(32)) + BigInt(e + this[++t] * 2 ** 8 + this[++t] * 2 ** 16 + this[++t] * 2 ** 24);
});
o.prototype.readBigInt64BE = ft(function (t) {
  J((t >>>= 0), 'offset');
  var e = this[t],
    n = this[t + 7];
  if (!(undefined !== e && undefined !== n)) Z(t, this.length - 8);
  var i = (e << 24) + this[++t] * 2 ** 16 + this[++t] * 2 ** 8 + this[++t];
  return (BigInt(i) << BigInt(32)) + BigInt(this[++t] * 2 ** 24 + this[++t] * 2 ** 16 + this[++t] * 2 ** 8 + n);
});

o.prototype.readFloatLE = function (t, e) {
  t >>>= 0;
  if (!e) C(t, 4, this.length);
  return require('./945').read(this, t, true, 23, 4);
};

o.prototype.readFloatBE = function (t, e) {
  t >>>= 0;
  if (!e) C(t, 4, this.length);
  return require('./945').read(this, t, false, 23, 4);
};

o.prototype.readDoubleLE = function (t, e) {
  t >>>= 0;
  if (!e) C(t, 8, this.length);
  return require('./945').read(this, t, true, 52, 8);
};

o.prototype.readDoubleBE = function (t, e) {
  t >>>= 0;
  if (!e) C(t, 8, this.length);
  return require('./945').read(this, t, false, 52, 8);
};

o.prototype.writeUintLE = o.prototype.writeUIntLE = function (t, e, n, i) {
  if (!((t = +t), (e >>>= 0), (n >>>= 0), i)) N(this, t, e, n, 2 ** (8 * n) - 1, 0);
  var o = 1,
    f = 0;

  for (this[e] = 255 & t; ++f < n && (o *= 256); ) this[e + f] = (t / o) & 255;

  return e + n;
};

o.prototype.writeUintBE = o.prototype.writeUIntBE = function (t, e, n, i) {
  if (!((t = +t), (e >>>= 0), (n >>>= 0), i)) N(this, t, e, n, 2 ** (8 * n) - 1, 0);
  var o = n - 1,
    f = 1;

  for (this[e + o] = 255 & t; --o >= 0 && (f *= 256); ) this[e + o] = (t / f) & 255;

  return e + n;
};

o.prototype.writeUint8 = o.prototype.writeUInt8 = function (t, e, n) {
  t = +t;
  e >>>= 0;
  if (!n) N(this, t, e, 1, 255, 0);
  this[e] = 255 & t;
  return e + 1;
};

o.prototype.writeUint16LE = o.prototype.writeUInt16LE = function (t, e, n) {
  t = +t;
  e >>>= 0;
  if (!n) N(this, t, e, 2, 65535, 0);
  this[e] = 255 & t;
  this[e + 1] = t >>> 8;
  return e + 2;
};

o.prototype.writeUint16BE = o.prototype.writeUInt16BE = function (t, e, n) {
  t = +t;
  e >>>= 0;
  if (!n) N(this, t, e, 2, 65535, 0);
  this[e] = t >>> 8;
  this[e + 1] = 255 & t;
  return e + 2;
};

o.prototype.writeUint32LE = o.prototype.writeUInt32LE = function (t, e, n) {
  t = +t;
  e >>>= 0;
  if (!n) N(this, t, e, 4, 4294967295, 0);
  this[e + 3] = t >>> 24;
  this[e + 2] = t >>> 16;
  this[e + 1] = t >>> 8;
  this[e] = 255 & t;
  return e + 4;
};

o.prototype.writeUint32BE = o.prototype.writeUInt32BE = function (t, e, n) {
  t = +t;
  e >>>= 0;
  if (!n) N(this, t, e, 4, 4294967295, 0);
  this[e] = t >>> 24;
  this[e + 1] = t >>> 16;
  this[e + 2] = t >>> 8;
  this[e + 3] = 255 & t;
  return e + 4;
};

o.prototype.writeBigUInt64LE = ft(function (t) {
  return F(this, t, arguments.length > 1 && undefined !== arguments[1] ? arguments[1] : 0, BigInt(0), BigInt('0xffffffffffffffff'));
});
o.prototype.writeBigUInt64BE = ft(function (t) {
  return j(this, t, arguments.length > 1 && undefined !== arguments[1] ? arguments[1] : 0, BigInt(0), BigInt('0xffffffffffffffff'));
});

o.prototype.writeIntLE = function (t, e, n, i) {
  if (((t = +t), (e >>>= 0), !i)) {
    var o = 2 ** (8 * n - 1);
    N(this, t, e, n, o - 1, -o);
  }

  var f = 0,
    u = 1,
    s = 0;

  for (this[e] = 255 & t; ++f < n && (u *= 256); ) {
    if (t < 0 && 0 === s && 0 !== this[e + f - 1]) s = 1;
    this[e + f] = (((t / u) >> 0) - s) & 255;
  }

  return e + n;
};

o.prototype.writeIntBE = function (t, e, n, i) {
  if (((t = +t), (e >>>= 0), !i)) {
    var o = 2 ** (8 * n - 1);
    N(this, t, e, n, o - 1, -o);
  }

  var f = n - 1,
    u = 1,
    s = 0;

  for (this[e + f] = 255 & t; --f >= 0 && (u *= 256); ) {
    if (t < 0 && 0 === s && 0 !== this[e + f + 1]) s = 1;
    this[e + f] = (((t / u) >> 0) - s) & 255;
  }

  return e + n;
};

o.prototype.writeInt8 = function (t, e, n) {
  t = +t;
  e >>>= 0;
  if (!n) N(this, t, e, 1, 127, -128);
  if (t < 0) t = 255 + t + 1;
  this[e] = 255 & t;
  return e + 1;
};

o.prototype.writeInt16LE = function (t, e, n) {
  t = +t;
  e >>>= 0;
  if (!n) N(this, t, e, 2, 32767, -32768);
  this[e] = 255 & t;
  this[e + 1] = t >>> 8;
  return e + 2;
};

o.prototype.writeInt16BE = function (t, e, n) {
  t = +t;
  e >>>= 0;
  if (!n) N(this, t, e, 2, 32767, -32768);
  this[e] = t >>> 8;
  this[e + 1] = 255 & t;
  return e + 2;
};

o.prototype.writeInt32LE = function (t, e, n) {
  t = +t;
  e >>>= 0;
  if (!n) N(this, t, e, 4, 2147483647, -2147483648);
  this[e] = 255 & t;
  this[e + 1] = t >>> 8;
  this[e + 2] = t >>> 16;
  this[e + 3] = t >>> 24;
  return e + 4;
};

o.prototype.writeInt32BE = function (t, e, n) {
  t = +t;
  e >>>= 0;
  if (!n) N(this, t, e, 4, 2147483647, -2147483648);
  if (t < 0) t = 4294967295 + t + 1;
  this[e] = t >>> 24;
  this[e + 1] = t >>> 16;
  this[e + 2] = t >>> 8;
  this[e + 3] = 255 & t;
  return e + 4;
};

o.prototype.writeBigInt64LE = ft(function (t) {
  return F(this, t, arguments.length > 1 && undefined !== arguments[1] ? arguments[1] : 0, -BigInt('0x8000000000000000'), BigInt('0x7fffffffffffffff'));
});
o.prototype.writeBigInt64BE = ft(function (t) {
  return j(this, t, arguments.length > 1 && undefined !== arguments[1] ? arguments[1] : 0, -BigInt('0x8000000000000000'), BigInt('0x7fffffffffffffff'));
});

o.prototype.writeFloatLE = function (t, e, n) {
  return z(this, t, e, true, n);
};

o.prototype.writeFloatBE = function (t, e, n) {
  return z(this, t, e, false, n);
};

o.prototype.writeDoubleLE = function (t, e, n) {
  return Y(this, t, e, true, n);
};

o.prototype.writeDoubleBE = function (t, e, n) {
  return Y(this, t, e, false, n);
};

o.prototype.copy = function (t, e, n, i) {
  if (!o.isBuffer(t)) throw new TypeError('argument should be a Buffer');
  if ((n || (n = 0), i || 0 === i || (i = this.length), e >= t.length && (e = t.length), e || (e = 0), i > 0 && i < n && (i = n), i === n)) return 0;
  if (0 === t.length || 0 === this.length) return 0;
  if (e < 0) throw new RangeError('targetStart out of bounds');
  if (n < 0 || n >= this.length) throw new RangeError('Index out of range');
  if (i < 0) throw new RangeError('sourceEnd out of bounds');
  if (i > this.length) i = this.length;
  if (t.length - e < i - n) i = t.length - e + n;
  var f = i - n;
  if (this === t && 'function' == typeof Uint8Array.prototype.copyWithin) this.copyWithin(e, n, i);
  else Uint8Array.prototype.set.call(t, this.subarray(n, i), e);
  return f;
};

o.prototype.fill = function (t, e, n, i) {
  if ('string' == typeof t) {
    if (('string' == typeof e ? ((i = e), (e = 0), (n = this.length)) : 'string' == typeof n && ((i = n), (n = this.length)), undefined !== i && 'string' != typeof i))
      throw new TypeError('encoding must be a string');
    if ('string' == typeof i && !o.isEncoding(i)) throw new TypeError('Unknown encoding: ' + i);

    if (1 === t.length) {
      var f = t.charCodeAt(0);
      if (('utf8' === i && f < 128) || 'latin1' === i) t = f;
    }
  } else 'number' == typeof t ? (t &= 255) : 'boolean' == typeof t && (t = Number(t));

  if (e < 0 || this.length < e || this.length < n) throw new RangeError('Out of range index');
  if (n <= e) return this;
  var u;
  if (((e >>>= 0), (n = undefined === n ? this.length : n >>> 0), t || (t = 0), 'number' == typeof t)) for (u = e; u < n; ++u) this[u] = t;
  else {
    var s = o.isBuffer(t) ? t : o.from(t, i),
      h = s.length;
    if (0 === h) throw new TypeError('The value "' + t + '" is invalid for argument "value"');

    for (u = 0; u < n - e; ++u) this[u + e] = s[u % h];
  }
  return this;
};

var G = {};

function V(e, n, i) {
  G[e] = (function (i) {
    require('./10')(s, i);

    var o = s,
      f = t(),
      module12 = function () {
        var t,
          module15 = require('./15')(o);

        if (f) {
          var module15 = require('./15')(this).constructor;

          t = Reflect.construct(module15, arguments, module15);
        } else t = module15.apply(this, arguments);

        return require('./12')(this, t);
      };

    function s() {
      var t;

      require('./7')(this, s);

      t = module12.call(this);
      Object.defineProperty(require('./14')(t), 'message', {
        value: n.apply(require('./14')(t), arguments),
        writable: true,
        configurable: true,
      });
      t.name = t.name + ' [' + e + ']';
      delete t.name;
      return t;
    }

    require('./8')(s, [
      {
        key: 'code',
        get: function () {
          return e;
        },
        set: function (t) {
          Object.defineProperty(this, 'code', {
            configurable: true,
            enumerable: true,
            value: t,
            writable: true,
          });
        },
      },
      {
        key: 'toString',
        value: function () {
          return this.name + ' [' + e + ']: ' + this.message;
        },
      },
    ]);

    return s;
  })(i);
}

function q(t) {
  for (var e = '', n = t.length, i = '-' === t[0] ? 1 : 0; n >= i + 4; n -= 3) e = '_' + t.slice(n - 3, n) + e;

  return '' + t.slice(0, n) + e;
}

function W(t, e, n) {
  J(e, 'offset');
  if (!(undefined !== t[e] && undefined !== t[e + n])) Z(e, t.length - (n + 1));
}

function X(t, e, n, i, o, f) {
  if (t > n || t < e) {
    var u,
      s = 'bigint' == typeof e ? 'n' : '';
    throw (
      ((u =
        f > 3
          ? 0 === e || e === BigInt(0)
            ? '>= 0' + s + ' and < 2' + s + ' ** ' + 8 * (f + 1) + s
            : '>= -(2' + s + ' ** ' + (8 * (f + 1) - 1) + s + ') and < 2 ** ' + (8 * (f + 1) - 1) + s
          : '>= ' + e + s + ' and <= ' + n + s),
      new G.ERR_OUT_OF_RANGE('value', u, t))
    );
  }

  W(i, o, f);
}

function J(t, e) {
  if ('number' != typeof t) throw new G.ERR_INVALID_ARG_TYPE(e, 'number', t);
}

function Z(t, e, n) {
  if (Math.floor(t) !== t) throw (J(t, n), new G.ERR_OUT_OF_RANGE(n || 'offset', 'an integer', t));
  if (e < 0) throw new G.ERR_BUFFER_OUT_OF_BOUNDS();
  throw new G.ERR_OUT_OF_RANGE(n || 'offset', '>= ' + (n ? 1 : 0) + ' and <= ' + e, t);
}

V(
  'ERR_BUFFER_OUT_OF_BOUNDS',
  function (t) {
    return t ? t + ' is outside of buffer bounds' : 'Attempt to access memory outside buffer bounds';
  },
  RangeError
);
V(
  'ERR_INVALID_ARG_TYPE',
  function (t, e) {
    return 'The "' + t + '" argument must be of type number. Received type ' + typeof e;
  },
  TypeError
);
V(
  'ERR_OUT_OF_RANGE',
  function (t, e, n) {
    var i = 'The value of "' + t + '" is out of range.',
      o = n;
    if (Number.isInteger(n) && Math.abs(n) > 2 ** 32) o = q(String(n));
    else if ('bigint' == typeof n) {
      o = String(n);
      if (n > BigInt(2) ** BigInt(32) || n < -(BigInt(2) ** BigInt(32))) o = q(o);
      o += 'n';
    }
    i += ' It must be ' + e + '. Received ' + o;
    return i;
  },
  RangeError
);
var $ = /[^+/0-9A-Za-z-_]/g;

function H(t) {
  if ((t = (t = t.split('=')[0]).trim().replace($, '')).length < 2) return '';

  for (; t.length % 4 != 0; ) t += '=';

  return t;
}

function K(t, e) {
  var n;
  e = e || 1 / 0;

  for (var i = t.length, o = null, f = [], u = 0; u < i; ++u) {
    if ((n = t.charCodeAt(u)) > 55295 && n < 57344) {
      if (!o) {
        if (n > 56319) {
          if ((e -= 3) > -1) f.push(239, 191, 189);
          continue;
        }

        if (u + 1 === i) {
          if ((e -= 3) > -1) f.push(239, 191, 189);
          continue;
        }

        o = n;
        continue;
      }

      if (n < 56320) {
        if ((e -= 3) > -1) f.push(239, 191, 189);
        o = n;
        continue;
      }

      n = 65536 + (((o - 55296) << 10) | (n - 56320));
    } else o && (e -= 3) > -1 && f.push(239, 191, 189);

    if (((o = null), n < 128)) {
      if ((e -= 1) < 0) break;
      f.push(n);
    } else if (n < 2048) {
      if ((e -= 2) < 0) break;
      f.push((n >> 6) | 192, (63 & n) | 128);
    } else if (n < 65536) {
      if ((e -= 3) < 0) break;
      f.push((n >> 12) | 224, ((n >> 6) & 63) | 128, (63 & n) | 128);
    } else {
      if (!(n < 1114112)) throw new Error('Invalid code point');
      if ((e -= 4) < 0) break;
      f.push((n >> 18) | 240, ((n >> 12) & 63) | 128, ((n >> 6) & 63) | 128, (63 & n) | 128);
    }
  }

  return f;
}

function Q(t) {
  for (var e = [], n = 0; n < t.length; ++n) e.push(255 & t.charCodeAt(n));

  return e;
}

function tt(t, e) {
  for (var n, i, o, f = [], u = 0; u < t.length && !((e -= 2) < 0); ++u) {
    i = (n = t.charCodeAt(u)) >> 8;
    o = n % 256;
    f.push(o);
    f.push(i);
  }

  return f;
}

function rt(t) {
  return require('base64-js').toByteArray(H(t));
}

function et(t, e, n, i) {
  var o;

  for (o = 0; o < i && !(o + n >= e.length || o >= t.length); ++o) e[o + n] = t[o];

  return o;
}

function nt(t, e) {
  return t instanceof e || (null != t && null != t.constructor && null != t.constructor.name && t.constructor.name === e.name);
}

function it(t) {
  return t != t;
}

var ot = (function () {
  for (var t = new Array(256), e = 0; e < 16; ++e) for (var n = 16 * e, i = 0; i < 16; ++i) t[n + i] = '0123456789abcdef'[e] + '0123456789abcdef'[i];

  return t;
})();

function ft(t) {
  return 'undefined' == typeof BigInt ? ut : t;
}

function ut() {
  throw new Error('BigInt not supported');
}
