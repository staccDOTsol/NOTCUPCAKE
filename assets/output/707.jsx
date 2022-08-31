var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module35 = require('@babel/runtime/helpers/interopRequireDefault')(require('./35')),
  module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module10 = require('@babel/runtime/helpers/interopRequireDefault')(require('./10')),
  module12 = require('@babel/runtime/helpers/interopRequireDefault')(require('./12')),
  module15 = require('@babel/runtime/helpers/interopRequireDefault')(require('./15')),
  React = (function (t, e) {
    if (!e && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var n = s(e);
    if (n && n.has(t)) return n.get(t);
    var u = {},
      o = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var f in t)
      if ('default' !== f && Object.prototype.hasOwnProperty.call(t, f)) {
        var l = o ? Object.getOwnPropertyDescriptor(t, f) : null;
        if (l && (l.get || l.set)) Object.defineProperty(u, f, l);
        else u[f] = t[f];
      }

    u.default = t;
    if (n) n.set(t, u);
    return u;
  })(require('react')),
  ReactNative = require('react-native');

function s(t) {
  if ('function' != typeof WeakMap) return null;
  var e = new WeakMap(),
    n = new WeakMap();
  return (s = function (t) {
    return t ? n : e;
  })(t);
}

function y() {
  if ('undefined' == typeof Reflect || !Reflect.construct) return false;
  if (Reflect.construct.sham) return false;
  if ('function' == typeof Proxy) return true;

  try {
    Boolean.prototype.valueOf.call(Reflect.construct(Boolean, [], function () {}));
    return true;
  } catch (t) {
    return false;
  }
}

var v = (function (s, ...args) {
  module10.default(O, s);

  var v = O,
    h = y(),
    b = function () {
      var t,
        e = module15.default(v);

      if (h) {
        var n = module15.default(this).constructor;
        t = Reflect.construct(e, arguments, n);
      } else t = e.apply(this, arguments);

      return module12.default(this, t);
    };

  function O() {
    var u;
    module7.default(this, O);
    (u = b.call(this, ...args)).state = {
      portals: [],
    };

    u.mount = function (t, n) {
      u.setState(function (u) {
        return {
          portals: [].concat(module35.default(u.portals), [
            {
              key: t,
              children: n,
            },
          ]),
        };
      });
    };

    u.update = function (e, n) {
      return u.setState(function (u) {
        return {
          portals: u.portals.map(function (u) {
            return u.key === e
              ? module29.default({}, u, {
                  children: n,
                })
              : u;
          }),
        };
      });
    };

    u.unmount = function (t) {
      return u.setState(function (e) {
        return {
          portals: e.portals.filter(function (e) {
            return e.key !== t;
          }),
        };
      });
    };

    return u;
  }

  module8.default(O, [
    {
      key: 'render',
      value: function () {
        return this.state.portals.map(function (t) {
          var e = t.key,
            n = t.children;
          return (
            <ReactNative.View key={e} collapsable={false} pointerEvents="box-none" style={ReactNative.StyleSheet.absoluteFill}>
              {n}
            </ReactNative.View>
          );
        });
      },
    },
  ]);
  return O;
})(React.PureComponent);

exports.default = v;
