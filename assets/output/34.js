exports.createStringifySafeWithLimits = o;

var module18 = require('@babel/runtime/helpers/interopRequireDefault')(require('./18'));

function e(t, e) {
  var i = ('undefined' != typeof Symbol && t[Symbol.iterator]) || t['@@iterator'];
  if (i) return (i = i.call(t)).next.bind(i);

  if (Array.isArray(t) || (i = n(t)) || (e && t && 'number' == typeof t.length)) {
    if (i) t = i;
    var o = 0;
    return function () {
      return o >= t.length
        ? {
            done: true,
          }
        : {
            done: false,
            value: t[o++],
          };
    };
  }

  throw new TypeError('Invalid attempt to iterate non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.');
}

function n(t, e) {
  if (t) {
    if ('string' == typeof t) return i(t, e);
    var n = Object.prototype.toString.call(t).slice(8, -1);
    if ('Object' === n && t.constructor) n = t.constructor.name;
    return 'Map' === n || 'Set' === n ? Array.from(t) : 'Arguments' === n || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(n) ? i(t, e) : undefined;
  }
}

function i(t, e) {
  if (null == e || e > t.length) e = t.length;

  for (var n = 0, i = new Array(e); n < e; n++) i[n] = t[n];

  return i;
}

function o(n) {
  var i = n.maxDepth,
    o = undefined === i ? Number.POSITIVE_INFINITY : i,
    u = n.maxStringLimit,
    f = undefined === u ? Number.POSITIVE_INFINITY : u,
    l = n.maxArrayLimit,
    c = undefined === l ? Number.POSITIVE_INFINITY : l,
    y = n.maxObjectKeysLimit,
    s = undefined === y ? Number.POSITIVE_INFINITY : y,
    h = [];

  function v(n, i) {
    for (; h.length && this !== h[0]; ) h.shift();

    if ('string' == typeof i) {
      return i.length > f + '...(truncated)...'.length ? i.substring(0, f) + '...(truncated)...' : i;
    }

    if ('object' != typeof i || null === i) return i;
    var u = i;
    if (Array.isArray(i))
      h.length >= o
        ? (u = '[ ... array with ' + i.length + ' values ... ]')
        : i.length > c && (u = i.slice(0, c).concat(['... extra ' + (i.length - c) + ' values truncated ...']));
    else {
      module18.default('object' == typeof i, 'This was already found earlier');
      var l = Object.keys(i);
      if (h.length >= o) u = '{ ... object with ' + l.length + ' keys ... }';
      else if (l.length > s) {
        u = {};

        for (var y, v = e(l.slice(0, s)); !(y = v()).done; ) {
          var b = y.value;
          u[b] = i[b];
        }

        u['...(truncated keys)...'] = l.length - s;
      }
    }
    h.unshift(u);
    return u;
  }

  return function (t) {
    if (undefined === t) return 'undefined';
    if (null === t) return 'null';
    if ('function' == typeof t)
      try {
        return t.toString();
      } catch (t) {
        return '[function unknown]';
      }
    else {
      if (t instanceof Error) return t.name + ': ' + t.message;

      try {
        var e = JSON.stringify(t, v);
        return undefined === e ? '["' + typeof t + '" failed to stringify]' : e;
      } catch (e) {
        if ('function' == typeof t.toString)
          try {
            return t.toString();
          } catch (t) {}
      }
    }
    return '["' + typeof t + '" failed to stringify]';
  };
}

var u = o({
  maxDepth: 10,
  maxStringLimit: 100,
  maxArrayLimit: 50,
  maxObjectKeysLimit: 50,
});
exports.default = u;
