exports.__esModule = true;

var React = (function (t) {
    if (t && t.__esModule) return t;
    var n = {};
    if (null != t)
      for (var o in t)
        if (Object.prototype.hasOwnProperty.call(t, o)) {
          var u = Object.defineProperty && Object.getOwnPropertyDescriptor ? Object.getOwnPropertyDescriptor(t, o) : {};
          if (u.get || u.set) Object.defineProperty(n, o, u);
          else n[o] = t[o];
        }
    n.default = t;
    return n;
  })(require('react')),
  module694 = require('./694'),
  module536 = require('./536');

function a() {
  return (a =
    Object.assign ||
    function (t) {
      for (var n = 1; n < arguments.length; n++) {
        var o = arguments[n];

        for (var u in o) Object.prototype.hasOwnProperty.call(o, u) && (t[u] = o[u]);
      }

      return t;
    }).apply(this, arguments);
}

function i(t, n) {
  if (null == t) return {};
  var o,
    u,
    a = {},
    i = Object.keys(t);

  for (u = 0; u < i.length; u++) {
    o = i[u];
    if (!(n.indexOf(o) >= 0)) a[o] = t[o];
  }

  return a;
}

function c(t) {
  if (undefined === t) throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
  return t;
}

function f(t, n, o) {
  if (n in t)
    Object.defineProperty(t, n, {
      value: o,
      enumerable: true,
      configurable: true,
      writable: true,
    });
  else t[n] = o;
  return t;
}

var l = function (u, l) {
  return function (u) {
    var p = (function (o, ...args) {
        var p, s;

        function v() {
          f(c((t = o.call(this, ...args) || this)), '_previous', undefined);
          f(c(t), '_merge', function (o, u) {
            var a = t._previous;
            if (a && a.a === o && a.b === u) return a.result;
            var i = o && u && o !== u ? module694.default(o, u) : o || u;
            t._previous = {
              a: o,
              b: u,
              result: i,
            };
            return i;
          });
          return t;
        }

        s = o;
        (p = v).prototype = Object.create(s.prototype);
        p.prototype.constructor = p;
        p.__proto__ = s;

        v.prototype.render = function () {
          var n = this,
            o = this.props,
            c = o._reactThemeProviderForwardedRef,
            f = i(o, ['_reactThemeProviderForwardedRef']);
          return (
            <l.Consumer>
              {function (o) {
                return <u />;
              }}
            </l.Consumer>
          );
        };

        return v;
      })(React.Component),
      s = React.forwardRef(function (n, o) {
        return <p />;
      });

    s.displayName = 'withTheme(' + (u.displayName || u.name) + ')';
    module536.default(s, u);
    return s;
  };
};

exports.default = l;
