exports.default = function (o, l) {
  for (var u, i = n(o); !(u = i()).done; ) {
    var c,
      f,
      p = u.value,
      y = null != (c = null == (f = p.match(/^[^:]+:/)) ? undefined : f[0]) ? c : '',
      v = p
        .replace(new RegExp('^' + module634.default(y)), '')
        .replace(/\/+/g, '/')
        .replace(/^\//, ''),
      s = new RegExp(
        '^' +
          module634.default(y) +
          '(/)*' +
          v
            .split('.')
            .map(function (n) {
              return '*' === n ? '[^/]+' : module634.default(n);
            })
            .join('\\.')
      ),
      b = l.replace(/\/+/g, '/');
    if (s.test(b)) return b.replace(s, '');
  }

  return;
};

var module634 = require('@babel/runtime/helpers/interopRequireDefault')(require('./634'));

function n(t, n) {
  var l = ('undefined' != typeof Symbol && t[Symbol.iterator]) || t['@@iterator'];
  if (l) return (l = l.call(t)).next.bind(l);

  if (Array.isArray(t) || (l = o(t)) || (n && t && 'number' == typeof t.length)) {
    if (l) t = l;
    var u = 0;
    return function () {
      return u >= t.length
        ? {
            done: true,
          }
        : {
            done: false,
            value: t[u++],
          };
    };
  }

  throw new TypeError('Invalid attempt to iterate non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.');
}

function o(t, n) {
  if (t) {
    if ('string' == typeof t) return l(t, n);
    var o = Object.prototype.toString.call(t).slice(8, -1);
    if ('Object' === o && t.constructor) o = t.constructor.name;
    return 'Map' === o || 'Set' === o ? Array.from(t) : 'Arguments' === o || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(o) ? l(t, n) : undefined;
  }
}

function l(t, n) {
  if (null == n || n > t.length) n = t.length;

  for (var o = 0, l = new Array(n); o < n; o++) l[o] = t[o];

  return l;
}
