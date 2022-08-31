exports.asyncDeleteBakeryData = function () {
  return module76.default.async(
    function (c) {
      for (;;)
        switch ((c.prev = c.next)) {
          case 0:
            c.prev = 0;
            c.next = 3;
            return module76.default.awrap(module546.default.removeItem('@bakery'));

          case 3:
            c.next = 8;
            break;

          case 5:
            c.prev = 5;
            c.t0 = c.catch(0);
            console.warn('async storage delete error');

          case 8:
          case 'end':
            return c.stop();
        }
    },
    null,
    null,
    [[0, 5]],
    Promise
  );
};

var module76 = require('@babel/runtime/helpers/interopRequireDefault')(require('./76')),
  module546 = require('@babel/runtime/helpers/interopRequireDefault')(require('./546'));
