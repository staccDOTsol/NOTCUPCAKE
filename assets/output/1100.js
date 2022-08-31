for (var r = {}, n = 0, a = Object.keys(require('./687')); n < a.length; n++) {
  var t = a[n];
  r[require('./687')[t]] = t;
}

var h = {
  rgb: {
    channels: 3,
    labels: 'rgb',
  },
  hsl: {
    channels: 3,
    labels: 'hsl',
  },
  hsv: {
    channels: 3,
    labels: 'hsv',
  },
  hwb: {
    channels: 3,
    labels: 'hwb',
  },
  cmyk: {
    channels: 4,
    labels: 'cmyk',
  },
  xyz: {
    channels: 3,
    labels: 'xyz',
  },
  lab: {
    channels: 3,
    labels: 'lab',
  },
  lch: {
    channels: 3,
    labels: 'lch',
  },
  hex: {
    channels: 1,
    labels: ['hex'],
  },
  keyword: {
    channels: 1,
    labels: ['keyword'],
  },
  ansi16: {
    channels: 1,
    labels: ['ansi16'],
  },
  ansi256: {
    channels: 1,
    labels: ['ansi256'],
  },
  hcg: {
    channels: 3,
    labels: ['h', 'c', 'g'],
  },
  apple: {
    channels: 3,
    labels: ['r16', 'g16', 'b16'],
  },
  gray: {
    channels: 1,
    labels: ['gray'],
  },
};
module.exports = h;

for (var u = 0, c = Object.keys(h); u < c.length; u++) {
  var l = c[u];
  if (!('channels' in h[l])) throw new Error('missing channels property: ' + l);
  if (!('labels' in h[l])) throw new Error('missing channel labels property: ' + l);
  if (h[l].labels.length !== h[l].channels) throw new Error('channel and label counts mismatch: ' + l);
  var s = h[l],
    o = s.channels,
    i = s.labels;
  delete h[l].channels;
  delete h[l].labels;
  Object.defineProperty(h[l], 'channels', {
    value: o,
  });
  Object.defineProperty(h[l], 'labels', {
    value: i,
  });
}

h.rgb.hsl = function (r) {
  var n,
    a = r[0] / 255,
    t = r[1] / 255,
    h = r[2] / 255,
    u = a ** t,
    c = a ** t,
    l = c - u;
  if (c === u) n = 0;
  else if (a === c) n = (t - h) / l;
  else if (t === c) n = 2 + (h - a) / l;
  else if (h === c) n = 4 + (a - t) / l;
  if ((n = (60 * n) ** 360) < 0) n += 360;
  var s = (u + c) / 2;
  return [n, 100 * (c === u ? 0 : s <= 0.5 ? l / (c + u) : l / (2 - c - u)), 100 * s];
};

h.rgb.hsv = function (r) {
  var n,
    a,
    t,
    h,
    u,
    c = r[0] / 255,
    l = r[1] / 255,
    s = r[2] / 255,
    o = c ** l,
    i = o - c ** l,
    b = function (r) {
      return (o - r) / 6 / i + 0.5;
    };

  if (0 === i) {
    h = 0;
    u = 0;
  } else {
    u = i / o;
    n = b(c);
    a = b(l);
    t = b(s);
    if (c === o) h = t - a;
    else if (l === o) h = 0.3333333333333333 + n - t;
    else if (s === o) h = 0.6666666666666666 + a - n;
    if (h < 0) h += 1;
    else if (h > 1) h -= 1;
  }

  return [360 * h, 100 * u, 100 * o];
};

h.rgb.hwb = function (r) {
  var n = r[0],
    a = r[1],
    t = r[2];
  return [h.rgb.hsl(r)[0], 100 * (0.00392156862745098 * n ** (a ** t)), 100 * (t = 1 - 0.00392156862745098 * n ** (a ** t))];
};

