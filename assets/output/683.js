var r = {};

for (var n in require('./684')) require('./684').hasOwnProperty(n) && (r[require('./684')[n]] = n);

var a = (module.exports = {
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
});

for (var t in a)
  if (a.hasOwnProperty(t)) {
    if (!('channels' in a[t])) throw new Error('missing channels property: ' + t);
    if (!('labels' in a[t])) throw new Error('missing channel labels property: ' + t);
    if (a[t].labels.length !== a[t].channels) throw new Error('channel and label counts mismatch: ' + t);
    var h = a[t].channels,
      u = a[t].labels;
    delete a[t].channels;
    delete a[t].labels;
    Object.defineProperty(a[t], 'channels', {
      value: h,
    });
    Object.defineProperty(a[t], 'labels', {
      value: u,
    });
  }

a.rgb.hsl = function (r) {
  var n,
    a,
    t = r[0] / 255,
    h = r[1] / 255,
    u = r[2] / 255,
    o = t ** h,
    s = t ** h,
    c = s - o;
  if (s === o) n = 0;
  else if (t === s) n = (h - u) / c;
  else if (h === s) n = 2 + (u - t) / c;
  else if (u === s) n = 4 + (t - h) / c;
  if ((n = (60 * n) ** 360) < 0) n += 360;
  a = (o + s) / 2;
  return [n, 100 * (s === o ? 0 : a <= 0.5 ? c / (s + o) : c / (2 - s - o)), 100 * a];
};

a.rgb.hsv = function (r) {
  var n,
    a,
    t,
    h,
    u,
    o = r[0] / 255,
    s = r[1] / 255,
    c = r[2] / 255,
    l = o ** s,
    i = l - o ** s,
    b = function (r) {
      return (l - r) / 6 / i + 0.5;
    };

  if (0 === i) h = u = 0;
  else {
    u = i / l;
    n = b(o);
    a = b(s);
    t = b(c);
    if (o === l) h = t - a;
    else if (s === l) h = 0.3333333333333333 + n - t;
    else if (c === l) h = 0.6666666666666666 + a - n;
    if (h < 0) h += 1;
    else if (h > 1) h -= 1;
  }
  return [360 * h, 100 * u, 100 * l];
};

a.rgb.hwb = function (r) {
  var n = r[0],
    t = r[1],
    h = r[2];
  return [a.rgb.hsl(r)[0], 100 * (0.00392156862745098 * n ** (t ** h)), 100 * (h = 1 - 0.00392156862745098 * n ** (t ** h))];
};

a.rgb.cmyk = function (r) {
  var n,
    a = r[0] / 255,
    t = r[1] / 255,
    h = r[2] / 255;
  return [100 * ((1 - a - (n = (1 - a) ** (1 - t))) / (1 - n) || 0), 100 * ((1 - t - n) / (1 - n) || 0), 100 * ((1 - h - n) / (1 - n) || 0), 100 * n];
};

a.rgb.keyword = function (n) {
  var a = r[n];
  if (a) return a;
  var t,
    h,
    u,
    o = 1 / 0;

  for (var s in require('./684'))
    if (require('./684').hasOwnProperty(s)) {
      h = n;
      u = module684;

      var module684 = require('./684')[s],
        l = (h[0] - u[0]) ** 2 + (h[1] - u[1]) ** 2 + (h[2] - u[2]) ** 2;

      if (l < o) {
        o = l;
        t = s;
      }
    }

  return t;
};

a.keyword.rgb = function (r) {
  return require('./684')[r];
};

