exports.get = p;

exports.getWithFallback_DEPRECATED = function (n, u) {
  if (null == t) {
    if (y(n)) return p(n, u);
  } else if (null != t(n)) return p(n, u);

  var l = function (t) {
    return null;
  };

  l.displayName = 'Fallback(' + n + ')';
  return l;
};

exports.setRuntimeConfigProvider = function (n) {
  module18.default(null == t, 'NativeComponentRegistry.setRuntimeConfigProvider() called more than once.');
  t = n;
};

exports.unstable_hasStaticViewConfig = function (n) {
  var u;
  return !(null != (u = null == t ? undefined : t(n))
    ? u
    : {
        native: true,
      }
  ).native;
};

var t,
  module141 = s(require('./141')),
  module43 = require('@babel/runtime/helpers/interopRequireDefault')(require('./43')),
  module136 = require('@babel/runtime/helpers/interopRequireDefault')(require('./136')),
  module142 = require('@babel/runtime/helpers/interopRequireDefault')(require('./142')),
  module167 = require('@babel/runtime/helpers/interopRequireDefault')(require('./167')),
  module18 = require('@babel/runtime/helpers/interopRequireDefault')(require('./18'));

s(require('react'));

function v(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    u = new WeakMap();
  return (v = function (t) {
    return t ? u : n;
  })(t);
}

function s(t, n) {
  if (!n && t && t.__esModule) return t;
  if (null === t || ('object' != typeof t && 'function' != typeof t))
    return {
      default: t,
    };
  var u = v(n);
  if (u && u.has(t)) return u.get(t);
  var l = {},
    o = Object.defineProperty && Object.getOwnPropertyDescriptor;

  for (var f in t)
    if ('default' !== f && Object.prototype.hasOwnProperty.call(t, f)) {
      var c = o ? Object.getOwnPropertyDescriptor(t, f) : null;
      if (c && (c.get || c.set)) Object.defineProperty(l, f, c);
      else l[f] = t[f];
    }

  l.default = t;
  if (u) u.set(t, l);
  return l;
}

new Map();

function p(u, c) {
  module136.default.register(u, function () {
    var l,
      v =
        null != (l = null == t ? undefined : t(u))
          ? l
          : {
              native: true,
              strict: false,
              verify: false,
            },
      s = v.native,
      p = v.strict,
      y = v.verify,
      module164 = s ? module142.default(u) : require('./164').createViewConfig(c());

    if (y) {
      var w = s ? module164 : module142.default(u),
        module164 = s ? require('./164').createViewConfig(c()) : module164;

      if (p) {
        var P = module141.validate(u, w, module164);
        if ('invalid' === P.type) console.error(module141.stringifyValidationResult(u, P));
      } else module167.default(w, module164);
    }

    return module164;
  });
  return u;
}

function y(n) {
  module18.default(null == t, 'Unexpected invocation!');
  return null != module43.default.getViewManagerConfig(n);
}
