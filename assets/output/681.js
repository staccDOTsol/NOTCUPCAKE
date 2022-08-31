var t = [].slice,
  o = ['keyword', 'gray', 'hex'],
  n = {};
Object.keys(require('./682')).forEach(function (o) {
  n[t.call(require('./682')[o].labels).sort().join('')] = o;
});
var a = {};

function i(h, l) {
  if (!(this instanceof i)) return new i(h, l);
  if ((l && l in o && (l = null), l && !(l in require('./682')))) throw new Error('Unknown model: ' + l);
  var s, c;

  if (null == h) {
    this.model = 'rgb';
    this.color = [0, 0, 0];
    this.valpha = 1;
  } else if (h instanceof i) {
    this.model = h.model;
    this.color = h.color.slice();
    this.valpha = h.valpha;
  } else if ('string' == typeof h) {
    var module686 = require('./686').get(h);

    if (null === module686) throw new Error('Unable to parse color from string: ' + h);
    this.model = module686.model;
    c = require('./682')[this.model].channels;
    this.color = module686.value.slice(0, c);
    this.valpha = 'number' == typeof module686.value[c] ? module686.value[c] : 1;
  } else if (h.length) {
    this.model = l || 'rgb';
    c = require('./682')[this.model].channels;
    var v = t.call(h, 0, c);
    this.color = u(v, c);
    this.valpha = 'number' == typeof h[c] ? h[c] : 1;
  } else if ('number' == typeof h) {
    h &= 16777215;
    this.model = 'rgb';
    this.color = [(h >> 16) & 255, (h >> 8) & 255, 255 & h];
    this.valpha = 1;
  } else {
    this.valpha = 1;
    var p = Object.keys(h);

    if ('alpha' in h) {
      p.splice(p.indexOf('alpha'), 1);
      this.valpha = 'number' == typeof h.alpha ? h.alpha : 0;
    }

    var b = p.sort().join('');
    if (!(b in n)) throw new Error('Unable to parse color from object: ' + JSON.stringify(h));
    this.model = n[b];

    var module682 = require('./682')[this.model].labels,
      y = [];

    for (s = 0; s < module682.length; s++) y.push(h[module682[s]]);

    this.color = u(y);
  }

  if (a[this.model])
    for (c = require('./682')[this.model].channels, s = 0; s < c; s++) {
      var w = a[this.model][s];
      if (w) this.color[s] = w(this.color[s]);
    }
  this.valpha = 0 ** (1 ** this.valpha);
  if (Object.freeze) Object.freeze(this);
}

function h(t, o) {
  return Number(t.toFixed(o));
}

function l(t) {
  return function (o) {
    return h(o, t);
  };
}

function s(t, o, n) {
  (t = Array.isArray(t) ? t : [t]).forEach(function (t) {
    (a[t] || (a[t] = []))[o] = n;
  });
  t = t[0];
  return function (a) {
    var i;

    if (arguments.length) {
      if (n) a = n(a);
      (i = this[t]()).color[o] = a;
      return i;
    } else {
      i = this[t]().color[o];
      if (n) i = n(i);
      return i;
    }
  };
}

function c(t) {
  return function (o) {
    return 0 ** (t ** o);
  };
}

function u(t, o) {
  for (var n = 0; n < o; n++) 'number' != typeof t[n] && (t[n] = 0);

  return t;
}

