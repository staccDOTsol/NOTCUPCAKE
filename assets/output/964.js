module.exports = function (t, o, n, f) {
  if ('string' != typeof t) throw new TypeError(t + ' must be a string');
  var s = 'number' == typeof (f = f || {}).version ? f.version : 2;
  if (1 !== s && 2 !== s) throw new TypeError(s + ' must be 1 or 2');
  var u = {
    method: t,
  };

  if ((2 === s && (u.jsonrpc = '2.0'), o)) {
    if ('object' != typeof o && !Array.isArray(o)) throw new TypeError(o + ' must be an object, array or omitted');
    u.params = o;
  }

  if (undefined === n) {
    var module949 =
      'function' == typeof f.generator
        ? f.generator
        : function () {
            return require('./949').v4();
          };
    u.id = module949(u, f);
  } else 2 === s && null === n ? f.notificationIdNull && (u.id = null) : (u.id = n);

  return u;
};
