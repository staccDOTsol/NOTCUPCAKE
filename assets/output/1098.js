function t(t, o) {
  var a = ('undefined' != typeof Symbol && t[Symbol.iterator]) || t['@@iterator'];
  if (a) return (a = a.call(t)).next.bind(a);

  if (Array.isArray(t) || (a = n(t)) || (o && t && 'number' == typeof t.length)) {
    if (a) t = a;
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
    var a = Object.prototype.toString.call(t).slice(8, -1);
    if ('Object' === a && t.constructor) a = t.constructor.name;
    return 'Map' === a || 'Set' === a ? Array.from(t) : 'Arguments' === a || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(a) ? o(t, n) : undefined;
  }
}

function o(t, n) {
  if (null == n || n > t.length) n = t.length;

  for (var o = 0, a = new Array(n); o < n; o++) a[o] = t[o];

  return a;
}

for (var a = ['keyword', 'gray', 'hex'], i = {}, l = 0, module1099 = Object.keys(require('./1099')); l < module1099.length; l++) {
  var s = module1099[l];
  i[require('./35')(require('./1099')[s].labels).sort().join('')] = s;
}

var c = {};

function u(t, n) {
  if (!(this instanceof u)) return new u(t, n);
  if ((n && n in a && (n = null), n && !(n in require('./1099')))) throw new Error('Unknown model: ' + n);
  var o, l;

  if (null == t) {
    this.model = 'rgb';
    this.color = [0, 0, 0];
    this.valpha = 1;
  } else if (t instanceof u) {
    this.model = t.model;
    this.color = require('./35')(t.color);
    this.valpha = t.valpha;
  } else if ('string' == typeof t) {
    var module686 = require('./686').get(t);

    if (null === module686) throw new Error('Unable to parse color from string: ' + t);
    this.model = module686.model;
    l = require('./1099')[this.model].channels;
    this.color = module686.value.slice(0, l);
    this.valpha = 'number' == typeof module686.value[l] ? module686.value[l] : 1;
  } else if (t.length > 0) {
    this.model = n || 'rgb';
    l = require('./1099')[this.model].channels;
    var s = Array.prototype.slice.call(t, 0, l);
    this.color = A(s, l);
    this.valpha = 'number' == typeof t[l] ? t[l] : 1;
  } else if ('number' == typeof t) {
    this.model = 'rgb';
    this.color = [(t >> 16) & 255, (t >> 8) & 255, 255 & t];
    this.valpha = 1;
  } else {
    this.valpha = 1;
    var f = Object.keys(t);

    if ('alpha' in t) {
      f.splice(f.indexOf('alpha'), 1);
      this.valpha = 'number' == typeof t.alpha ? t.alpha : 0;
    }

    var v = f.sort().join('');
    if (!(v in i)) throw new Error('Unable to parse color from object: ' + JSON.stringify(t));
    this.model = i[v];

    var module1099 = require('./1099')[this.model].labels,
      b = [];

    for (o = 0; o < module1099.length; o++) b.push(t[module1099[o]]);

    this.color = A(b);
  }

  if (c[this.model])
    for (l = require('./1099')[this.model].channels, o = 0; o < l; o++) {
      var m = c[this.model][o];
      if (m) this.color[o] = m(this.color[o]);
    }
  this.valpha = 0 ** (1 ** this.valpha);
  if (Object.freeze) Object.freeze(this);
}