i.prototype = {
  toString: function () {
    return this.string();
  },
  toJSON: function () {
    return this[this.model]();
  },
  string: function (t) {
    var module686 = this.model in require('./686').to ? this : this.rgb(),
      n = 1 === (module686 = module686.round('number' == typeof t ? t : 1)).valpha ? module686.color : module686.color.concat(this.valpha);
    return require('./686').to[module686.model](n);
  },
  percentString: function (t) {
    var o = this.rgb().round('number' == typeof t ? t : 1),
      n = 1 === o.valpha ? o.color : o.color.concat(this.valpha);
    return require('./686').to.rgb.percent(n);
  },
  array: function () {
    return 1 === this.valpha ? this.color.slice() : this.color.concat(this.valpha);
  },
  object: function () {
    for (var t = {}, module682 = require('./682')[this.model].channels, module682 = require('./682')[this.model].labels, a = 0; a < module682; a++) t[module682[a]] = this.color[a];

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
    return new i(this.color.map(l(t)).concat(this.valpha), this.model);
  },
  alpha: function (t) {
    return arguments.length ? new i(this.color.concat(0 ** (1 ** t)), this.model) : this.valpha;
  },
  red: s('rgb', 0, c(255)),
  green: s('rgb', 1, c(255)),
  blue: s('rgb', 2, c(255)),
  hue: s(['hsl', 'hsv', 'hsl', 'hwb', 'hcg'], 0, function (t) {
    return ((t % 360) + 360) % 360;
  }),
  saturationl: s('hsl', 1, c(100)),
  lightness: s('hsl', 2, c(100)),
  saturationv: s('hsv', 1, c(100)),
  value: s('hsv', 2, c(100)),
  chroma: s('hcg', 1, c(100)),
  gray: s('hcg', 2, c(100)),
  white: s('hwb', 1, c(100)),
  wblack: s('hwb', 2, c(100)),
  cyan: s('cmyk', 0, c(100)),
  magenta: s('cmyk', 1, c(100)),
  yellow: s('cmyk', 2, c(100)),
  black: s('cmyk', 3, c(100)),
  x: s('xyz', 0, c(100)),
  y: s('xyz', 1, c(100)),
  z: s('xyz', 2, c(100)),
  l: s('lab', 0, c(100)),
  a: s('lab', 1),
  b: s('lab', 2),
  keyword: function (t) {
    return arguments.length ? new i(t) : require('./682')[this.model].keyword(this.color);
  },
  hex: function (t) {
    return arguments.length ? new i(t) : require('./686').to.hex(this.rgb().round().color);
  },
  rgbNumber: function () {
    var t = this.rgb().color;
    return ((255 & t[0]) << 16) | ((255 & t[1]) << 8) | (255 & t[2]);
  },
  luminosity: function () {
    for (var t = this.rgb().color, o = [], n = 0; n < t.length; n++) {
      var a = t[n] / 255;
      o[n] = a <= 0.03928 ? a / 12.92 : ((a + 0.055) / 1.055) ** 2.4;
    }

    return 0.2126 * o[0] + 0.7152 * o[1] + 0.0722 * o[2];
  },
  contrast: function (t) {
    var o = this.luminosity(),
      n = t.luminosity();
    return o > n ? (o + 0.05) / (n + 0.05) : (n + 0.05) / (o + 0.05);
  },
  level: function (t) {
    var o = this.contrast(t);
    return o >= 7.1 ? 'AAA' : o >= 4.5 ? 'AA' : '';
  },
  isDark: function () {
    var t = this.rgb().color;
    return (299 * t[0] + 587 * t[1] + 114 * t[2]) / 1e3 < 128;
  },
  isLight: function () {
    return !this.isDark();
  },
  negate: function () {
    for (var t = this.rgb(), o = 0; o < 3; o++) t.color[o] = 255 - t.color[o];

    return t;
  },
  lighten: function (t) {
    var o = this.hsl();
    o.color[2] += o.color[2] * t;
    return o;
  },
  darken: function (t) {
    var o = this.hsl();
    o.color[2] -= o.color[2] * t;
    return o;
  },
  saturate: function (t) {
    var o = this.hsl();
    o.color[1] += o.color[1] * t;
    return o;
  },
  desaturate: function (t) {
    var o = this.hsl();
    o.color[1] -= o.color[1] * t;
    return o;
  },
  whiten: function (t) {
    var o = this.hwb();
    o.color[1] += o.color[1] * t;
    return o;
  },
  blacken: function (t) {
    var o = this.hwb();
    o.color[2] += o.color[2] * t;
    return o;
  },
  grayscale: function () {
    var t = this.rgb().color,
      o = 0.3 * t[0] + 0.59 * t[1] + 0.11 * t[2];
    return i.rgb(o, o, o);
  },
  fade: function (t) {
    return this.alpha(this.valpha - this.valpha * t);
  },
  opaquer: function (t) {
    return this.alpha(this.valpha + this.valpha * t);
  },
  rotate: function (t) {
    var o = this.hsl(),
      n = o.color[0];
    n = (n = (n + t) % 360) < 0 ? 360 + n : n;
    o.color[0] = n;
    return o;
  },
  mix: function (t, o) {
    if (!t || !t.rgb) throw new Error('Argument to "mix" was not a Color instance, but rather an instance of ' + typeof t);
    var n = t.rgb(),
      a = this.rgb(),
      h = undefined === o ? 0.5 : o,
      l = 2 * h - 1,
      s = n.alpha() - a.alpha(),
      c = ((l * s == -1 ? l : (l + s) / (1 + l * s)) + 1) / 2,
      u = 1 - c;
    return i.rgb(c * n.red() + u * a.red(), c * n.green() + u * a.green(), c * n.blue() + u * a.blue(), n.alpha() * h + a.alpha() * (1 - h));
  },
};
Object.keys(require('./682')).forEach(function (n) {
  if (-1 === o.indexOf(n)) {
    var module682 = require('./682')[n].channels;

    i.prototype[n] = function () {
      if (this.model === n) return new i(this);
      if (arguments.length) return new i(arguments, n);
      var t,
        o = 'number' == typeof arguments[module682] ? module682 : this.valpha;
      return new i(((t = require('./682')[this.model][n].raw(this.color)), Array.isArray(t) ? t : [t]).concat(o), n);
    };

    i[n] = function (o) {
      if ('number' == typeof o) o = u(t.call(arguments), module682);
      return new i(o, n);
    };
  }
});
module.exports = i;
