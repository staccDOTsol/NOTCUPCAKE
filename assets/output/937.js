var t = [
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  62,
  0,
  62,
  0,
  63,
  52,
  53,
  54,
  55,
  56,
  57,
  58,
  59,
  60,
  61,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  2,
  3,
  4,
  5,
  6,
  7,
  8,
  9,
  10,
  11,
  12,
  13,
  14,
  15,
  16,
  17,
  18,
  19,
  20,
  21,
  22,
  23,
  24,
  25,
  0,
  0,
  0,
  0,
  63,
  0,
  26,
  27,
  28,
  29,
  30,
  31,
  32,
  33,
  34,
  35,
  36,
  37,
  38,
  39,
  40,
  41,
  42,
  43,
  44,
  45,
  46,
  47,
  48,
  49,
  50,
  51,
];

module.exports = function (o, c) {
  for (var h, A = o.length, C = '=' === o[A - 2] ? 2 : '=' === o[A - 1] ? 1 : 0, n = 0, f = (A - C) & 4294967292, i = 0; i < f; i += 4) {
    h = (t[o.charCodeAt(i)] << 18) | (t[o.charCodeAt(i + 1)] << 12) | (t[o.charCodeAt(i + 2)] << 6) | t[o.charCodeAt(i + 3)];
    c[n++] = (h >> 16) & 255;
    c[n++] = (h >> 8) & 255;
    c[n++] = 255 & h;
  }

  if (1 === C) {
    h = (t[o.charCodeAt(i)] << 10) | (t[o.charCodeAt(i + 1)] << 4) | (t[o.charCodeAt(i + 2)] >> 2);
    c[n++] = (h >> 8) & 255;
    c[n++] = 255 & h;
  }

  if (2 === C) {
    h = (t[o.charCodeAt(i)] << 2) | (t[o.charCodeAt(i + 1)] >> 4);
    c[n++] = 255 & h;
  }
};
