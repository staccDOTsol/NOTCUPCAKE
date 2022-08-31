var n = {};

function o(n) {
  var o = function (o) {
    if (undefined === o || null === o) return o;
    else {
      if (arguments.length > 1) o = Array.prototype.slice.call(arguments);
      return n(o);
    }
  };

  if ('conversion' in n) o.conversion = n.conversion;
  return o;
}

function t(n) {
  var o = function (o) {
    if (undefined === o || null === o) return o;
    if (arguments.length > 1) o = Array.prototype.slice.call(arguments);
    var t = n(o);
    if ('object' == typeof t) for (var c = t.length, i = 0; i < c; i++) t[i] = Math.round(t[i]);
    return t;
  };

  if ('conversion' in n) o.conversion = n.conversion;
  return o;
}

Object.keys(require('./683')).forEach(function (c) {
  n[c] = {};
  Object.defineProperty(n[c], 'channels', {
    value: require('./683')[c].channels,
  });
  Object.defineProperty(n[c], 'labels', {
    value: require('./683')[c].labels,
  });

  var module685 = require('./685')(c);

  Object.keys(module685).forEach(function (l) {
    var u = module685[l];
    n[c][l] = t(u);
    n[c][l].raw = o(u);
  });
});
module.exports = n;
