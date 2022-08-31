var n = {};

function o(n) {
  var o = function (...args) {
    var i = args[0];
    if (undefined === i || null === i) return i;
    else {
      if (i.length > 1) args = i;
      return n(args);
    }
  };

  if ('conversion' in n) o.conversion = n.conversion;
  return o;
}

function t(n) {
  var o = function (...args) {
    var i = args[0];
    if (undefined === i || null === i) return i;
    if (i.length > 1) args = i;
    var v = n(args);
    if ('object' == typeof v) for (var f = v.length, l = 0; l < f; l++) v[l] = Math.round(v[l]);
    return v;
  };

  if ('conversion' in n) o.conversion = n.conversion;
  return o;
}

Object.keys(require('./1100')).forEach(function (c) {
  n[c] = {};
  Object.defineProperty(n[c], 'channels', {
    value: require('./1100')[c].channels,
  });
  Object.defineProperty(n[c], 'labels', {
    value: require('./1100')[c].labels,
  });

  var module1101 = require('./1101')(c);

  Object.keys(module1101).forEach(function (v) {
    var f = module1101[v];
    n[c][v] = t(f);
    n[c][v].raw = o(f);
  });
});
module.exports = n;
