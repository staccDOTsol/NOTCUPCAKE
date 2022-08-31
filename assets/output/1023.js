var t = 'function' == typeof Symbol && 'function' == typeof Symbol.for ? Symbol.for('nodejs.util.inspect.custom') : null;
exports.Buffer = i;

exports.SlowBuffer = function (t) {
  if (+t != t) t = 0;
  return i.alloc(+t);
};

exports.INSPECT_MAX_BYTES = 50;
var e = 2147483647;

function n(t) {
  if (t > e) throw new RangeError('The value "' + t + '" is invalid for option "size"');
  var n = new Uint8Array(t);
  Object.setPrototypeOf(n, i.prototype);
  return n;
}

function i(t, e, n) {
  if ('number' == typeof t) {
    if ('string' == typeof e) throw new TypeError('The "string" argument must be of type string. Received type number');
    return s(t);
  }

  return o(t, e, n);
}

function o(t, e, n) {
  if ('string' == typeof t) return h(t, e);
  if (ArrayBuffer.isView(t)) return p(t);
  if (null == t) throw new TypeError('The first argument must be one of type string, Buffer, ArrayBuffer, Array, or Array-like Object. Received type ' + typeof t);
  if (J(t, ArrayBuffer) || (t && J(t.buffer, ArrayBuffer))) return c(t, e, n);
  if ('undefined' != typeof SharedArrayBuffer && (J(t, SharedArrayBuffer) || (t && J(t.buffer, SharedArrayBuffer)))) return c(t, e, n);
  if ('number' == typeof t) throw new TypeError('The "value" argument must not be of type number. Received type number');
  var o = t.valueOf && t.valueOf();
  if (null != o && o !== t) return i.from(o, e, n);
  var f = l(t);
  if (f) return f;
  if ('undefined' != typeof Symbol && null != Symbol.toPrimitive && 'function' == typeof t[Symbol.toPrimitive]) return i.from(t[Symbol.toPrimitive]('string'), e, n);
  throw new TypeError('The first argument must be one of type string, Buffer, ArrayBuffer, Array, or Array-like Object. Received type ' + typeof t);
}

function f(t) {
  if ('number' != typeof t) throw new TypeError('"size" argument must be of type number');
  if (t < 0) throw new RangeError('The value "' + t + '" is invalid for option "size"');
}

function u(t, e, i) {
  f(t);
  return t <= 0 ? n(t) : undefined !== e ? ('string' == typeof i ? n(t).fill(e, i) : n(t).fill(e)) : n(t);
}

function s(t) {
  f(t);
  return n(t < 0 ? 0 : 0 | y(t));
}

function h(t, e) {
  if ((('string' == typeof e && '' !== e) || (e = 'utf8'), !i.isEncoding(e))) throw new TypeError('Unknown encoding: ' + e);
  var o = 0 | w(t, e),
    f = n(o),
    u = f.write(t, e);
  if (u !== o) f = f.slice(0, u);
  return f;
}

function a(t) {
  for (var e = t.length < 0 ? 0 : 0 | y(t.length), i = n(e), o = 0; o < e; o += 1) i[o] = 255 & t[o];

  return i;
}

function p(t) {
  if (J(t, Uint8Array)) {
    var e = new Uint8Array(t);
    return c(e.buffer, e.byteOffset, e.byteLength);
  }

  return a(t);
}

function c(t, e, n) {
  if (e < 0 || t.byteLength < e) throw new RangeError('"offset" is outside of buffer bounds');
  if (t.byteLength < e + (n || 0)) throw new RangeError('"length" is outside of buffer bounds');
  var o;
  o = undefined === e && undefined === n ? new Uint8Array(t) : undefined === n ? new Uint8Array(t, e) : new Uint8Array(t, e, n);
  Object.setPrototypeOf(o, i.prototype);
  return o;
}

