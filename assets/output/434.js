module.exports = function (n, t) {
  for (var f = n.length; f--; ) if (require('./435')(n[f][0], t)) return f;

  return -1;
};
