function l(l, o, t) {
  var n = Object.getOwnPropertyDescriptor(l, o),
    c = n || {},
    b = c.enumerable,
    f = c.writable,
    u = c.configurable;
  if (!n || (undefined !== u && u))
    require('./39')(l, o, {
      get: t,
      enumerable: false !== b,
      writable: false !== f,
    });
  else console.error('Failed to set polyfill. ' + o + ' is not configurable.');
}

module.exports = {
  polyfillObjectProperty: l,
  polyfillGlobal: function (o, t) {
    l(globals, o, t);
  },
};
