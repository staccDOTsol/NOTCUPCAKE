module.exports = function (t, o) {
  require('./558').forEach(t, function (n, c) {
    if (c !== o && c.toUpperCase() === o.toUpperCase()) {
      t[o] = n;
      delete t[c];
    }
  });
};