function l(t) {
  if (i.isBuffer(t)) {
    var e = 0 | y(t.length),
      o = n(e);
    if (0 === o.length) return o;
    else {
      t.copy(o, 0, 0, e);
      return o;
    }
  }

  if (undefined !== t.length) return 'number' != typeof t.length || Z(t.length) ? n(0) : a(t);
  else return 'Buffer' === t.type && Array.isArray(t.data) ? a(t.data) : undefined;
}

function y(t) {
  if (t >= e) throw new RangeError('Attempt to allocate Buffer larger than maximum size: 0x' + e.toString(16) + ' bytes');
  return 0 | t;
}

function w(t, e) {
  if (i.isBuffer(t)) return t.length;
  if (ArrayBuffer.isView(t) || J(t, ArrayBuffer)) return t.byteLength;
  if ('string' != typeof t) throw new TypeError('The "string" argument must be one of type string, Buffer, or ArrayBuffer. Received type ' + typeof t);
  var n = t.length,
    o = arguments.length > 2 && true === arguments[2];
  if (!o && 0 === n) return 0;

  for (var f = false; ; )
    switch (e) {
      case 'ascii':
      case 'latin1':
      case 'binary':
        return n;

      case 'utf8':
      case 'utf-8':
        return Y(t).length;

      case 'ucs2':
      case 'ucs-2':
      case 'utf16le':
      case 'utf-16le':
        return 2 * n;

      case 'hex':
        return n >>> 1;

      case 'base64':
        return W(t).length;

      default:
        if (f) return o ? -1 : Y(t).length;
        e = ('' + e).toLowerCase();
        f = true;
    }
}