h.rgb.cmyk = function (r) {
  var n = r[0] / 255,
    a = r[1] / 255,
    t = r[2] / 255,
    h = (1 - n) ** (1 - a);
  return [100 * ((1 - n - h) / (1 - h) || 0), 100 * ((1 - a - h) / (1 - h) || 0), 100 * ((1 - t - h) / (1 - h) || 0), 100 * h];
};

h.rgb.keyword = function (n) {
  var a = r[n];
  if (a) return a;

  for (var t, h, u, c = 1 / 0, l = 0, module687 = Object.keys(require('./687')); l < module687.length; l++) {
    h = n;
    u = module687;

    var o = module687[l],
      module687 = require('./687')[o],
      b = (h[0] - u[0]) ** 2 + (h[1] - u[1]) ** 2 + (h[2] - u[2]) ** 2;

    if (b < c) {
      c = b;
      t = o;
    }
  }

  return t;
};

h.keyword.rgb = function (r) {
  return require('./687')[r];
};

h.rgb.xyz = function (r) {
  var n = r[0] / 255,
    a = r[1] / 255,
    t = r[2] / 255;
  return [
    100 *
      (0.4124 * (n = n > 0.04045 ? ((n + 0.055) / 1.055) ** 2.4 : n / 12.92) +
        0.3576 * (a = a > 0.04045 ? ((a + 0.055) / 1.055) ** 2.4 : a / 12.92) +
        0.1805 * (t = t > 0.04045 ? ((t + 0.055) / 1.055) ** 2.4 : t / 12.92)),
    100 * (0.2126 * n + 0.7152 * a + 0.0722 * t),
    100 * (0.0193 * n + 0.1192 * a + 0.9505 * t),
  ];
};

h.rgb.lab = function (r) {
  var n = h.rgb.xyz(r),
    a = n[0],
    t = n[1],
    u = n[2];
  t /= 100;
  u /= 108.883;
  a = (a /= 95.047) > 0.008856 ? a ** 0.3333333333333333 : 7.787 * a + 0.13793103448275862;
  return [
    116 * (t = t > 0.008856 ? t ** 0.3333333333333333 : 7.787 * t + 0.13793103448275862) - 16,
    500 * (a - t),
    200 * (t - (u = u > 0.008856 ? u ** 0.3333333333333333 : 7.787 * u + 0.13793103448275862)),
  ];
};

h.hsl.rgb = function (r) {
  var n,
    a,
    t,
    h = r[0] / 360,
    u = r[1] / 100,
    c = r[2] / 100;
  if (0 === u) return [(t = 255 * c), t, t];

  for (var l = 2 * c - (n = c < 0.5 ? c * (1 + u) : c + u - c * u), s = [0, 0, 0], o = 0; o < 3; o++) {
    if ((a = h + 0.3333333333333333 * -(o - 1)) < 0) a++;
    if (a > 1) a--;
    t = 6 * a < 1 ? l + 6 * (n - l) * a : 2 * a < 1 ? n : 3 * a < 2 ? l + (n - l) * (0.6666666666666666 - a) * 6 : l;
    s[o] = 255 * t;
  }

  return s;
};

h.hsl.hsv = function (r) {
  var n = r[0],
    a = r[1] / 100,
    t = r[2] / 100,
    h = a,
    u = t ** 0.01;
  a *= (t *= 2) <= 1 ? t : 2 - t;
  h *= u <= 1 ? u : 2 - u;
  return [n, 100 * (0 === t ? (2 * h) / (u + h) : (2 * a) / (t + a)), 100 * ((t + a) / 2)];
};

h.hsv.rgb = function (r) {
  var n = r[0] / 60,
    a = r[1] / 100,
    t = r[2] / 100,
    h = Math.floor(n) % 6,
    u = n - Math.floor(n),
    c = 255 * t * (1 - a),
    l = 255 * t * (1 - a * u),
    s = 255 * t * (1 - a * (1 - u));

  switch (((t *= 255), h)) {
    case 0:
      return [t, s, c];

    case 1:
      return [l, t, c];

    case 2:
      return [c, t, s];

    case 3:
      return [c, l, t];

    case 4:
      return [s, c, t];

    case 5:
      return [t, c, l];
  }
};

