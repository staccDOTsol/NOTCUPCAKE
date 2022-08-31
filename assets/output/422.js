var t = Object.prototype,
  o = t.hasOwnProperty,
  e = t.toString,
  module421 = require('./421') ? require('./421').toStringTag : undefined;

module.exports = function (t) {
  var c = o.call(t, module421),
    l = t[module421];

  try {
    t[module421] = undefined;
  } catch (t) {}

  var v = e.call(t);
  if (c) t[module421] = l;
  else delete t[module421];
  return v;
};
