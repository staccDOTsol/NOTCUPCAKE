var t = Object.prototype,
  n = t.hasOwnProperty,
  l = t.propertyIsEnumerable,
  module405 = require('./482')(
    (function () {
      return arguments;
    })()
  )
    ? require('./482')
    : function (t) {
        return require('./405')(t) && n.call(t, 'callee') && !l.call(t, 'callee');
      };
module.exports = module405;