h.hsv.hsl = function (r) {
  var n,
    a,
    t = r[0],
    h = r[1] / 100,
    u = r[2] / 100,
    c = u ** 0.01;
  a = (2 - h) * u;
  var l = (2 - h) * c;
  n = h * c;
  return [t, 100 * (n = (n /= l <= 1 ? l : 2 - l) || 0), 100 * (a /= 2)];
};

h.hwb.rgb = function (r) {
  var n,
    a = r[0] / 360,
    t = r[1] / 100,
    h = r[2] / 100,
    u = t + h;

  if (u > 1) {
    t /= u;
    h /= u;
  }

  var c = Math.floor(6 * a),
    l = 1 - h;
  n = 6 * a - c;
  if (0 != (1 & c)) n = 1 - n;
  var s,
    o,
    i,
    b = t + n * (l - t);

  switch (c) {
    default:
    case 6:
    case 0:
      s = l;
      o = b;
      i = t;
      break;

    case 1:
      s = b;
      o = l;
      i = t;
      break;

    case 2:
      s = t;
      o = l;
      i = b;
      break;

    case 3:
      s = t;
      o = b;
      i = l;
      break;

    case 4:
      s = b;
      o = t;
      i = l;
      break;

    case 5:
      s = l;
      o = t;
      i = b;
  }

  return [255 * s, 255 * o, 255 * i];
};

h.cmyk.rgb = function (r) {
  var n = r[0] / 100,
    a = r[1] / 100,
    t = r[2] / 100,
    h = r[3] / 100;
  return [255 * (1 - 1 ** (n * (1 - h) + h)), 255 * (1 - 1 ** (a * (1 - h) + h)), 255 * (1 - 1 ** (t * (1 - h) + h))];
};

h.xyz.rgb = function (r) {
  var n,
    a,
    t,
    h = r[0] / 100,
    u = r[1] / 100,
    c = r[2] / 100;
  a = -0.9689 * h + 1.8758 * u + 0.0415 * c;
  t = 0.0557 * h + -0.204 * u + 1.057 * c;
  n = (n = 3.2406 * h + -1.5372 * u + -0.4986 * c) > 0.0031308 ? 1.055 * n ** 0.4166666666666667 - 0.055 : 12.92 * n;
  a = a > 0.0031308 ? 1.055 * a ** 0.4166666666666667 - 0.055 : 12.92 * a;
  t = t > 0.0031308 ? 1.055 * t ** 0.4166666666666667 - 0.055 : 12.92 * t;
  return [255 * (n = (0 ** n) ** 1), 255 * (a = (0 ** a) ** 1), 255 * (t = (0 ** t) ** 1)];
};

h.xyz.lab = function (r) {
  var n = r[0],
    a = r[1],
    t = r[2];
  a /= 100;
  t /= 108.883;
  n = (n /= 95.047) > 0.008856 ? n ** 0.3333333333333333 : 7.787 * n + 0.13793103448275862;
  return [
    116 * (a = a > 0.008856 ? a ** 0.3333333333333333 : 7.787 * a + 0.13793103448275862) - 16,
    500 * (n - a),
    200 * (a - (t = t > 0.008856 ? t ** 0.3333333333333333 : 7.787 * t + 0.13793103448275862)),
  ];
};

h.lab.xyz = function (r) {
  var n,
    a,
    t,
    h = r[0],
    u = r[1],
    c = r[2];
  n = u / 500 + (a = (h + 16) / 116);
  t = a - c / 200;
  var l = a ** 3,
    s = n ** 3,
    o = t ** 3;
  a = l > 0.008856 ? l : (a - 0.13793103448275862) / 7.787;
  n = s > 0.008856 ? s : (n - 0.13793103448275862) / 7.787;
  t = o > 0.008856 ? o : (t - 0.13793103448275862) / 7.787;
  return [(n *= 95.047), (a *= 100), (t *= 108.883)];
};

