function t(t, o) {
  var u = ('undefined' != typeof Symbol && t[Symbol.iterator]) || t['@@iterator'];
  if (u) return (u = u.call(t)).next.bind(u);

  if (Array.isArray(t) || (u = n(t)) || (o && t && 'number' == typeof t.length)) {
    if (u) t = u;
    var i = 0;
    return function () {
      return i >= t.length
        ? {
            done: true,
          }
        : {
            done: false,
            value: t[i++],
          };
    };
  }

  throw new TypeError('Invalid attempt to iterate non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.');
}

function n(t, n) {
  if (t) {
    if ('string' == typeof t) return o(t, n);
    var u = Object.prototype.toString.call(t).slice(8, -1);
    if ('Object' === u && t.constructor) u = t.constructor.name;
    return 'Map' === u || 'Set' === u ? Array.from(t) : 'Arguments' === u || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(u) ? o(t, n) : undefined;
  }
}

function o(t, n) {
  if (null == n || n > t.length) n = t.length;

  for (var o = 0, u = new Array(n); o < n; o++) u[o] = t[o];

  return u;
}

function u(n) {
  for (var o, u = [], i = t(n.entries); !(o = i()).done; ) {
    var l = o.value;

    if ('FRAME' === l.type) {
      var c = l.location,
        f = l.functionName;
      if ('NATIVE' !== c.type)
        u.push({
          methodName: f,
          file: c.sourceUrl,
          lineNumber: c.line1Based,
          column: 'SOURCE' === c.type ? c.column1Based - 1 : c.virtualOffset0Based,
        });
    }
  }

  return u;
}

module.exports = function (t) {
  if (null == t) return [];

  var module64 = require('./64');

  return Array.isArray(t)
    ? t
    : globals.HermesInternal
    ? u(require('./65')(t))
    : module64.parse(t).map(function (t) {
        return require('./29')({}, t, {
          column: null != t.column ? t.column - 1 : null,
        });
      });
};