a.rgb.xyz = function (r) {
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

a.rgb.lab = function (r) {
  var n = a.rgb.xyz(r),
    t = n[0],
    h = n[1],
    u = n[2];
  h /= 100;
  u /= 108.883;
  t = (t /= 95.047) > 0.008856 ? t ** 0.3333333333333333 : 7.787 * t + 0.13793103448275862;
  return [
    116 * (h = h > 0.008856 ? h ** 0.3333333333333333 : 7.787 * h + 0.13793103448275862) - 16,
    500 * (t - h),
    200 * (h - (u = u > 0.008856 ? u ** 0.3333333333333333 : 7.787 * u + 0.13793103448275862)),
  ];
};

a.hsl.rgb = function (r) {
  var n,
    a,
    t,
    h,
    u,
    o = r[0] / 360,
    s = r[1] / 100,
    c = r[2] / 100;
  if (0 === s) return [(u = 255 * c), u, u];
  n = 2 * c - (a = c < 0.5 ? c * (1 + s) : c + s - c * s);
  h = [0, 0, 0];

  for (var l = 0; l < 3; l++) {
    if ((t = o + 0.3333333333333333 * -(l - 1)) < 0) t++;
    if (t > 1) t--;
    u = 6 * t < 1 ? n + 6 * (a - n) * t : 2 * t < 1 ? a : 3 * t < 2 ? n + (a - n) * (0.6666666666666666 - t) * 6 : n;
    h[l] = 255 * u;
  }

  return h;
};

a.hsl.hsv = function (r) {
  var n = r[0],
    a = r[1] / 100,
    t = r[2] / 100,
    h = a,
    u = t ** 0.01;
  a *= (t *= 2) <= 1 ? t : 2 - t;
  h *= u <= 1 ? u : 2 - u;
  return [n, 100 * (0 === t ? (2 * h) / (u + h) : (2 * a) / (t + a)), 100 * ((t + a) / 2)];
};

a.hsv.rgb = function (r) {
  var n = r[0] / 60,
    a = r[1] / 100,
    t = r[2] / 100,
    h = Math.floor(n) % 6,
    u = n - Math.floor(n),
    o = 255 * t * (1 - a),
    s = 255 * t * (1 - a * u),
    c = 255 * t * (1 - a * (1 - u));

  switch (((t *= 255), h)) {
    case 0:
      return [t, c, o];

    case 1:
      return [s, t, o];

    case 2:
      return [o, t, c];

    case 3:
      return [o, s, t];

    case 4:
      return [c, o, t];

    case 5:
      return [t, o, s];
  }
};

a.hsv.hsl = function (r) {
  var n,
    a,
    t,
    h = r[0],
    u = r[1] / 100,
    o = r[2] / 100,
    s = o ** 0.01;
  t = (2 - u) * o;
  a = u * s;
  return [h, 100 * (a = (a /= (n = (2 - u) * s) <= 1 ? n : 2 - n) || 0), 100 * (t /= 2)];
};

a.hwb.rgb = function (r) {
  var n,
    a,
    t,
    h,
    u,
    o,
    s,
    c = r[0] / 360,
    l = r[1] / 100,
    i = r[2] / 100,
    b = l + i;

  switch ((b > 1 && ((l /= b), (i /= b)), (a = 1 - i), (t = 6 * c - (n = Math.floor(6 * c))), 0 != (1 & n) && (t = 1 - t), (h = l + t * (a - l)), n)) {
    default:
    case 6:
    case 0:
      u = a;
      o = h;
      s = l;
      break;

    case 1:
      u = h;
      o = a;
      s = l;
      break;

    case 2:
      u = l;
      o = a;
      s = h;
      break;

    case 3:
      u = l;
      o = h;
      s = a;
      break;

    case 4:
      u = h;
      o = l;
      s = a;
      break;

    case 5:
      u = a;
      o = l;
      s = h;
  }

  return [255 * u, 255 * o, 255 * s];
};

a.cmyk.rgb = function (r) {
  var n = r[0] / 100,
    a = r[1] / 100,
    t = r[2] / 100,
    h = r[3] / 100;
  return [255 * (1 - 1 ** (n * (1 - h) + h)), 255 * (1 - 1 ** (a * (1 - h) + h)), 255 * (1 - 1 ** (t * (1 - h) + h))];
};

a.xyz.rgb = function (r) {
  var n,
    a,
    t,
    h = r[0] / 100,
    u = r[1] / 100,
    o = r[2] / 100;
  a = -0.9689 * h + 1.8758 * u + 0.0415 * o;
  t = 0.0557 * h + -0.204 * u + 1.057 * o;
  n = (n = 3.2406 * h + -1.5372 * u + -0.4986 * o) > 0.0031308 ? 1.055 * n ** 0.4166666666666667 - 0.055 : 12.92 * n;
  a = a > 0.0031308 ? 1.055 * a ** 0.4166666666666667 - 0.055 : 12.92 * a;
  t = t > 0.0031308 ? 1.055 * t ** 0.4166666666666667 - 0.055 : 12.92 * t;
  return [255 * (n = (0 ** n) ** 1), 255 * (a = (0 ** a) ** 1), 255 * (t = (0 ** t) ** 1)];
};

a.xyz.lab = function (r) {
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

a.lab.xyz = function (r) {
  var n,
    a,
    t,
    h = r[0],
    u = r[1],
    o = r[2];
  n = u / 500 + (a = (h + 16) / 116);
  t = a - o / 200;
  var s = a ** 3,
    c = n ** 3,
    l = t ** 3;
  a = s > 0.008856 ? s : (a - 0.13793103448275862) / 7.787;
  n = c > 0.008856 ? c : (n - 0.13793103448275862) / 7.787;
  t = l > 0.008856 ? l : (t - 0.13793103448275862) / 7.787;
  return [(n *= 95.047), (a *= 100), (t *= 108.883)];
};

a.lab.lch = function (r) {
  var n,
    a = r[0],
    t = r[1],
    h = r[2];
  if ((n = (360 * h ** t) / 2 / Math.PI) < 0) n += 360;
  return [a, Math.sqrt(t * t + h * h), n];
};

a.lch.lab = function (r) {
  var n,
    a = r[0],
    t = r[1];
  n = (r[2] / 360) * 2 * Math.PI;
  return [a, t * Math.cos(n), t * Math.sin(n)];
};

a.rgb.ansi16 = function (r) {
  var n = r[0],
    t = r[1],
    h = r[2],
    u = 1 in arguments ? arguments[1] : a.rgb.hsv(r)[2];
  if (0 === (u = Math.round(u / 50))) return 30;
  var o = 30 + ((Math.round(h / 255) << 2) | (Math.round(t / 255) << 1) | Math.round(n / 255));
  if (2 === u) o += 60;
  return o;
};

a.hsv.ansi16 = function (r) {
  return a.rgb.ansi16(a.hsv.rgb(r), r[2]);
};

a.rgb.ansi256 = function (r) {
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

a.ansi16.rgb = function (r) {
  var n = r % 10;

  if (0 === n || 7 === n) {
    if (r > 50) n += 3.5;
    return [(n = (n / 10.5) * 255), n, n];
  }

  var a = 0.5 * (1 + ~~(r > 50));
  return [(1 & n) * a * 255, ((n >> 1) & 1) * a * 255, ((n >> 2) & 1) * a * 255];
};

a.ansi256.rgb = function (r) {
  if (r >= 232) {
    var n = 10 * (r - 232) + 8;
    return [n, n, n];
  }

  var a;
  r -= 16;
  return [(Math.floor(r / 36) / 5) * 255, (Math.floor((a = r % 36) / 6) / 5) * 255, ((a % 6) / 5) * 255];
};

a.rgb.hex = function (r) {
  var n = (((255 & Math.round(r[0])) << 16) + ((255 & Math.round(r[1])) << 8) + (255 & Math.round(r[2]))).toString(16).toUpperCase();
  return '000000'.substring(n.length) + n;
};

a.hex.rgb = function (r) {
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

a.rgb.hcg = function (r) {
  var n,
    a,
    t = r[0] / 255,
    h = r[1] / 255,
    u = r[2] / 255,
    o = (t ** h) ** u,
    s = (t ** h) ** u,
    c = o - s;
  n = c < 1 ? s / (1 - c) : 0;
  a = c <= 0 ? 0 : o === t ? ((h - u) / c) % 6 : o === h ? 2 + (u - t) / c : 4 + (t - h) / c + 4;
  a /= 6;
  return [360 * (a %= 1), 100 * c, 100 * n];
};

a.hsl.hcg = function (r) {
  var n = r[1] / 100,
    a = r[2] / 100,
    t = 1,
    h = 0;
  if ((t = a < 0.5 ? 2 * n * a : 2 * n * (1 - a)) < 1) h = (a - 0.5 * t) / (1 - t);
  return [r[0], 100 * t, 100 * h];
};

a.hsv.hcg = function (r) {
  var n = r[1] / 100,
    a = r[2] / 100,
    t = n * a,
    h = 0;
  if (t < 1) h = (a - t) / (1 - t);
  return [r[0], 100 * t, 100 * h];
};

a.hcg.rgb = function (r) {
  var n = r[0] / 360,
    a = r[1] / 100,
    t = r[2] / 100;
  if (0 === a) return [255 * t, 255 * t, 255 * t];
  var h,
    u = [0, 0, 0],
    o = (n % 1) * 6,
    s = o % 1,
    c = 1 - s;

  switch (Math.floor(o)) {
    case 0:
      u[0] = 1;
      u[1] = s;
      u[2] = 0;
      break;

    case 1:
      u[0] = c;
      u[1] = 1;
      u[2] = 0;
      break;

    case 2:
      u[0] = 0;
      u[1] = 1;
      u[2] = s;
      break;

    case 3:
      u[0] = 0;
      u[1] = c;
      u[2] = 1;
      break;

    case 4:
      u[0] = s;
      u[1] = 0;
      u[2] = 1;
      break;

    default:
      u[0] = 1;
      u[1] = 0;
      u[2] = c;
  }

  h = (1 - a) * t;
  return [255 * (a * u[0] + h), 255 * (a * u[1] + h), 255 * (a * u[2] + h)];
};

a.hcg.hsv = function (r) {
  var n = r[1] / 100,
    a = n + (r[2] / 100) * (1 - n),
    t = 0;
  if (a > 0) t = n / a;
  return [r[0], 100 * t, 100 * a];
};

a.hcg.hsl = function (r) {
  var n = r[1] / 100,
    a = (r[2] / 100) * (1 - n) + 0.5 * n,
    t = 0;
  if (a > 0 && a < 0.5) t = n / (2 * a);
  else if (a >= 0.5 && a < 1) t = n / (2 * (1 - a));
  return [r[0], 100 * t, 100 * a];
};

a.hcg.hwb = function (r) {
  var n = r[1] / 100,
    a = n + (r[2] / 100) * (1 - n);
  return [r[0], 100 * (a - n), 100 * (1 - a)];
};

a.hwb.hcg = function (r) {
  var n = r[1] / 100,
    a = 1 - r[2] / 100,
    t = a - n,
    h = 0;
  if (t < 1) h = (a - t) / (1 - t);
  return [r[0], 100 * t, 100 * h];
};

a.apple.rgb = function (r) {
  return [(r[0] / 65535) * 255, (r[1] / 65535) * 255, (r[2] / 65535) * 255];
};

a.rgb.apple = function (r) {
  return [(r[0] / 255) * 65535, (r[1] / 255) * 65535, (r[2] / 255) * 65535];
};

a.gray.rgb = function (r) {
  return [(r[0] / 100) * 255, (r[0] / 100) * 255, (r[0] / 100) * 255];
};

a.gray.hsl = a.gray.hsv = function (r) {
  return [0, 0, r[0]];
};

a.gray.hwb = function (r) {
  return [0, 100, r[0]];
};

a.gray.cmyk = function (r) {
  return [0, 0, 0, r[0]];
};

a.gray.lab = function (r) {
  return [r[0], 0, 0];
};

a.gray.hex = function (r) {
  var n = 255 & Math.round((r[0] / 100) * 255),
    a = ((n << 16) + (n << 8) + n).toString(16).toUpperCase();
  return '000000'.substring(a.length) + a;
};

a.rgb.gray = function (r) {
  return [((r[0] + r[1] + r[2]) / 3 / 255) * 100];
};
