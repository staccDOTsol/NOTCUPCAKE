function n(n, t) {
  if (!n) return null;

  var module23 = require('./23')(n, 5),
    f = module23[0],
    s = module23[1],
    c = module23[2],
    v = module23[3],
    h = module23[4];

  if ((require('./18')(!f.startsWith('RCT') && !f.startsWith('RK'), "Module name prefixes should've been stripped by the native side but wasn't for " + f), !s && !c))
    return {
      name: f,
    };
  var y = {};
  if (c)
    c.forEach(function (n, l) {
      var f = (v && u(v, l)) || false,
        s = (h && u(h, l)) || false;

      require('./18')(!f || !s, 'Cannot have a method that is both async and a sync hook');

      var c = f ? 'promise' : s ? 'sync' : 'async';
      y[n] = o(t, l, c);
    });

  require('./29')(y, s);

  if (null == y.getConstants)
    y.getConstants = function () {
      return s || Object.freeze({});
    };
  else
    console.warn(
      "Unable to define method 'getConstants()' on NativeModule '" + f + "'. NativeModule '" + f + "' already has a constant or method called 'getConstants'. Please remove it."
    );
  return {
    name: f,
    module: y,
  };
}

function t(t, o) {
  require('./18')(globals.nativeRequireModuleConfig, "Can't lazily create module without nativeRequireModuleConfig");

  var u = n(globals.nativeRequireModuleConfig(t), o);
  return u && u.module;
}

function o(n, t, o) {
  var u = null;
  (u =
    'promise' === o
      ? function (...args) {
          var s = new Error();
          return new Promise(function (o, f) {
            require('./30').enqueueNativeCall(
              n,
              t,
              args,
              function (n) {
                return o(n);
              },
              function (n) {
                return f(l(n, s));
              }
            );
          });
        }
      : function (...args) {
          var s = args.length > 0 ? args[args.length - 1] : null,
            c = args.length > 1 ? args[args.length - 2] : null,
            v = 'function' == typeof s,
            h = 'function' == typeof c;
          if (h) require('./18')(v, 'Cannot have a non-function arg after a function arg.');
          var y = v ? s : null,
            C = h ? c : null,
            M = v + h,
            b = args.slice(0, args.length - M);
          if ('sync' === o) return require('./30').callNativeSyncHook(n, t, b, C, y);

          require('./30').enqueueNativeCall(n, t, b, C, y);
        }).type = o;
  return u;
}

function u(n, t) {
  return -1 !== n.indexOf(t);
}

function l(n, t) {
  return require('./29')(t, n || {});
}

globals.__fbGenNativeModule = n;
var f = {};
if (globals.nativeModuleProxy) f = globals.nativeModuleProxy;
else if (!globals.nativeExtensions) {
  var s = globals.__fbBatchedBridgeConfig;

  require('./18')(s, '__fbBatchedBridgeConfig is not set, cannot invoke native modules');

  var module39 = require('./39');

  (s.remoteModuleConfig || []).forEach(function (o, u) {
    var l = n(o, u);
    if (l)
      l.module
        ? (f[l.name] = l.module)
        : module39(f, l.name, {
            get: function () {
              return t(l.name, u);
            },
          });
  });
}
module.exports = f;
