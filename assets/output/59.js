function t(o) {
  var n = 'function' == typeof Map ? new Map() : undefined;

  module.exports = t = function (t) {
    if (null === t || !require('./60')(t)) return t;
    if ('function' != typeof t) throw new TypeError('Super expression must either be null or a function');

    if (undefined !== n) {
      if (n.has(t)) return n.get(t);
      n.set(t, o);
    }

    function o() {
      return require('./61')(t, arguments, require('./15')(this).constructor);
    }

    o.prototype = Object.create(t.prototype, {
      constructor: {
        value: o,
        enumerable: false,
        writable: true,
        configurable: true,
      },
    });
    return require('./11')(o, t);
  };

  module.exports.__esModule = true;
  module.exports.default = module.exports;
  return t(o);
}

module.exports = t;
module.exports.__esModule = true;
module.exports.default = module.exports;