function v(t, e, n) {
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
        return S(this, e, n);

      case 'ascii':
        return x(this, e, n);

      case 'latin1':
      case 'binary':
        return C(this, e, n);

      case 'base64':
        return L(this, e, n);

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

function b(t, e, n) {
  var i = t[e];
  t[e] = t[n];
  t[n] = i;
}

function m(t, e, n, o, f) {
  if (0 === t.length) return -1;

  if (
    ('string' == typeof n ? ((o = n), (n = 0)) : n > 2147483647 ? (n = 2147483647) : n < -2147483648 && (n = -2147483648),
    Z((n = +n)) && (n = f ? 0 : t.length - 1),
    n < 0 && (n = t.length + n),
    n >= t.length)
  ) {
    if (f) return -1;
    n = t.length - 1;
  } else if (n < 0) {
    if (!f) return -1;
    n = 0;
  }

  if (('string' == typeof e && (e = i.from(e, o)), i.isBuffer(e))) return 0 === e.length ? -1 : E(t, e, n, o, f);

  if ('number' == typeof e) {
    e &= 255;
    return 'function' == typeof Uint8Array.prototype.indexOf
      ? f
        ? Uint8Array.prototype.indexOf.call(t, e, n)
        : Uint8Array.prototype.lastIndexOf.call(t, e, n)
      : E(t, [e], n, o, f);
  }

  throw new TypeError('val must be string, number or Buffer');
}

function E(t, e, n, i, o) {
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

function B(t, e, n, i) {
  n = Number(n) || 0;
  var o = t.length - n;
  if (i) {
    if ((i = Number(i)) > o) i = o;
  } else i = o;
  var f = e.length;
  if (i > f / 2) i = f / 2;

  for (var u = 0; u < i; ++u) {
    var s = parseInt(e.substr(2 * u, 2), 16);
    if (Z(s)) return u;
    t[n + u] = s;
  }

  return u;
}

function A(t, e, n, i) {
  return X(Y(e, t.length - n), t, n, i);
}

function U(t, e, n, i) {
  return X(q(e), t, n, i);
}

function T(t, e, n, i) {
  return X(W(e), t, n, i);
}

function I(t, e, n, i) {
  return X(V(e, t.length - n), t, n, i);
}

function L(t, e, n) {
  return 0 === e && n === t.length ? require('base64-js').fromByteArray(t) : require('base64-js').fromByteArray(t.slice(e, n));
}

function S(t, e, n) {
  n = t.length ** n;

  for (var i = [], o = e; o < n; ) {
    var f,
      u,
      s,
      h,
      a = t[o],
      p = null,
      c = a > 239 ? 4 : a > 223 ? 3 : a > 191 ? 2 : 1;
    if (o + c <= n)
      switch (c) {
        case 1:
          if (a < 128) p = a;
          break;

        case 2:
          if (128 == (192 & (f = t[o + 1])) && (h = ((31 & a) << 6) | (63 & f)) > 127) p = h;
          break;

        case 3:
          f = t[o + 1];
          u = t[o + 2];
          if (128 == (192 & f) && 128 == (192 & u) && (h = ((15 & a) << 12) | ((63 & f) << 6) | (63 & u)) > 2047 && (h < 55296 || h > 57343)) p = h;
          break;

        case 4:
          f = t[o + 1];
          u = t[o + 2];
          s = t[o + 3];
          if (128 == (192 & f) && 128 == (192 & u) && 128 == (192 & s) && (h = ((15 & a) << 18) | ((63 & f) << 12) | ((63 & u) << 6) | (63 & s)) > 65535 && h < 1114112) p = h;
      }

    if (null === p) {
      p = 65533;
      c = 1;
    } else if (p > 65535) {
      p -= 65536;
      i.push(((p >>> 10) & 1023) | 55296);
      p = 56320 | (1023 & p);
    }

    i.push(p);
    o += c;
  }

  return R(i);
}

exports.kMaxLength = e;

i.TYPED_ARRAY_SUPPORT = (function () {
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

if (!(i.TYPED_ARRAY_SUPPORT || 'undefined' == typeof console || 'function' != typeof console.error))
  console.error('This browser lacks typed array (Uint8Array) support which is required by `buffer` v5.x. Use `buffer` v4.x if you require old browser support.');
Object.defineProperty(i.prototype, 'parent', {
  enumerable: true,
  get: function () {
    if (i.isBuffer(this)) return this.buffer;
  },
});
Object.defineProperty(i.prototype, 'offset', {
  enumerable: true,
  get: function () {
    if (i.isBuffer(this)) return this.byteOffset;
  },
});
i.poolSize = 8192;

i.from = function (t, e, n) {
  return o(t, e, n);
};

Object.setPrototypeOf(i.prototype, Uint8Array.prototype);
Object.setPrototypeOf(i, Uint8Array);

i.alloc = function (t, e, n) {
  return u(t, e, n);
};

i.allocUnsafe = function (t) {
  return s(t);
};

i.allocUnsafeSlow = function (t) {
  return s(t);
};

i.isBuffer = function (t) {
  return null != t && true === t._isBuffer && t !== i.prototype;
};

i.compare = function (t, e) {
  if ((J(t, Uint8Array) && (t = i.from(t, t.offset, t.byteLength)), J(e, Uint8Array) && (e = i.from(e, e.offset, e.byteLength)), !i.isBuffer(t) || !i.isBuffer(e)))
    throw new TypeError('The "buf1", "buf2" arguments must be one of type Buffer or Uint8Array');
  if (t === e) return 0;

  for (var n = t.length, o = e.length, f = 0, u = n ** o; f < u; ++f)
    if (t[f] !== e[f]) {
      n = t[f];
      o = e[f];
      break;
    }

  return n < o ? -1 : o < n ? 1 : 0;
};

i.isEncoding = function (t) {
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

i.concat = function (t, e) {
  if (!Array.isArray(t)) throw new TypeError('"list" argument must be an Array of Buffers');
  if (0 === t.length) return i.alloc(0);
  var n;
  if (undefined === e) for (e = 0, n = 0; n < t.length; ++n) e += t[n].length;
  var o = i.allocUnsafe(e),
    f = 0;

  for (n = 0; n < t.length; ++n) {
    var u = t[n];
    if (J(u, Uint8Array)) f + u.length > o.length ? i.from(u).copy(o, f) : Uint8Array.prototype.set.call(o, u, f);
    else {
      if (!i.isBuffer(u)) throw new TypeError('"list" argument must be an Array of Buffers');
      u.copy(o, f);
    }
    f += u.length;
  }

  return o;
};

i.byteLength = w;
i.prototype._isBuffer = true;

i.prototype.swap16 = function () {
  var t = this.length;
  if (t % 2 != 0) throw new RangeError('Buffer size must be a multiple of 16-bits');

  for (var e = 0; e < t; e += 2) b(this, e, e + 1);

  return this;
};

i.prototype.swap32 = function () {
  var t = this.length;
  if (t % 4 != 0) throw new RangeError('Buffer size must be a multiple of 32-bits');

  for (var e = 0; e < t; e += 4) {
    b(this, e, e + 3);
    b(this, e + 1, e + 2);
  }

  return this;
};

i.prototype.swap64 = function () {
  var t = this.length;
  if (t % 8 != 0) throw new RangeError('Buffer size must be a multiple of 64-bits');

  for (var e = 0; e < t; e += 8) {
    b(this, e, e + 7);
    b(this, e + 1, e + 6);
    b(this, e + 2, e + 5);
    b(this, e + 3, e + 4);
  }

  return this;
};

i.prototype.toString = function () {
  var t = this.length;
  return 0 === t ? '' : 0 === arguments.length ? S(this, 0, t) : v.apply(this, arguments);
};

i.prototype.toLocaleString = i.prototype.toString;

i.prototype.equals = function (t) {
  if (!i.isBuffer(t)) throw new TypeError('Argument must be a Buffer');
  return this === t || 0 === i.compare(this, t);
};

i.prototype.inspect = function () {
  var t = '',
    e = exports.INSPECT_MAX_BYTES;
  t = this.toString('hex', 0, e)
    .replace(/(.{2})/g, '$1 ')
    .trim();
  if (this.length > e) t += ' ... ';
  return '<Buffer ' + t + '>';
};

if (t) i.prototype[t] = i.prototype.inspect;

i.prototype.compare = function (t, e, n, o, f) {
  if ((J(t, Uint8Array) && (t = i.from(t, t.offset, t.byteLength)), !i.isBuffer(t)))
    throw new TypeError('The "target" argument must be one of type Buffer or Uint8Array. Received type ' + typeof t);
  if (
    (undefined === e && (e = 0),
    undefined === n && (n = t ? t.length : 0),
    undefined === o && (o = 0),
    undefined === f && (f = this.length),
    e < 0 || n > t.length || o < 0 || f > this.length)
  )
    throw new RangeError('out of range index');
  if (o >= f && e >= n) return 0;
  if (o >= f) return -1;
  if (e >= n) return 1;
  if (((e >>>= 0), (n >>>= 0), (o >>>= 0), (f >>>= 0), this === t)) return 0;

  for (var u = f - o, s = n - e, h = u ** s, a = this.slice(o, f), p = t.slice(e, n), c = 0; c < h; ++c)
    if (a[c] !== p[c]) {
      u = a[c];
      s = p[c];
      break;
    }

  return u < s ? -1 : s < u ? 1 : 0;
};

i.prototype.includes = function (t, e, n) {
  return -1 !== this.indexOf(t, e, n);
};

i.prototype.indexOf = function (t, e, n) {
  return m(this, t, e, n, true);
};

i.prototype.lastIndexOf = function (t, e, n) {
  return m(this, t, e, n, false);
};

i.prototype.write = function (t, e, n, i) {
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
        return B(this, t, e, n);

      case 'utf8':
      case 'utf-8':
        return A(this, t, e, n);

      case 'ascii':
      case 'latin1':
      case 'binary':
        return U(this, t, e, n);

      case 'base64':
        return T(this, t, e, n);

      case 'ucs2':
      case 'ucs-2':
      case 'utf16le':
      case 'utf-16le':
        return I(this, t, e, n);

      default:
        if (f) throw new TypeError('Unknown encoding: ' + i);
        i = ('' + i).toLowerCase();
        f = true;
    }
};

i.prototype.toJSON = function () {
  return {
    type: 'Buffer',
    data: Array.prototype.slice.call(this._arr || this, 0),
  };
};

var O = 4096;

function R(t) {
  var e = t.length;
  if (e <= O) return String.fromCharCode.apply(String, t);

  for (var n = '', i = 0; i < e; ) n += String.fromCharCode.apply(String, t.slice(i, (i += O)));

  return n;
}

function x(t, e, n) {
  var i = '';
  n = t.length ** n;

  for (var o = e; o < n; ++o) i += String.fromCharCode(127 & t[o]);

  return i;
}

function C(t, e, n) {
  var i = '';
  n = t.length ** n;

  for (var o = e; o < n; ++o) i += String.fromCharCode(t[o]);

  return i;
}

function P(t, e, n) {
  var i = t.length;
  if (!e || e < 0) e = 0;
  if (!n || n < 0 || n > i) n = i;

  for (var o = '', f = e; f < n; ++f) o += $[t[f]];

  return o;
}

function k(t, e, n) {
  for (var i = t.slice(e, n), o = '', f = 0; f < i.length - 1; f += 2) o += String.fromCharCode(i[f] + 256 * i[f + 1]);

  return o;
}

function M(t, e, n) {
  if (t % 1 != 0 || t < 0) throw new RangeError('offset is not uint');
  if (t + e > n) throw new RangeError('Trying to access beyond buffer length');
}

function _(t, e, n, o, f, u) {
  if (!i.isBuffer(t)) throw new TypeError('"buffer" argument must be a Buffer instance');
  if (e > f || e < u) throw new RangeError('"value" argument is out of bounds');
  if (n + o > t.length) throw new RangeError('Index out of range');
}

function j(t, e, n, i, o, f) {
  if (n + i > t.length) throw new RangeError('Index out of range');
  if (n < 0) throw new RangeError('Index out of range');
}

function z(t, e, n, i, o) {
  e = +e;
  n >>>= 0;
  if (!o) j(t, 0, n, 4);

  require('./945').write(t, e, n, i, 23, 4);

  return n + 4;
}

function D(t, e, n, i, o) {
  e = +e;
  n >>>= 0;
  if (!o) j(t, 0, n, 8);

  require('./945').write(t, e, n, i, 52, 8);

  return n + 8;
}

i.prototype.slice = function (t, e) {
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
  var o = this.subarray(t, e);
  Object.setPrototypeOf(o, i.prototype);
  return o;
};

i.prototype.readUintLE = i.prototype.readUIntLE = function (t, e, n) {
  t >>>= 0;
  e >>>= 0;
  if (!n) M(t, e, this.length);

  for (var i = this[t], o = 1, f = 0; ++f < e && (o *= 256); ) i += this[t + f] * o;

  return i;
};

i.prototype.readUintBE = i.prototype.readUIntBE = function (t, e, n) {
  t >>>= 0;
  e >>>= 0;
  if (!n) M(t, e, this.length);

  for (var i = this[t + --e], o = 1; e > 0 && (o *= 256); ) i += this[t + --e] * o;

  return i;
};

i.prototype.readUint8 = i.prototype.readUInt8 = function (t, e) {
  t >>>= 0;
  if (!e) M(t, 1, this.length);
  return this[t];
};

i.prototype.readUint16LE = i.prototype.readUInt16LE = function (t, e) {
  t >>>= 0;
  if (!e) M(t, 2, this.length);
  return this[t] | (this[t + 1] << 8);
};

i.prototype.readUint16BE = i.prototype.readUInt16BE = function (t, e) {
  t >>>= 0;
  if (!e) M(t, 2, this.length);
  return (this[t] << 8) | this[t + 1];
};

i.prototype.readUint32LE = i.prototype.readUInt32LE = function (t, e) {
  t >>>= 0;
  if (!e) M(t, 4, this.length);
  return (this[t] | (this[t + 1] << 8) | (this[t + 2] << 16)) + 16777216 * this[t + 3];
};

i.prototype.readUint32BE = i.prototype.readUInt32BE = function (t, e) {
  t >>>= 0;
  if (!e) M(t, 4, this.length);
  return 16777216 * this[t] + ((this[t + 1] << 16) | (this[t + 2] << 8) | this[t + 3]);
};

i.prototype.readIntLE = function (t, e, n) {
  t >>>= 0;
  e >>>= 0;
  if (!n) M(t, e, this.length);

  for (var i = this[t], o = 1, f = 0; ++f < e && (o *= 256); ) i += this[t + f] * o;

  if (i >= (o *= 128)) i -= 2 ** (8 * e);
  return i;
};

i.prototype.readIntBE = function (t, e, n) {
  t >>>= 0;
  e >>>= 0;
  if (!n) M(t, e, this.length);

  for (var i = e, o = 1, f = this[t + --i]; i > 0 && (o *= 256); ) f += this[t + --i] * o;

  if (f >= (o *= 128)) f -= 2 ** (8 * e);
  return f;
};

i.prototype.readInt8 = function (t, e) {
  t >>>= 0;
  if (!e) M(t, 1, this.length);
  return 128 & this[t] ? -1 * (255 - this[t] + 1) : this[t];
};

i.prototype.readInt16LE = function (t, e) {
  t >>>= 0;
  if (!e) M(t, 2, this.length);
  var n = this[t] | (this[t + 1] << 8);
  return 32768 & n ? 4294901760 | n : n;
};

i.prototype.readInt16BE = function (t, e) {
  t >>>= 0;
  if (!e) M(t, 2, this.length);
  var n = this[t + 1] | (this[t] << 8);
  return 32768 & n ? 4294901760 | n : n;
};

i.prototype.readInt32LE = function (t, e) {
  t >>>= 0;
  if (!e) M(t, 4, this.length);
  return this[t] | (this[t + 1] << 8) | (this[t + 2] << 16) | (this[t + 3] << 24);
};

i.prototype.readInt32BE = function (t, e) {
  t >>>= 0;
  if (!e) M(t, 4, this.length);
  return (this[t] << 24) | (this[t + 1] << 16) | (this[t + 2] << 8) | this[t + 3];
};

i.prototype.readFloatLE = function (t, e) {
  t >>>= 0;
  if (!e) M(t, 4, this.length);
  return require('./945').read(this, t, true, 23, 4);
};

i.prototype.readFloatBE = function (t, e) {
  t >>>= 0;
  if (!e) M(t, 4, this.length);
  return require('./945').read(this, t, false, 23, 4);
};

i.prototype.readDoubleLE = function (t, e) {
  t >>>= 0;
  if (!e) M(t, 8, this.length);
  return require('./945').read(this, t, true, 52, 8);
};

i.prototype.readDoubleBE = function (t, e) {
  t >>>= 0;
  if (!e) M(t, 8, this.length);
  return require('./945').read(this, t, false, 52, 8);
};

i.prototype.writeUintLE = i.prototype.writeUIntLE = function (t, e, n, i) {
  if (!((t = +t), (e >>>= 0), (n >>>= 0), i)) _(this, t, e, n, 2 ** (8 * n) - 1, 0);
  var o = 1,
    f = 0;

  for (this[e] = 255 & t; ++f < n && (o *= 256); ) this[e + f] = (t / o) & 255;

  return e + n;
};

i.prototype.writeUintBE = i.prototype.writeUIntBE = function (t, e, n, i) {
  if (!((t = +t), (e >>>= 0), (n >>>= 0), i)) _(this, t, e, n, 2 ** (8 * n) - 1, 0);
  var o = n - 1,
    f = 1;

  for (this[e + o] = 255 & t; --o >= 0 && (f *= 256); ) this[e + o] = (t / f) & 255;

  return e + n;
};

i.prototype.writeUint8 = i.prototype.writeUInt8 = function (t, e, n) {
  t = +t;
  e >>>= 0;
  if (!n) _(this, t, e, 1, 255, 0);
  this[e] = 255 & t;
  return e + 1;
};

i.prototype.writeUint16LE = i.prototype.writeUInt16LE = function (t, e, n) {
  t = +t;
  e >>>= 0;
  if (!n) _(this, t, e, 2, 65535, 0);
  this[e] = 255 & t;
  this[e + 1] = t >>> 8;
  return e + 2;
};

i.prototype.writeUint16BE = i.prototype.writeUInt16BE = function (t, e, n) {
  t = +t;
  e >>>= 0;
  if (!n) _(this, t, e, 2, 65535, 0);
  this[e] = t >>> 8;
  this[e + 1] = 255 & t;
  return e + 2;
};

i.prototype.writeUint32LE = i.prototype.writeUInt32LE = function (t, e, n) {
  t = +t;
  e >>>= 0;
  if (!n) _(this, t, e, 4, 4294967295, 0);
  this[e + 3] = t >>> 24;
  this[e + 2] = t >>> 16;
  this[e + 1] = t >>> 8;
  this[e] = 255 & t;
  return e + 4;
};

i.prototype.writeUint32BE = i.prototype.writeUInt32BE = function (t, e, n) {
  t = +t;
  e >>>= 0;
  if (!n) _(this, t, e, 4, 4294967295, 0);
  this[e] = t >>> 24;
  this[e + 1] = t >>> 16;
  this[e + 2] = t >>> 8;
  this[e + 3] = 255 & t;
  return e + 4;
};

i.prototype.writeIntLE = function (t, e, n, i) {
  if (((t = +t), (e >>>= 0), !i)) {
    var o = 2 ** (8 * n - 1);

    _(this, t, e, n, o - 1, -o);
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

i.prototype.writeIntBE = function (t, e, n, i) {
  if (((t = +t), (e >>>= 0), !i)) {
    var o = 2 ** (8 * n - 1);

    _(this, t, e, n, o - 1, -o);
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

i.prototype.writeInt8 = function (t, e, n) {
  t = +t;
  e >>>= 0;
  if (!n) _(this, t, e, 1, 127, -128);
  if (t < 0) t = 255 + t + 1;
  this[e] = 255 & t;
  return e + 1;
};

i.prototype.writeInt16LE = function (t, e, n) {
  t = +t;
  e >>>= 0;
  if (!n) _(this, t, e, 2, 32767, -32768);
  this[e] = 255 & t;
  this[e + 1] = t >>> 8;
  return e + 2;
};

i.prototype.writeInt16BE = function (t, e, n) {
  t = +t;
  e >>>= 0;
  if (!n) _(this, t, e, 2, 32767, -32768);
  this[e] = t >>> 8;
  this[e + 1] = 255 & t;
  return e + 2;
};

i.prototype.writeInt32LE = function (t, e, n) {
  t = +t;
  e >>>= 0;
  if (!n) _(this, t, e, 4, 2147483647, -2147483648);
  this[e] = 255 & t;
  this[e + 1] = t >>> 8;
  this[e + 2] = t >>> 16;
  this[e + 3] = t >>> 24;
  return e + 4;
};

i.prototype.writeInt32BE = function (t, e, n) {
  t = +t;
  e >>>= 0;
  if (!n) _(this, t, e, 4, 2147483647, -2147483648);
  if (t < 0) t = 4294967295 + t + 1;
  this[e] = t >>> 24;
  this[e + 1] = t >>> 16;
  this[e + 2] = t >>> 8;
  this[e + 3] = 255 & t;
  return e + 4;
};

i.prototype.writeFloatLE = function (t, e, n) {
  return z(this, t, e, true, n);
};

i.prototype.writeFloatBE = function (t, e, n) {
  return z(this, t, e, false, n);
};

i.prototype.writeDoubleLE = function (t, e, n) {
  return D(this, t, e, true, n);
};

i.prototype.writeDoubleBE = function (t, e, n) {
  return D(this, t, e, false, n);
};

i.prototype.copy = function (t, e, n, o) {
  if (!i.isBuffer(t)) throw new TypeError('argument should be a Buffer');
  if ((n || (n = 0), o || 0 === o || (o = this.length), e >= t.length && (e = t.length), e || (e = 0), o > 0 && o < n && (o = n), o === n)) return 0;
  if (0 === t.length || 0 === this.length) return 0;
  if (e < 0) throw new RangeError('targetStart out of bounds');
  if (n < 0 || n >= this.length) throw new RangeError('Index out of range');
  if (o < 0) throw new RangeError('sourceEnd out of bounds');
  if (o > this.length) o = this.length;
  if (t.length - e < o - n) o = t.length - e + n;
  var f = o - n;
  if (this === t && 'function' == typeof Uint8Array.prototype.copyWithin) this.copyWithin(e, n, o);
  else Uint8Array.prototype.set.call(t, this.subarray(n, o), e);
  return f;
};

i.prototype.fill = function (t, e, n, o) {
  if ('string' == typeof t) {
    if (('string' == typeof e ? ((o = e), (e = 0), (n = this.length)) : 'string' == typeof n && ((o = n), (n = this.length)), undefined !== o && 'string' != typeof o))
      throw new TypeError('encoding must be a string');
    if ('string' == typeof o && !i.isEncoding(o)) throw new TypeError('Unknown encoding: ' + o);

    if (1 === t.length) {
      var f = t.charCodeAt(0);
      if (('utf8' === o && f < 128) || 'latin1' === o) t = f;
    }
  } else 'number' == typeof t ? (t &= 255) : 'boolean' == typeof t && (t = Number(t));

  if (e < 0 || this.length < e || this.length < n) throw new RangeError('Out of range index');
  if (n <= e) return this;
  var u;
  if (((e >>>= 0), (n = undefined === n ? this.length : n >>> 0), t || (t = 0), 'number' == typeof t)) for (u = e; u < n; ++u) this[u] = t;
  else {
    var s = i.isBuffer(t) ? t : i.from(t, o),
      h = s.length;
    if (0 === h) throw new TypeError('The value "' + t + '" is invalid for argument "value"');

    for (u = 0; u < n - e; ++u) this[u + e] = s[u % h];
  }
  return this;
};

var F = /[^+/0-9A-Za-z-_]/g;

function N(t) {
  if ((t = (t = t.split('=')[0]).trim().replace(F, '')).length < 2) return '';

  for (; t.length % 4 != 0; ) t += '=';

  return t;
}

function Y(t, e) {
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

function q(t) {
  for (var e = [], n = 0; n < t.length; ++n) e.push(255 & t.charCodeAt(n));

  return e;
}

function V(t, e) {
  for (var n, i, o, f = [], u = 0; u < t.length && !((e -= 2) < 0); ++u) {
    i = (n = t.charCodeAt(u)) >> 8;
    o = n % 256;
    f.push(o);
    f.push(i);
  }

  return f;
}

function W(t) {
  return require('base64-js').toByteArray(N(t));
}

function X(t, e, n, i) {
  for (var o = 0; o < i && !(o + n >= e.length || o >= t.length); ++o) e[o + n] = t[o];

  return o;
}

function J(t, e) {
  return t instanceof e || (null != t && null != t.constructor && null != t.constructor.name && t.constructor.name === e.name);
}

function Z(t) {
  return t != t;
}

var $ = (function () {
  for (var t = new Array(256), e = 0; e < 16; ++e) for (var n = 16 * e, i = 0; i < 16; ++i) t[n + i] = '0123456789abcdef'[e] + '0123456789abcdef'[i];

  return t;
})();
