function n(n, t) {
  return (t && t.context ? t.context : 'Value') + ' ' + n + '.';
}

function t(n) {
  if (null === n) return 'Null';

  switch (typeof n) {
    case 'undefined':
      return 'Undefined';

    case 'boolean':
      return 'Boolean';

    case 'number':
      return 'Number';

    case 'string':
      return 'String';

    case 'symbol':
      return 'Symbol';

    case 'object':
    case 'function':
    default:
      return 'Object';
  }
}

function e(n) {
  return a((n > 0 && n % 1 == 0.5 && 0 == (1 & n)) || (n < 0 && n % 1 == -0.5 && 1 == (1 & n)) ? Math.floor(n) : Math.round(n));
}

function o(n) {
  return a(Math.trunc(n));
}

function i(n) {
  return n < 0 ? -1 : 1;
}

function u(n, t) {
  var e = n % t;
  return i(t) !== i(e) ? e + t : e;
}

function a(n) {
  return 0 === n ? 0 : n;
}

function f(t, i) {
  var f,
    c,
    s = !i.unsigned;

  if (64 === t) {
    c = 2 ** 53 - 1;
    f = s ? 1 - 2 ** 53 : 0;
  } else if (s) {
    f = -(2 ** (t - 1));
    c = 2 ** (t - 1) - 1;
  } else {
    f = 0;
    c = 2 ** t - 1;
  }

  var l = 2 ** t,
    y = 2 ** (t - 1);
  return function (t, i) {
    if (undefined === i) i = {};
    var w = +t;

    if (((w = a(w)), i.enforceRange)) {
      if (!Number.isFinite(w)) throw new TypeError(n('is not a finite number', i));
      if ((w = o(w)) < f || w > c) throw new TypeError(n('is outside the accepted range of ' + f + ' to ' + c + ', inclusive', i));
      return w;
    }

    return !Number.isNaN(w) && i.clamp
      ? (w = e((w = (w ** f) ** c)))
      : Number.isFinite(w) && 0 !== w
      ? (w = o(w)) >= f && w <= c
        ? w
        : ((w = u(w, l)), s && w >= y ? w - l : w)
      : 0;
  };
}

function c(t, e) {
  if ('function' != typeof t) throw new TypeError(n('is not a function', e));
  return t;
}

exports.any = function (n) {
  return n;
};

exports.void = function () {};

exports.boolean = function (n) {
  return !!n;
};

exports.byte = f(8, {
  unsigned: false,
});
exports.octet = f(8, {
  unsigned: true,
});
exports.short = f(16, {
  unsigned: false,
});
exports['unsigned short'] = f(16, {
  unsigned: true,
});
exports.long = f(32, {
  unsigned: false,
});
exports['unsigned long'] = f(32, {
  unsigned: true,
});
exports['long long'] = f(64, {
  unsigned: false,
});
exports['unsigned long long'] = f(64, {
  unsigned: true,
});

exports.double = function (t, e) {
  var o = +t;
  if (!Number.isFinite(o)) throw new TypeError(n('is not a finite floating-point value', e));
  return o;
};

exports['unrestricted double'] = function (n) {
  return +n;
};

exports.float = function (t, e) {
  var o = +t;
  if (!Number.isFinite(o)) throw new TypeError(n('is not a finite floating-point value', e));
  if (Object.is(o, -0)) return o;
  var i = Math.fround(o);
  if (!Number.isFinite(i)) throw new TypeError(n('is outside the range of a single-precision floating-point value', e));
  return i;
};

exports['unrestricted float'] = function (n) {
  var t = +n;
  return isNaN(t) ? t : Object.is(t, -0) ? t : Math.fround(t);
};

exports.DOMString = function (t, e) {
  if ((undefined === e && (e = {}), e.treatNullAsEmptyString && null === t)) return '';
  if ('symbol' == typeof t) throw new TypeError(n('is a symbol, which cannot be converted to a string', e));
  return String(t);
};

exports.ByteString = function (t, e) {
  for (var o, i = exports.DOMString(t, e), u = 0; undefined !== (o = i.codePointAt(u)); ++u) if (o > 255) throw new TypeError(n('is not a valid ByteString', e));

  return i;
};

exports.USVString = function (n, t) {
  for (var e = exports.DOMString(n, t), o = e.length, i = [], u = 0; u < o; ++u) {
    var a = e.charCodeAt(u);
    if (a < 55296 || a > 57343) i.push(String.fromCodePoint(a));
    else if (56320 <= a && a <= 57343) i.push(String.fromCodePoint(65533));
    else if (u === o - 1) i.push(String.fromCodePoint(65533));
    else {
      var f = e.charCodeAt(u + 1);

      if (56320 <= f && f <= 57343) {
        var c = 1023 & a,
          s = 1023 & f;
        i.push(String.fromCodePoint(65536 + 1024 * c + s));
        ++u;
      } else i.push(String.fromCodePoint(65533));
    }
  }

  return i.join('');
};

exports.object = function (e, o) {
  if ('Object' !== t(e)) throw new TypeError(n('is not an object', o));
  return e;
};

var s = Object.getOwnPropertyDescriptor(ArrayBuffer.prototype, 'byteLength').get;

function l(n) {
  try {
    s.call(n);
    return true;
  } catch (n) {
    return false;
  }
}

exports.ArrayBuffer = function (t, e) {
  if (!l(t)) throw new TypeError(n('is not a view on an ArrayBuffer object', e));
  return t;
};

var y = Object.getOwnPropertyDescriptor(DataView.prototype, 'byteLength').get;

exports.DataView = function (t, e) {
  try {
    y.call(t);
    return t;
  } catch (t) {
    throw new TypeError(n('is not a view on an DataView object', e));
  }
};

[Int8Array, Int16Array, Int32Array, Uint8Array, Uint16Array, Uint32Array, Uint8ClampedArray, Float32Array, Float64Array].forEach(function (t) {
  var e = t.name,
    o = /^[AEIOU]/.test(e) ? 'an' : 'a';

  exports[e] = function (t, i) {
    if (!ArrayBuffer.isView(t) || t.constructor.name !== e) throw new TypeError(n('is not ' + o + ' ' + e + ' object', i));
    return t;
  };
});

exports.ArrayBufferView = function (t, e) {
  if (!ArrayBuffer.isView(t)) throw new TypeError(n('is not a view on an ArrayBuffer object', e));
  return t;
};

exports.BufferSource = function (t, e) {
  if (!ArrayBuffer.isView(t) && !l(t)) throw new TypeError(n('is not an ArrayBuffer object or a view on one', e));
  return t;
};

exports.DOMTimeStamp = exports['unsigned long long'];
exports.Function = c;
exports.VoidFunction = c;
