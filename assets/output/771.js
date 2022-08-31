var module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module10 = require('@babel/runtime/helpers/interopRequireDefault')(require('./10')),
  module12 = require('@babel/runtime/helpers/interopRequireDefault')(require('./12')),
  module15 = require('@babel/runtime/helpers/interopRequireDefault')(require('./15')),
  React = s(require('react')),
  module772 = require('@babel/runtime/helpers/interopRequireDefault')(require('./772')),
  module706 = s(require('./706'));

function p(e) {
  if ('function' != typeof WeakMap) return null;
  var t = new WeakMap(),
    n = new WeakMap();
  return (p = function (e) {
    return e ? n : t;
  })(e);
}

function s(e, t) {
  if (!t && e && e.__esModule) return e;
  if (null === e || ('object' != typeof e && 'function' != typeof e))
    return {
      default: e,
    };
  var n = p(t);
  if (n && n.has(e)) return n.get(e);
  var u = {},
    o = Object.defineProperty && Object.getOwnPropertyDescriptor;

  for (var f in e)
    if ('default' !== f && Object.prototype.hasOwnProperty.call(e, f)) {
      var l = o ? Object.getOwnPropertyDescriptor(e, f) : null;
      if (l && (l.get || l.set)) Object.defineProperty(u, f, l);
      else u[f] = e[f];
    }

  u.default = e;
  if (n) n.set(e, u);
  return u;
}

function v() {
  if ('undefined' == typeof Reflect || !Reflect.construct) return false;
  if (Reflect.construct.sham) return false;
  if ('function' == typeof Proxy) return true;

  try {
    Boolean.prototype.valueOf.call(Reflect.construct(Boolean, [], function () {}));
    return true;
  } catch (e) {
    return false;
  }
}

var module679 = (function (p) {
  module10.default(O, p);

  var s = O,
    module679 = v(),
    h = function () {
      var e,
        t = module15.default(s);

      if (module679) {
        var n = module15.default(this).constructor;
        e = Reflect.construct(t, arguments, n);
      } else e = t.apply(this, arguments);

      return module12.default(this, e);
    };

  function O() {
    module7.default(this, O);
    return h.apply(this, arguments);
  }

  module8.default(O, [
    {
      key: 'render',
      value: function () {
        var e = this.props,
          t = e.children,
          n = e.theme;
        return React.createElement(require('./710').Consumer, null, function (e) {
          return React.createElement(module706.PortalContext.Consumer, null, function (u) {
            return React.createElement(
              module772.default,
              {
                manager: u,
              },
              React.createElement(
                require('./710').Provider,
                {
                  value: e,
                },
                React.createElement(
                  require('./679').ThemeProvider,
                  {
                    theme: n,
                  },
                  t
                )
              )
            );
          });
        });
      },
    },
  ]);
  return O;
})(React.Component);

module679.Host = module706.default;

var module679 = require('./679').withTheme(module679);

exports.default = module679;
