function t() {
  if ('undefined' != typeof Reflect && Reflect.get) {
    module.exports = t = Reflect.get.bind();
    module.exports.__esModule = true;
    module.exports.default = module.exports;
  } else {
    module.exports = t = function (t, o, p) {
      var module87 = require('./87')(t, o);

      if (module87) {
        var l = Object.getOwnPropertyDescriptor(module87, o);
        return l.get ? l.get.call(arguments.length < 3 ? t : p) : l.value;
      }
    };

    module.exports.__esModule = true;
    module.exports.default = module.exports;
  }

  return t.apply(this, arguments);
}

module.exports = t;
module.exports.__esModule = true;
module.exports.default = module.exports;
