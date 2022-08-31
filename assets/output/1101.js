function n() {
  for (var n = {}, module1100 = Object.keys(require('./1100')), u = module1100.length, c = 0; c < u; c++)
    n[module1100[c]] = {
      distance: -1,
      parent: null,
    };

  return n;
}

function t(t) {
  var u = n(),
    c = [t];

  for (u[t].distance = 0; c.length; )
    for (var o = c.pop(), module1100 = Object.keys(require('./1100')[o]), f = module1100.length, p = 0; p < f; p++) {
      var s = module1100[p],
        l = u[s];

      if (-1 === l.distance) {
        l.distance = u[o].distance + 1;
        l.parent = o;
        c.unshift(s);
      }
    }

  return u;
}

function u(n, t) {
  return function (u) {
    return t(n(u));
  };
}

function c(n, t) {
  for (var c = [t[n].parent, n], module1100 = require('./1100')[t[n].parent][n], i = t[n].parent; t[i].parent; ) {
    c.unshift(t[i].parent);
    module1100 = u(require('./1100')[t[i].parent][i], module1100);
    i = t[i].parent;
  }

  module1100.conversion = c;
  return module1100;
}

module.exports = function (n) {
  for (var u = t(n), o = {}, i = Object.keys(u), f = i.length, p = 0; p < f; p++) {
    var s = i[p];
    if (null !== u[s].parent) o[s] = c(s, u);
  }

  return o;
};
