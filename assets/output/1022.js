function n(n) {
  return n >= 48 && n <= 57;
}

function t(n) {
  return n >= 65 ? n <= 90 : n >= 97 && n <= 122;
}

module.exports = {
  isASCIIDigit: n,
  isASCIIAlpha: t,
  isASCIIAlphanumeric: function (u) {
    return t(u) || n(u);
  },
  isASCIIHex: function (t) {
    return n(t) || (t >= 65 && t <= 70) || (t >= 97 && t <= 102);
  },
};
