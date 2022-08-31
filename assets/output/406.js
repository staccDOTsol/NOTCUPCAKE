var t = 1,
  n = '[object Arguments]',
  _ = '[object Array]',
  c = '[object Object]',
  o = Object.prototype.hasOwnProperty;

module.exports = function (u, p, f, l, v, w) {
  var module407 = require('./407')(u),
    module407 = require('./407')(p),
    module408 = module407 ? _ : require('./408')(u),
    module408 = module407 ? _ : require('./408')(p),
    O = (module408 = module408 == n ? c : module408) == c,
    A = (module408 = module408 == n ? c : module408) == c,
    h = module408 == module408;

  if (h && require('./428')(u)) {
    if (!require('./428')(p)) return false;
    module407 = true;
    O = false;
  }

  if (h && !O) {
    if (!w) w = new (require('./430'))();
    return module407 || require('./459')(u) ? require('./464')(u, p, f, l, v, w) : require('./470')(u, p, module408, f, l, v, w);
  }

  if (!(f & t)) {
    var x = O && o.call(u, '__wrapped__'),
      P = A && o.call(p, '__wrapped__');

    if (x || P) {
      var k = x ? u.value() : u,
        q = P ? p.value() : p;
      if (!w) w = new (require('./430'))();
      return v(k, q, f, l, w);
    }
  }

  return !!h && (w || (w = new (require('./430'))()), require('./474')(u, p, f, l, v, w));
};
