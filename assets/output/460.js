var e = 'object' == typeof exports && exports && !exports.nodeType && exports,
  t = e && 'object' == typeof module && module && !module.nodeType && module,
  module418 = t && t.exports === e && require('./418').process,
  o = (function () {
    try {
      var e = t && t.require && t.require('util').types;

      return e || (module418 && module418.binding && module418.binding('util'));
    } catch (e) {}
  })();

module.exports = o;