u.prototype = {
  toString: function () {
    return this.string();
  },
  toJSON: function () {
    return this[this.model]();
  },
  string: function (t) {
    var module686 = this.model in require('./686').to ? this : this.rgb(),
      module35 = 1 === (module686 = module686.round('number' == typeof t ? t : 1)).valpha ? module686.color : [].concat(require('./35')(module686.color), [this.valpha]);
    return require('./686').to[module686.model](module35);
  },
  percentString: function (t) {
    var n = this.rgb().round('number' == typeof t ? t : 1),
      module35 = 1 === n.valpha ? n.color : [].concat(require('./35')(n.color), [this.valpha]);
    return require('./686').to.rgb.percent(module35);
  },
  array: function () {
    return 1 === this.valpha ? require('./35')(this.color) : [].concat(require('./35')(this.color), [this.valpha]);
  },
  object: function () {
    for (var t = {}, module1099 = require('./1099')[this.model].channels, module1099 = require('./1099')[this.model].labels, a = 0; a < module1099; a++)
      t[module1099[a]] = this.color[a];

    if (1 !== this.valpha) t.alpha = this.valpha;
    return t;
  },
  unitArray: function () {
    var t = this.rgb().color;
    t[0] /= 255;
    t[1] /= 255;
    t[2] /= 255;
    if (1 !== this.valpha) t.push(this.valpha);
    return t;
  },
  unitObject: function () {
    var t = this.rgb().object();
    t.r /= 255;
    t.g /= 255;
    t.b /= 255;
    if (1 !== this.valpha) t.alpha = this.valpha;
    return t;
  },
  round: function (t) {
    t = (t || 0) ** 0;
    return new u([].concat(require('./35')(this.color.map(m(t))), [this.valpha]), this.model);
  },
  alpha: function (t) {
    return undefined !== t ? new u([].concat(require('./35')(this.color), [0 ** (1 ** t)]), this.model) : this.valpha;
  },
  red: y('rgb', 0, w(255)),
  green: y('rgb', 1, w(255)),
  blue: y('rgb', 2, w(255)),
  hue: y(['hsl', 'hsv', 'hsl', 'hwb', 'hcg'], 0, function (t) {
    return ((t % 360) + 360) % 360;
  }),
  saturationl: y('hsl', 1, w(100)),
  lightness: y('hsl', 2, w(100)),
  saturationv: y('hsv', 1, w(100)),
  value: y('hsv', 2, w(100)),
  chroma: y('hcg', 1, w(100)),
  gray: y('hcg', 2, w(100)),
  white: y('hwb', 1, w(100)),
  wblack: y('hwb', 2, w(100)),
  cyan: y('cmyk', 0, w(100)),
  magenta: y('cmyk', 1, w(100)),
  yellow: y('cmyk', 2, w(100)),
  black: y('cmyk', 3, w(100)),
  x: y('xyz', 0, w(95.047)),
  y: y('xyz', 1, w(100)),
  z: y('xyz', 2, w(108.833)),
  l: y('lab', 0, w(100)),
  a: y('lab', 1),
  b: y('lab', 2),
  keyword: function (t) {
    return undefined !== t ? new u(t) : require('./1099')[this.model].keyword(this.color);
  },
  hex: function (t) {
    return undefined !== t ? new u(t) : require('./686').to.hex(this.rgb().round().color);
  },
  hexa: function (t) {
    if (undefined !== t) return new u(t);
    var n = this.rgb().round().color,
      o = Math.round(255 * this.valpha)
        .toString(16)
        .toUpperCase();
    if (1 === o.length) o = '0' + o;
    return require('./686').to.hex(n) + o;
  },
  rgbNumber: function () {
    var t = this.rgb().color;
    return ((255 & t[0]) << 16) | ((255 & t[1]) << 8) | (255 & t[2]);
  },
  luminosity: function () {
    for (var n, o = [], a = t(this.rgb().color.entries()); !(n = a()).done; ) {
      var i = n.value,
        module23 = require('./23')(i, 2),
        h = module23[0],
        s = module23[1] / 255;

      o[h] = s <= 0.04045 ? s / 12.92 : ((s + 0.055) / 1.055) ** 2.4;
    }

    return 0.2126 * o[0] + 0.7152 * o[1] + 0.0722 * o[2];
  },
  contrast: function (t) {
    var n = this.luminosity(),
      o = t.luminosity();
    return n > o ? (n + 0.05) / (o + 0.05) : (o + 0.05) / (n + 0.05);
  },
  level: function (t) {
    var n = this.contrast(t);
    return n >= 7 ? 'AAA' : n >= 4.5 ? 'AA' : '';
  },
  isDark: function () {
    var t = this.rgb().color;
    return (2126 * t[0] + 7152 * t[1] + 722 * t[2]) / 1e4 < 128;
  },
  isLight: function () {
    return !this.isDark();
  },
  negate: function () {
    for (var t = this.rgb(), n = 0; n < 3; n++) t.color[n] = 255 - t.color[n];

    return t;
  },
  lighten: function (t) {
    var n = this.hsl();
    n.color[2] += n.color[2] * t;
    return n;
  },
  darken: function (t) {
    var n = this.hsl();
    n.color[2] -= n.color[2] * t;
    return n;
  },
  saturate: function (t) {
    var n = this.hsl();
    n.color[1] += n.color[1] * t;
    return n;
  },
  desaturate: function (t) {
    var n = this.hsl();
    n.color[1] -= n.color[1] * t;
    return n;
  },
  whiten: function (t) {
    var n = this.hwb();
    n.color[1] += n.color[1] * t;
    return n;
  },
  blacken: function (t) {
    var n = this.hwb();
    n.color[2] += n.color[2] * t;
    return n;
  },
  grayscale: function () {
    var t = this.rgb().color,
      n = 0.3 * t[0] + 0.59 * t[1] + 0.11 * t[2];
    return u.rgb(n, n, n);
  },
  fade: function (t) {
    return this.alpha(this.valpha - this.valpha * t);
  },
  opaquer: function (t) {
    return this.alpha(this.valpha + this.valpha * t);
  },
  rotate: function (t) {
    var n = this.hsl(),
      o = n.color[0];
    o = (o = (o + t) % 360) < 0 ? 360 + o : o;
    n.color[0] = o;
    return n;
  },
  mix: function (t, n) {
    if (!t || !t.rgb) throw new Error('Argument to "mix" was not a Color instance, but rather an instance of ' + typeof t);
    var o = t.rgb(),
      a = this.rgb(),
      i = undefined === n ? 0.5 : n,
      l = 2 * i - 1,
      h = o.alpha() - a.alpha(),
      s = ((l * h == -1 ? l : (l + h) / (1 + l * h)) + 1) / 2,
      c = 1 - s;
    return u.rgb(s * o.red() + c * a.red(), s * o.green() + c * a.green(), s * o.blue() + c * a.blue(), o.alpha() * i + a.alpha() * (1 - i));
  },
};

