var t = 1,
  c = 2,
  n = '[object Boolean]',
  o = '[object Date]',
  s = '[object Error]',
  b = '[object Map]',
  f = '[object Number]',
  u = '[object RegExp]',
  j = '[object Set]',
  y = '[object String]',
  l = '[object Symbol]',
  v = '[object ArrayBuffer]',
  h = '[object DataView]',
  module421 = require('./421') ? require('./421').prototype : undefined,
  w = module421 ? module421.valueOf : undefined;

module.exports = function (p, L, O, S, x, z, B) {
  switch (O) {
    case h:
      if (p.byteLength != L.byteLength || p.byteOffset != L.byteOffset) return false;
      p = p.buffer;
      L = L.buffer;

    case v:
      return !(p.byteLength != L.byteLength || !z(new (require('./471'))(p), new (require('./471'))(L)));

    case n:
    case o:
    case f:
      return require('./435')(+p, +L);

    case s:
      return p.name == L.name && p.message == L.message;

    case u:
    case y:
      return p == L + '';

    case b:
      var module472 = require('./472');

    case j:
      var E = S & t;
      if ((module472 || (module472 = require('./473')), p.size != L.size && !E)) return false;

      var _ = B.get(p);

      if (_) return _ == L;
      S |= c;
      B.set(p, L);

      var module464 = require('./464')(module472(p), module472(L), S, x, z, B);

      B.delete(p);
      return module464;

    case l:
      if (w) return w.call(p) == w.call(L);
  }

  return false;
};
