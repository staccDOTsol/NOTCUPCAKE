if ('function' == typeof Object.create)
  module.exports = function (t, o) {
    if (o) {
      t.super_ = o;
      t.prototype = Object.create(o.prototype, {
        constructor: {
          value: t,
          enumerable: false,
          writable: true,
          configurable: true,
        },
      });
    }
  };
else
  module.exports = function (t, o) {
    if (o) {
      t.super_ = o;

      var p = function () {};

      p.prototype = o.prototype;
      t.prototype = new p();
      t.prototype.constructor = t;
    }
  };