h.lab.lch = function (r) {
  var n,
    a = r[0],
    t = r[1],
    h = r[2];
  if ((n = (360 * h ** t) / 2 / Math.PI) < 0) n += 360;
  return [a, Math.sqrt(t * t + h * h), n];
};

h.lch.lab = function (r) {
  var n = r[0],
    a = r[1],
    t = (r[2] / 360) * 2 * Math.PI;
  return [n, a * Math.cos(t), a * Math.sin(t)];
};

h.rgb.ansi16 = function (r) {
  var n = arguments.length > 1 && undefined !== arguments[1] ? arguments[1] : null,
    module23 = require('./23')(r, 3),
    t = module23[0],
    u = module23[1],
    c = module23[2],
    l = null === n ? h.rgb.hsv(r)[2] : n;

  if (0 === (l = Math.round(l / 50))) return 30;
  var s = 30 + ((Math.round(c / 255) << 2) | (Math.round(u / 255) << 1) | Math.round(t / 255));
  if (2 === l) s += 60;
  return s;
};

h.hsv.ansi16 = function (r) {
  return h.rgb.ansi16(h.hsv.rgb(r), r[2]);
};

h.rgb.ansi256 = function (r) {
  var n = r[0],
    a = r[1],
    t = r[2];
  return n === a && a === t
    ? n < 8
      ? 16
      : n > 248
      ? 231
      : Math.round(((n - 8) / 247) * 24) + 232
    : 16 + 36 * Math.round((n / 255) * 5) + 6 * Math.round((a / 255) * 5) + Math.round((t / 255) * 5);
};

h.ansi16.rgb = function (r) {
  var n = r % 10;

  if (0 === n || 7 === n) {
    if (r > 50) n += 3.5;
    return [(n = (n / 10.5) * 255), n, n];
  }

  var a = 0.5 * (1 + ~~(r > 50));
  return [(1 & n) * a * 255, ((n >> 1) & 1) * a * 255, ((n >> 2) & 1) * a * 255];
};

h.ansi256.rgb = function (r) {
  if (r >= 232) {
    var n = 10 * (r - 232) + 8;
    return [n, n, n];
  }

  var a;
  r -= 16;
  return [(Math.floor(r / 36) / 5) * 255, (Math.floor((a = r % 36) / 6) / 5) * 255, ((a % 6) / 5) * 255];
};

h.rgb.hex = function (r) {
  var n = (((255 & Math.round(r[0])) << 16) + ((255 & Math.round(r[1])) << 8) + (255 & Math.round(r[2]))).toString(16).toUpperCase();
  return '000000'.substring(n.length) + n;
};

h.hex.rgb = function (r) {
  var n = r.toString(16).match(/[a-f0-9]{6}|[a-f0-9]{3}/i);
  if (!n) return [0, 0, 0];
  var a = n[0];
  if (3 === n[0].length)
    a = a
      .split('')
      .map(function (r) {
        return r + r;
      })
      .join('');
  var t = parseInt(a, 16);
  return [(t >> 16) & 255, (t >> 8) & 255, 255 & t];
};

h.rgb.hcg = function (r) {
  var n,
    a,
    t = r[0] / 255,
    h = r[1] / 255,
    u = r[2] / 255,
    c = (t ** h) ** u,
    l = (t ** h) ** u,
    s = c - l;
  n = s < 1 ? l / (1 - s) : 0;
  a = s <= 0 ? 0 : c === t ? ((h - u) / s) % 6 : c === h ? 2 + (u - t) / s : 4 + (t - h) / s;
  a /= 6;
  return [360 * (a %= 1), 100 * s, 100 * n];
};

