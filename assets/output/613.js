exports.default = function (f) {
  var l = f.defaultStatus,
    p = undefined === l ? 'closed' : l,
    y = module105.default(f, c),
    w = module614.default(y),
    v = function (t) {
      var n;
      return Boolean(
        null == (n = t.history)
          ? undefined
          : n.some(function (t) {
              return 'drawer' === t.type;
            })
      );
    },
    O = function (n) {
      return v(n)
        ? n
        : module29.default({}, n, {
            history: [].concat(module35.default(n.history), [
              {
                type: 'drawer',
                status: 'open' === p ? 'closed' : 'open',
              },
            ]),
          });
    },
    A = function (t) {
      return v(t)
        ? module29.default({}, t, {
            history: t.history.filter(function (t) {
              return 'drawer' !== t.type;
            }),
          })
        : t;
    },
    R = function (t) {
      return 'open' === p ? A(t) : O(t);
    },
    S = function (t) {
      return 'open' === p ? O(t) : A(t);
    };

  return module29.default({}, w, {
    type: 'drawer',
    getInitialState: function (t) {
      var n = t.routeNames,
        o = t.routeParamList,
        c = t.routeGetIdList,
        f = w.getInitialState({
          routeNames: n,
          routeParamList: o,
          routeGetIdList: c,
        });
      return module29.default({}, f, {
        default: p,
        stale: false,
        type: 'drawer',
        key: 'drawer-' + require('./612').nanoid(),
      });
    },
    getRehydratedState: function (t, n) {
      var o = n.routeNames,
        c = n.routeParamList,
        f = n.routeGetIdList;
      if (false === t.stale) return t;
      var s = w.getRehydratedState(t, {
        routeNames: o,
        routeParamList: c,
        routeGetIdList: f,
      });

      if (v(t)) {
        s = A(s);
        s = O(s);
      }

      return module29.default({}, s, {
        default: p,
        type: 'drawer',
        key: 'drawer-' + require('./612').nanoid(),
      });
    },
    getStateForRouteFocus: function (t, n) {
      var u = w.getStateForRouteFocus(t, n);
      return S(u);
    },
    getStateForAction: function (t, n, u) {
      switch (n.type) {
        case 'OPEN_DRAWER':
          return R(t);

        case 'CLOSE_DRAWER':
          return S(t);

        case 'TOGGLE_DRAWER':
          return v(t) ? A(t) : O(t);

        case 'JUMP_TO':
        case 'NAVIGATE':
          var o = w.getStateForAction(t, n, u);
          return null != o && o.index !== t.index ? S(o) : o;

        case 'GO_BACK':
          return v(t) ? A(t) : w.getStateForAction(t, n, u);

        default:
          return w.getStateForAction(t, n, u);
      }
    },
    actionCreators: s,
  });
};

var module35 = require('@babel/runtime/helpers/interopRequireDefault')(require('./35')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module614 = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var u = f(n);
    if (u && u.has(t)) return u.get(t);
    var o = {},
      c = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var s in t)
      if ('default' !== s && Object.prototype.hasOwnProperty.call(t, s)) {
        var l = c ? Object.getOwnPropertyDescriptor(t, s) : null;
        if (l && (l.get || l.set)) Object.defineProperty(o, s, l);
        else o[s] = t[s];
      }

    o.default = t;
    if (u) u.set(t, o);
    return o;
  })(require('./614')),
  c = ['defaultStatus'];

function f(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    u = new WeakMap();
  return (f = function (t) {
    return t ? u : n;
  })(t);
}

var s = module29.default({}, module614.TabActions, {
  openDrawer: function () {
    return {
      type: 'OPEN_DRAWER',
    };
  },
  closeDrawer: function () {
    return {
      type: 'CLOSE_DRAWER',
    };
  },
  toggleDrawer: function () {
    return {
      type: 'TOGGLE_DRAWER',
    };
  },
});
exports.DrawerActions = s;
