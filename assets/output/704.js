module.exports = {
  pick: function (t) {
    for (var n = arguments.length, o = new Array(n > 1 ? n - 1 : 0), u = 1; u < n; u++) o[u - 1] = arguments[u];

    return o
      .flat()
      .filter(function (n) {
        return Object.prototype.hasOwnProperty.call(t, n);
      })
      .reduce(function (n, o) {
        n[o] = t[o];
        return n;
      }, {});
  },
  omit: function (t) {
    for (var n = arguments.length, o = new Array(n > 1 ? n - 1 : 0), u = 1; u < n; u++) o[u - 1] = arguments[u];

    var c = new Set(o.flat());
    return Object.getOwnPropertyNames(t)
      .filter(function (t) {
        return !c.has(t);
      })
      .reduce(function (n, o) {
        n[o] = t[o];
        return n;
      }, {});
  },
};
