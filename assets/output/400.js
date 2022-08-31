exports.default = function (n) {
  var l,
    f = arguments.length > 1 && undefined !== arguments[1] ? arguments[1] : {},
    c = React.forwardRef(function (l, module401) {
      var p = Object.keys(l).reduce(function (t, n) {
          var u = module401;
          if (u.includes(n)) t[n] = l[n];
          return t;
        }, module29.default({}, f)),
        s = React.useRef(),
        v = React.useRef();
      React.useImperativeHandle(
        module401,
        function () {
          var t = v.current;

          if (s.current && t) {
            s.current.handlerTag = t.handlerTag;
            return s.current;
          } else return null;
        },
        [s, v]
      );
      return React.createElement(
        require('./401').NativeViewGestureHandler,
        module29.default({}, p, {
          ref: v,
        }),
        React.createElement(
          n,
          module29.default({}, l, {
            ref: s,
          })
        )
      );
    });
  c.displayName =
    (null == n ? undefined : n.displayName) || (null == n ? undefined : null == (l = n.render) ? undefined : l.name) || ('string' == typeof n && n) || 'ComponentWrapper';
  return c;
};

var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module35 = require('@babel/runtime/helpers/interopRequireDefault')(require('./35')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var u = l(n);
    if (u && u.has(t)) return u.get(t);
    var o = {},
      f = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in t)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(t, c)) {
        var p = f ? Object.getOwnPropertyDescriptor(t, c) : null;
        if (p && (p.get || p.set)) Object.defineProperty(o, c, p);
        else o[c] = t[c];
      }

    o.default = t;
    if (u) u.set(t, o);
    return o;
  })(require('react'));

function l(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    u = new WeakMap();
  return (l = function (t) {
    return t ? u : n;
  })(t);
}

var module401 = [].concat(module35.default(require('./401').nativeViewProps), ['onGestureHandlerEvent', 'onGestureHandlerStateChange']);
