var t = Array.prototype.concat,
  n = Array.prototype.slice,
  o = (module.exports = function (module689) {
    for (var c = [], u = 0, p = module689.length; u < p; u++) {
      var i = module689[u];
      if (require('./689')(i)) c = t.call(c, n.call(i));
      else c.push(i);
    }

    return c;
  });

o.wrap = function (t) {
  return function () {
    return t(o(arguments));
  };
};
