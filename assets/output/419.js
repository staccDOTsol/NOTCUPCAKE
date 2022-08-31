var n = '[object AsyncFunction]',
  t = '[object Function]',
  o = '[object GeneratorFunction]',
  c = '[object Proxy]';

module.exports = function (u) {
  if (!require('./414')(u)) return false;

  var module420 = require('./420')(u);

  return module420 == t || module420 == o || module420 == n || module420 == c;
};