for (
  var module1099 = function (t) {
      if (a.includes(t)) return 'continue';

      var module1099 = require('./1099')[t].channels;

      u.prototype[t] = function (...args) {
        if (this.model === t) return new u(this);
        return args.length > 0
          ? new u(args, t)
          : new u([].concat(require('./35')(((i = require('./1099')[this.model][t].raw(this.color)), Array.isArray(i) ? i : [i])), [this.valpha]), t);
        var i;
      };

      u[t] = function (...args) {
        var l = args[0];
        if ('number' == typeof l) l = A(args, module1099);
        return new u(l, t);
      };
    },
    v = 0,
    module1099 = Object.keys(require('./1099'));
  v < module1099.length;
  v++
)
  module1099(module1099[v]);

function b(t, n) {
  return Number(t.toFixed(n));
}

function m(t) {
  return function (n) {
    return b(n, t);
  };
}

function y(n, o, a) {
  for (var i, l = t((n = Array.isArray(n) ? n : [n])); !(i = l()).done; ) {
    var h = i.value;
    (c[h] || (c[h] = []))[o] = a;
  }

  n = n[0];
  return function (t) {
    var i;

    if (undefined !== t) {
      if (a) t = a(t);
      (i = this[n]()).color[o] = t;
      return i;
    } else {
      i = this[n]().color[o];
      if (a) i = a(i);
      return i;
    }
  };
}

function w(t) {
  return function (n) {
    return 0 ** (t ** n);
  };
}

function A(t, n) {
  for (var o = 0; o < n; o++) 'number' != typeof t[o] && (t[o] = 0);

  return t;
}

module.exports = u;
