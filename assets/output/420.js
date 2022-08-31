var n = '[object Null]',
  t = '[object Undefined]',
  module421 = require('./421') ? require('./421').toStringTag : undefined;

module.exports = function (c) {
  if (null == c) return undefined === c ? t : n;
  else return module421 && module421 in Object(c) ? require('./422')(c) : require('./423')(c);
};
