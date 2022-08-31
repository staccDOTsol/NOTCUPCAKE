var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module48 = require('@babel/runtime/helpers/interopRequireDefault')(require('./48')),
  t = {},
  o = new Set(),
  f = {},
  u = false;

function c() {
  if (!u) {
    f = module48.default.getConstants();
    u = true;
  }

  return f;
}

function l(n) {
  if (undefined === t[n] && globals.nativeCallSyncHook && module48.default.getConstantsForViewManager)
    try {
      t[n] = module48.default.getConstantsForViewManager(n);
    } catch (e) {
      console.error("NativeUIManager.getConstantsForViewManager('" + n + "') threw an exception.", e);
      t[n] = null;
    }
  var f = t[n];
  if (f) return f;
  if (!globals.nativeCallSyncHook) return f;

  if (module48.default.lazilyLoadView && !o.has(n)) {
    var u = module48.default.lazilyLoadView(n);
    o.add(n);

    if (null != u && null != u.viewConfig) {
      c()[n] = u.viewConfig;
      w(n);
    }
  }

  return t[n];
}

var s = module29.default({}, module48.default, {
  createView: function (n, t, o, f) {
    module48.default.createView(n, t, o, f);
  },
  getConstants: function () {
    return c();
  },
  getViewManagerConfig: function (n) {
    return l(n);
  },
  hasViewManagerConfig: function (n) {
    return null != l(n);
  },
});

function w(n) {
  var e = c()[n];
  t[n] = e;

  if (e.Manager) {
    require('./39')(e, 'Constants', {
      get: function () {
        var module22 = require('./22')[e.Manager],
          t = {};

        if (module22)
          Object.keys(module22).forEach(function (e) {
            var o = module22[e];
            if ('function' != typeof o) t[e] = o;
          });
        return t;
      },
    });

    require('./39')(e, 'Commands', {
      get: function () {
        var module22 = require('./22')[e.Manager],
          t = {},
          o = 0;

        if (module22)
          Object.keys(module22).forEach(function (e) {
            if ('function' == typeof module22[e]) t[e] = o++;
          });
        return t;
      },
    });
  }
}

module48.default.getViewManagerConfig = s.getViewManagerConfig;
if (c().ViewManagerNames)
  module48.default.getConstants().ViewManagerNames.forEach(function (n) {
    require('./39')(module48.default, n, {
      get: function () {
        return module48.default.getConstantsForViewManager(n);
      },
    });
  });
if (!globals.nativeCallSyncHook)
  Object.keys(c()).forEach(function (n) {
    if (!require('./49').includes(n)) {
      if (!t[n]) t[n] = c()[n];

      require('./39')(module48.default, n, {
        get: function () {
          console.warn(
            "Accessing view manager configs directly off UIManager via UIManager['" + n + "'] is no longer supported. Use UIManager.getViewManagerConfig('" + n + "') instead."
          );
          return s.getViewManagerConfig(n);
        },
      });
    }
  });
module.exports = s;
