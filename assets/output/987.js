function t(t, n, o) {
  return (t & n) ^ (~t & o);
}

function n(t, n, o) {
  return (t & n) ^ (t & o) ^ (n & o);
}

function o(t, n, o) {
  return t ^ n ^ o;
}

exports.ft_1 = function (u, c, f, _) {
  return 0 === u ? t(c, f, _) : 1 === u || 3 === u ? o(c, f, _) : 2 === u ? n(c, f, _) : undefined;
};

exports.ch32 = t;
exports.maj32 = n;
exports.p32 = o;

exports.s0_256 = function (t) {
  return require('./983').rotr32(t, 2) ^ require('./983').rotr32(t, 13) ^ require('./983').rotr32(t, 22);
};

exports.s1_256 = function (t) {
  return require('./983').rotr32(t, 6) ^ require('./983').rotr32(t, 11) ^ require('./983').rotr32(t, 25);
};

exports.g0_256 = function (t) {
  return require('./983').rotr32(t, 7) ^ require('./983').rotr32(t, 18) ^ (t >>> 3);
};

exports.g1_256 = function (t) {
  return require('./983').rotr32(t, 17) ^ require('./983').rotr32(t, 19) ^ (t >>> 10);
};
