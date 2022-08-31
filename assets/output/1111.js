Object.defineProperty(exports, 'GestureHandlerRootView', {
  enumerable: true,
  get: function () {
    return require('./398').GestureHandlerRootView;
  },
});
Object.defineProperty(exports, 'GestureState', {
  enumerable: true,
  get: function () {
    return require('./398').State;
  },
});

exports.PanGestureHandler = function (o) {
  var f = React.useRef(null);
  return React.createElement(
    module1112.default.Provider,
    {
      value: f,
    },
    React.createElement(
      require('./398').PanGestureHandler,
      module29.default({}, o, {
        ref: f,
      })
    )
  );
};

Object.defineProperty(exports, 'PanGestureHandlerGestureEvent', {
  enumerable: true,
  get: function () {
    return require('./398').PanGestureHandlerGestureEvent;
  },
});

var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var u = o(n);
    if (u && u.has(t)) return u.get(t);
    var f = {},
      l = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in t)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(t, c)) {
        var p = l ? Object.getOwnPropertyDescriptor(t, c) : null;
        if (p && (p.get || p.set)) Object.defineProperty(f, c, p);
        else f[c] = t[c];
      }

    f.default = t;
    if (u) u.set(t, f);
    return f;
  })(require('react')),
  module1112 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1112'));

function o(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    u = new WeakMap();
  return (o = function (t) {
    return t ? u : n;
  })(t);
}
