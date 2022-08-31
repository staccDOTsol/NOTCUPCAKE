var module410 = require('./409')(require('./410')),
  module424 = require('./409')(require('./424')),
  module425 = require('./409')(require('./425')),
  module426 = require('./409')(require('./426')),
  module427 = require('./409')(require('./427')),
  module420 = require('./420');

if (
  (require('./410') && '[object DataView]' != module420(new (require('./410'))(new ArrayBuffer(1)))) ||
  (require('./424') && '[object Map]' != module420(new (require('./424'))())) ||
  (require('./425') && '[object Promise]' != module420(require('./425').resolve())) ||
  (require('./426') && '[object Set]' != module420(new (require('./426'))())) ||
  (require('./427') && '[object WeakMap]' != module420(new (require('./427'))()))
)
  module420 = function (j) {
    var module420 = require('./420')(j),
      u = '[object Object]' == module420 ? j.constructor : undefined,
      module409 = u ? require('./409')(u) : '';

    if (module409)
      switch (module409) {
        case module410:
          return '[object DataView]';

        case module424:
          return '[object Map]';

        case module425:
          return '[object Promise]';

        case module426:
          return '[object Set]';

        case module427:
          return '[object WeakMap]';
      }
    return module420;
  };
module.exports = module420;
