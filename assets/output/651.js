exports.default = function (c) {
  var f = c.id,
    l = c.onAction,
    s = c.getState,
    p = c.emitter,
    v = c.router,
    y = React.useContext(module602.default),
    O = React.useContext(module599.default);
  return React.useMemo(
    function () {
      var n = function (t) {
          var n = 'function' == typeof t ? t(s()) : t,
            o = l(n);
          if (!(o || null == y)) y(n);
        },
        module609 = module29.default({}, v.actionCreators, require('./609').CommonActions),
        u = Object.keys(module609).reduce(function (t, u) {
          t[u] = function () {
            return n(module609[u].apply(module609, arguments));
          };

          return t;
        }, {}),
        module609 = module29.default({}, O, u, {
          dispatch: n,
          emit: p.emit,
          isFocused: O
            ? O.isFocused
            : function () {
                return true;
              },
          canGoBack: function () {
            var t = s();
            return (
              null !==
                v.getStateForAction(t, require('./609').CommonActions.goBack(), {
                  routeNames: t.routeNames,
                  routeParamList: {},
                  routeGetIdList: {},
                }) ||
              (null == O ? undefined : O.canGoBack()) ||
              false
            );
          },
          getId: function () {
            return f;
          },
          getParent: function (t) {
            if (undefined !== t) {
              for (var n = module609; n && t !== n.getId(); ) n = n.getParent();

              return n;
            }

            return O;
          },
          getState: s,
        });

      return module609;
    },
    [f, p.emit, s, l, y, O, v]
  );
};

var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = c(n);
    if (o && o.has(t)) return o.get(t);
    var u = {},
      f = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var l in t)
      if ('default' !== l && Object.prototype.hasOwnProperty.call(t, l)) {
        var s = f ? Object.getOwnPropertyDescriptor(t, l) : null;
        if (s && (s.get || s.set)) Object.defineProperty(u, l, s);
        else u[l] = t[l];
      }

    u.default = t;
    if (o) o.set(t, u);
    return u;
  })(require('react')),
  module599 = require('@babel/runtime/helpers/interopRequireDefault')(require('./599')),
  module602 = require('@babel/runtime/helpers/interopRequireDefault')(require('./602'));

function c(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (c = function (t) {
    return t ? o : n;
  })(t);
}

require('./636').PrivateValueStore;
