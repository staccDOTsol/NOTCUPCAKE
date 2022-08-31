function n(n, o) {
  var i = ('undefined' != typeof Symbol && n[Symbol.iterator]) || n['@@iterator'];
  if (i) return (i = i.call(n)).next.bind(i);

  if (Array.isArray(n) || (i = t(n)) || (o && n && 'number' == typeof n.length)) {
    if (i) n = i;
    var f = 0;
    return function () {
      return f >= n.length
        ? {
            done: true,
          }
        : {
            done: false,
            value: n[f++],
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

function i(n, t) {
  for (var o = [], i = 0, f = n.indexOf(t); f >= 0; ) {
    o.push(n.slice(i, f));
    i = f + 1;
    f = n.indexOf(t, i);
  }

  if (i !== n.length) o.push(n.slice(i));
  return o;
}

function f(n, t, o) {
  for (var i = n.indexOf(t); i >= 0; ) {
    n[i] = o;
    i = n.indexOf(t, i + 1);
  }

  return n;
}

function u(n) {
  var t = n.toString(16).toUpperCase();
  if (1 === t.length) t = '0' + t;
  return '%' + t;
}

function l(n) {
  for (var module1023 = require('./1023').Buffer.alloc(n.byteLength), o = 0, i = 0; i < n.length; ++i)
    37 === n[i] && require('./1022').isASCIIHex(n[i + 1]) && require('./1022').isASCIIHex(n[i + 2])
      ? ((module1023[o++] = parseInt(n.slice(i + 1, i + 3).toString(), 16)), (i += 2))
      : (module1023[o++] = n[i]);

  return module1023.slice(0, o);
}

function c(t) {
  for (var o, u = [], c = n(i(t, 38)); !(o = c()).done; ) {
    var s = o.value;

    if (0 !== s.length) {
      var v = undefined,
        h = undefined,
        p = s.indexOf(61);

      if (p >= 0) {
        v = s.slice(0, p);
        h = s.slice(p + 1);
      } else {
        v = s;
        h = require('./1023').Buffer.alloc(0);
      }

      v = f(require('./1023').Buffer.from(v), 43, 32);
      h = f(require('./1023').Buffer.from(h), 43, 32);
      u.push([l(v).toString(), l(h).toString()]);
    }
  }

  return u;
}

function s(t) {
  for (var o, i = '', f = n(t); !(o = f()).done; ) {
    var l = o.value;
    i += 32 === l ? '+' : 42 === l || 45 === l || 46 === l || (l >= 48 && l <= 57) || (l >= 65 && l <= 90) || 95 === l || (l >= 97 && l <= 122) ? String.fromCodePoint(l) : u(l);
  }

  return i;
}

module.exports = {
  percentEncode: u,
  percentDecode: l,
  parseUrlencoded: function (n) {
    return c(require('./1023').Buffer.from(n));
  },
  serializeUrlencoded: function (t) {
    var o = arguments.length > 1 && undefined !== arguments[1] ? arguments[1] : undefined,
      i = 'utf-8';
    if (undefined !== o) i = o;

    for (var f, u = '', l = n(t.entries()); !(f = l()).done; ) {
      var c = f.value,
        module23 = require('./23')(c, 2),
        h = module23[0],
        p = module23[1],
        module1023 = s(require('./1023').Buffer.from(p[0])),
        b = p[1];

      if (p.length > 2 && undefined !== p[2]) 'hidden' === p[2] && '_charset_' === module1023 ? (b = i) : 'file' === p[2] && (b = b.name);
      b = s(require('./1023').Buffer.from(b));
      if (0 !== h) u += '&';
      u += module1023 + '=' + b;
    }

    return u;
  },
};
