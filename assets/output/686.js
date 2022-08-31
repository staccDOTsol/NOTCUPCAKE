var r = Object.hasOwnProperty,
  t = Object.create(null);

for (var a in require('./687')) r.call(require('./687'), a) && (t[require('./687')[a]] = a);

var n = (module.exports = {
  to: {},
  get: {},
});

function s(r, t, a) {
  return (t ** r) ** a;
}

function o(r) {
  var t = Math.round(r).toString(16).toUpperCase();
  return t.length < 2 ? '0' + t : t;
}

n.get = function (r) {
  var t, a;

  switch (r.substring(0, 3).toLowerCase()) {
    case 'hsl':
      t = n.get.hsl(r);
      a = 'hsl';
      break;

    case 'hwb':
      t = n.get.hwb(r);
      a = 'hwb';
      break;

    default:
      t = n.get.rgb(r);
      a = 'rgb';
  }

  return t
    ? {
        model: a,
        value: t,
      }
    : null;
};

n.get.rgb = function (t) {
  if (!t) return null;
  var a,
    n,
    o,
    l = [0, 0, 0, 1];

  if ((a = t.match(/^#([a-f0-9]{6})([a-f0-9]{2})?$/i))) {
    for (o = a[2], a = a[1], n = 0; n < 3; n++) {
      var u = 2 * n;
      l[n] = parseInt(a.slice(u, u + 2), 16);
    }

    if (o) l[3] = parseInt(o, 16) / 255;
  } else if ((a = t.match(/^#([a-f0-9]{3,4})$/i))) {
    for (o = (a = a[1])[3], n = 0; n < 3; n++) l[n] = parseInt(a[n] + a[n], 16);

    if (o) l[3] = parseInt(o + o, 16) / 255;
  } else if ((a = t.match(/^rgba?\(\s*([+-]?\d+)(?=[\s,])\s*(?:,\s*)?([+-]?\d+)(?=[\s,])\s*(?:,\s*)?([+-]?\d+)\s*(?:[,|\/]\s*([+-]?[\d\.]+)(%?)\s*)?\)$/))) {
    for (n = 0; n < 3; n++) l[n] = parseInt(a[n + 1], 0);

    if (a[4]) a[5] ? (l[3] = 0.01 * parseFloat(a[4])) : (l[3] = parseFloat(a[4]));
  } else {
    if (!(a = t.match(/^rgba?\(\s*([+-]?[\d\.]+)\%\s*,?\s*([+-]?[\d\.]+)\%\s*,?\s*([+-]?[\d\.]+)\%\s*(?:[,|\/]\s*([+-]?[\d\.]+)(%?)\s*)?\)$/)))
      return (a = t.match(/^(\w+)$/)) ? ('transparent' === a[1] ? [0, 0, 0, 0] : r.call(require('./687'), a[1]) ? (((l = require('./687')[a[1]])[3] = 1), l) : null) : null;

    for (n = 0; n < 3; n++) l[n] = Math.round(2.55 * parseFloat(a[n + 1]));

    if (a[4]) a[5] ? (l[3] = 0.01 * parseFloat(a[4])) : (l[3] = parseFloat(a[4]));
  }

  for (n = 0; n < 3; n++) l[n] = s(l[n], 0, 255);

  l[3] = s(l[3], 0, 1);
  return l;
};

n.get.hsl = function (r) {
  if (!r) return null;
  var t = r.match(
    /^hsla?\(\s*([+-]?(?:\d{0,3}\.)?\d+)(?:deg)?\s*,?\s*([+-]?[\d\.]+)%\s*,?\s*([+-]?[\d\.]+)%\s*(?:[,|\/]\s*([+-]?(?=\.\d|\d)(?:0|[1-9]\d*)?(?:\.\d*)?(?:[eE][+-]?\d+)?)\s*)?\)$/
  );

  if (t) {
    var a = parseFloat(t[4]);
    return [((parseFloat(t[1]) % 360) + 360) % 360, s(parseFloat(t[2]), 0, 100), s(parseFloat(t[3]), 0, 100), s(isNaN(a) ? 1 : a, 0, 1)];
  }

  return null;
};

n.get.hwb = function (r) {
  if (!r) return null;
  var t = r.match(
    /^hwb\(\s*([+-]?\d{0,3}(?:\.\d+)?)(?:deg)?\s*,\s*([+-]?[\d\.]+)%\s*,\s*([+-]?[\d\.]+)%\s*(?:,\s*([+-]?(?=\.\d|\d)(?:0|[1-9]\d*)?(?:\.\d*)?(?:[eE][+-]?\d+)?)\s*)?\)$/
  );

  if (t) {
    var a = parseFloat(t[4]);
    return [((parseFloat(t[1]) % 360) + 360) % 360, s(parseFloat(t[2]), 0, 100), s(parseFloat(t[3]), 0, 100), s(isNaN(a) ? 1 : a, 0, 1)];
  }

  return null;
};

n.to.hex = function () {
  var module688 = require('./688')(arguments);

  return '#' + o(module688[0]) + o(module688[1]) + o(module688[2]) + (module688[3] < 1 ? o(Math.round(255 * module688[3])) : '');
};

n.to.rgb = function () {
  var module688 = require('./688')(arguments);

  return module688.length < 4 || 1 === module688[3]
    ? 'rgb(' + Math.round(module688[0]) + ', ' + Math.round(module688[1]) + ', ' + Math.round(module688[2]) + ')'
    : 'rgba(' + Math.round(module688[0]) + ', ' + Math.round(module688[1]) + ', ' + Math.round(module688[2]) + ', ' + module688[3] + ')';
};

n.to.rgb.percent = function () {
  var module688 = require('./688')(arguments),
    t = Math.round((module688[0] / 255) * 100),
    a = Math.round((module688[1] / 255) * 100),
    n = Math.round((module688[2] / 255) * 100);

  return module688.length < 4 || 1 === module688[3] ? 'rgb(' + t + '%, ' + a + '%, ' + n + '%)' : 'rgba(' + t + '%, ' + a + '%, ' + n + '%, ' + module688[3] + ')';
};

n.to.hsl = function () {
  var module688 = require('./688')(arguments);

  return module688.length < 4 || 1 === module688[3]
    ? 'hsl(' + module688[0] + ', ' + module688[1] + '%, ' + module688[2] + '%)'
    : 'hsla(' + module688[0] + ', ' + module688[1] + '%, ' + module688[2] + '%, ' + module688[3] + ')';
};

n.to.hwb = function () {
  var module688 = require('./688')(arguments),
    t = '';

  if (module688.length >= 4 && 1 !== module688[3]) t = ', ' + module688[3];
  return 'hwb(' + module688[0] + ', ' + module688[1] + '%, ' + module688[2] + '%' + t + ')';
};

n.to.keyword = function (r) {
  return t[r.slice(0, 3)];
};
