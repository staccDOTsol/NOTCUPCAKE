var o = 'object' == typeof exports && exports && !exports.nodeType && exports,
  f = o && 'object' == typeof module && module && !module.nodeType && module,
  module417 = f && f.exports === o ? require('./417').Buffer : undefined,
  module429 = (module417 ? module417.isBuffer : undefined) || require('./429');

module.exports = module429;
