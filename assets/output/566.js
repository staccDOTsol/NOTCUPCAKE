module.exports = function (t, n, c) {
  var module567 = this || require('./567');

  require('./558').forEach(c, function (c) {
    t = c.call(module567, t, n);
  });

  return t;
};
