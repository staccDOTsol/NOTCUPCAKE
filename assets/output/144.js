module.exports = function (n) {
  if (undefined === n || null === n) return n;

  var module145 = require('./145')(n);

  if (null !== module145 && undefined !== module145) {
    if ('object' == typeof module145) {
      var module147 = require('./147').processColorObject(module145);

      if (null != module147) return module147;
    }

    if ('number' != typeof module145) return null;
    else {
      module145 = ((module145 << 24) | (module145 >>> 8)) >>> 0;
      module145 |= 0;
      return module145;
    }
  }
};
