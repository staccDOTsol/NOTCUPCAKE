function t(t, n, i) {
  return n <= t && t <= i;
}

function n(t) {
  if (undefined === t) return {};
  if (t === Object(t)) return t;
  throw TypeError('Could not convert argument to dictionary');
}

function i(t) {
  for (var n = String(t), i = n.length, o = 0, s = []; o < i; ) {
    var a = n.charCodeAt(o);
    if (a < 55296 || a > 57343) s.push(a);
    else if (56320 <= a && a <= 57343) s.push(65533);
    else if (55296 <= a && a <= 56319)
      if (o === i - 1) s.push(65533);
      else {
        var f = t.charCodeAt(o + 1);

        if (56320 <= f && f <= 57343) {
          var h = 1023 & a,
            u = 1023 & f;
          s.push(65536 + (h << 10) + u);
          o += 1;
        } else s.push(65533);
      }
    o += 1;
  }

  return s;
}

function o(t) {
  for (var n = '', i = 0; i < t.length; ++i) {
    var o = t[i];
    if (o <= 65535) n += String.fromCharCode(o);
    else {
      o -= 65536;
      n += String.fromCharCode(55296 + (o >> 10), 56320 + (1023 & o));
    }
  }

  return n;
}

var s = -1;

function a(t) {
  this.tokens = [].slice.call(t);
}

a.prototype = {
  endOfStream: function () {
    return !this.tokens.length;
  },
  read: function () {
    return this.tokens.length ? this.tokens.shift() : s;
  },
  prepend: function (t) {
    if (Array.isArray(t)) for (var n = t; n.length; ) this.tokens.unshift(n.pop());
    else this.tokens.unshift(t);
  },
  push: function (t) {
    if (Array.isArray(t)) for (var n = t; n.length; ) this.tokens.push(n.shift());
    else this.tokens.push(t);
  },
};
var f = -1;

function h(t, n) {
  if (t) throw TypeError('Decoder error');
  return n || 65533;
}

var u = 'utf-8';

function l(t, i) {
  if (!(this instanceof l)) return new l(t, i);
  if ((t = undefined !== t ? String(t).toLowerCase() : u) !== u) throw new Error('Encoding not supported. Only utf-8 is supported');
  i = n(i);
  this._streaming = false;
  this._BOMseen = false;
  this._decoder = null;
  this._fatal = Boolean(i.fatal);
  this._ignoreBOM = Boolean(i.ignoreBOM);
  Object.defineProperty(this, 'encoding', {
    value: 'utf-8',
  });
  Object.defineProperty(this, 'fatal', {
    value: this._fatal,
  });
  Object.defineProperty(this, 'ignoreBOM', {
    value: this._ignoreBOM,
  });
}

function d(t, i) {
  if (!(this instanceof d)) return new d(t, i);
  if ((t = undefined !== t ? String(t).toLowerCase() : u) !== u) throw new Error('Encoding not supported. Only utf-8 is supported');
  i = n(i);
  this._streaming = false;
  this._encoder = null;
  this._options = {
    fatal: Boolean(i.fatal),
  };
  Object.defineProperty(this, 'encoding', {
    value: 'utf-8',
  });
}

function c(n) {
  var i = n.fatal,
    o = 0,
    a = 0,
    u = 0,
    l = 128,
    d = 191;

  this.handler = function (n, c) {
    if (c === s && 0 !== u) {
      u = 0;
      return h(i);
    }

    if (c === s) return f;

    if (0 === u) {
      if (t(c, 0, 127)) return c;

      if (t(c, 194, 223)) {
        u = 1;
        o = c - 192;
      } else if (t(c, 224, 239)) {
        if (224 === c) l = 160;
        if (237 === c) d = 159;
        u = 2;
        o = c - 224;
      } else {
        if (!t(c, 240, 244)) return h(i);
        if (240 === c) l = 144;
        if (244 === c) d = 143;
        u = 3;
        o = c - 240;
      }

      o <<= 6 * u;
      return null;
    }

    if (!t(c, l, d)) {
      o = u = a = 0;
      l = 128;
      d = 191;
      n.prepend(c);
      return h(i);
    }

    if (((l = 128), (d = 191), (o += (c - 128) << (6 * (u - (a += 1)))), a !== u)) return null;
    var p = o;
    o = u = a = 0;
    return p;
  };
}

function p(n) {
  n.fatal;

  this.handler = function (n, i) {
    if (i === s) return f;
    if (t(i, 0, 127)) return i;
    var o, a;

    if (t(i, 128, 2047)) {
      o = 1;
      a = 192;
    } else if (t(i, 2048, 65535)) {
      o = 2;
      a = 224;
    } else if (t(i, 65536, 1114111)) {
      o = 3;
      a = 240;
    }

    for (var h = [(i >> (6 * o)) + a]; o > 0; ) {
      var u = i >> (6 * (o - 1));
      h.push(128 | (63 & u));
      o -= 1;
    }

    return h;
  };
}

l.prototype = {
  decode: function (t, i) {
    var s;
    s =
      'object' == typeof t && t instanceof ArrayBuffer
        ? new Uint8Array(t)
        : 'object' == typeof t && 'buffer' in t && t.buffer instanceof ArrayBuffer
        ? new Uint8Array(t.buffer, t.byteOffset, t.byteLength)
        : new Uint8Array(0);
    i = n(i);

    if (!this._streaming) {
      this._decoder = new c({
        fatal: this._fatal,
      });
      this._BOMseen = false;
    }

    this._streaming = Boolean(i.stream);

    for (var h, u = new a(s), l = []; !u.endOfStream() && (h = this._decoder.handler(u, u.read())) !== f; ) null !== h && (Array.isArray(h) ? l.push.apply(l, h) : l.push(h));

    if (!this._streaming) {
      do {
        if ((h = this._decoder.handler(u, u.read())) === f) break;
        if (null !== h) Array.isArray(h) ? l.push.apply(l, h) : l.push(h);
      } while (!u.endOfStream());

      this._decoder = null;
    }

    if (l.length) -1 === ['utf-8'].indexOf(this.encoding) || this._ignoreBOM || this._BOMseen || (65279 === l[0] ? ((this._BOMseen = true), l.shift()) : (this._BOMseen = true));
    return o(l);
  },
};
d.prototype = {
  encode: function (t, o) {
    t = t ? String(t) : '';
    o = n(o);
    if (!this._streaming) this._encoder = new p(this._options);
    this._streaming = Boolean(o.stream);

    for (var s, h = [], u = new a(i(t)); !u.endOfStream() && (s = this._encoder.handler(u, u.read())) !== f; ) Array.isArray(s) ? h.push.apply(h, s) : h.push(s);

    if (!this._streaming) {
      for (; (s = this._encoder.handler(u, u.read())) !== f; ) Array.isArray(s) ? h.push.apply(h, s) : h.push(s);

      this._encoder = null;
    }

    return new Uint8Array(h);
  },
};
exports.TextEncoder = d;
exports.TextDecoder = l;