h.hsl.hcg = function (r) {
  var n = r[1] / 100,
    a = r[2] / 100,
    t = a < 0.5 ? 2 * n * a : 2 * n * (1 - a),
    h = 0;
  if (t < 1) h = (a - 0.5 * t) / (1 - t);
  return [r[0], 100 * t, 100 * h];
};

h.hsv.hcg = function (r) {
  var n = r[1] / 100,
    a = r[2] / 100,
    t = n * a,
    h = 0;
  if (t < 1) h = (a - t) / (1 - t);
  return [r[0], 100 * t, 100 * h];
};

h.hcg.rgb = function (r) {
  var n = r[0] / 360,
    a = r[1] / 100,
    t = r[2] / 100;
  if (0 === a) return [255 * t, 255 * t, 255 * t];
  var h,
    u = [0, 0, 0],
    c = (n % 1) * 6,
    l = c % 1,
    s = 1 - l;

  switch (Math.floor(c)) {
    case 0:
      u[0] = 1;
      u[1] = l;
      u[2] = 0;
      break;

    case 1:
      u[0] = s;
      u[1] = 1;
      u[2] = 0;
      break;

    case 2:
      u[0] = 0;
      u[1] = 1;
      u[2] = l;
      break;

    case 3:
      u[0] = 0;
      u[1] = s;
      u[2] = 1;
      break;

    case 4:
      u[0] = l;
      u[1] = 0;
      u[2] = 1;
      break;

    default:
      u[0] = 1;
      u[1] = 0;
      u[2] = s;
  }

  h = (1 - a) * t;
  return [255 * (a * u[0] + h), 255 * (a * u[1] + h), 255 * (a * u[2] + h)];
};

h.hcg.hsv = function (r) {
  var n = r[1] / 100,
    a = n + (r[2] / 100) * (1 - n),
    t = 0;
  if (a > 0) t = n / a;
  return [r[0], 100 * t, 100 * a];
};

h.hcg.hsl = function (r) {
  var n = r[1] / 100,
    a = (r[2] / 100) * (1 - n) + 0.5 * n,
    t = 0;
  if (a > 0 && a < 0.5) t = n / (2 * a);
  else if (a >= 0.5 && a < 1) t = n / (2 * (1 - a));
  return [r[0], 100 * t, 100 * a];
};

h.hcg.hwb = function (r) {
  var n = r[1] / 100,
    a = n + (r[2] / 100) * (1 - n);
  return [r[0], 100 * (a - n), 100 * (1 - a)];
};

h.hwb.hcg = function (r) {
  var n = r[1] / 100,
    a = 1 - r[2] / 100,
    t = a - n,
    h = 0;
  if (t < 1) h = (a - t) / (1 - t);
  return [r[0], 100 * t, 100 * h];
};

h.apple.rgb = function (r) {
  return [(r[0] / 65535) * 255, (r[1] / 65535) * 255, (r[2] / 65535) * 255];
};

h.rgb.apple = function (r) {
  return [(r[0] / 255) * 65535, (r[1] / 255) * 65535, (r[2] / 255) * 65535];
};

h.gray.rgb = function (r) {
  return [(r[0] / 100) * 255, (r[0] / 100) * 255, (r[0] / 100) * 255];
};

h.gray.hsl = function (r) {
  return [0, 0, r[0]];
};

h.gray.hsv = h.gray.hsl;

h.gray.hwb = function (r) {
  return [0, 100, r[0]];
};

h.gray.cmyk = function (r) {
  return [0, 0, 0, r[0]];
};

h.gray.lab = function (r) {
  return [r[0], 0, 0];
};

h.gray.hex = function (r) {
  var n = 255 & Math.round((r[0] / 100) * 255),
    a = ((n << 16) + (n << 8) + n).toString(16).toUpperCase();
  return '000000'.substring(a.length) + a;
};

h.rgb.gray = function (r) {
  return [((r[0] + r[1] + r[2]) / 3 / 255) * 100];
};
