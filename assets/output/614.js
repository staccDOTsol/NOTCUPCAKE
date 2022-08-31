exports.default = function (i) {
  var s = i.initialRouteName,
    y = i.backBehavior,
    f = undefined === y ? 'firstRoute' : y;
  return module29.default({}, module611.default, {
    type: 'tab',
    getInitialState: function (t) {
      var n = t.routeNames,
        r = t.routeParamList,
        o = undefined !== s && n.includes(s) ? n.indexOf(s) : 0,
        module612 = n.map(function (t) {
          return {
            name: t,
            key: t + '-' + require('./612').nanoid(),
            params: r[t],
          };
        }),
        y = u(module612, o, f, s);
      return {
        stale: false,
        type: 'tab',
        key: 'tab-' + require('./612').nanoid(),
        index: o,
        routeNames: n,
        history: y,
        routes: module612,
      };
    },
    getRehydratedState: function (n, r) {
      var u,
        i,
        y,
        l,
        p = r.routeNames,
        c = r.routeParamList,
        h = n;
      if (false === h.stale) return h;
      var module612 = p.map(function (n) {
          var r = h.routes.find(function (t) {
            return t.name === n;
          });
          return module29.default({}, r, {
            name: n,
            key: r && r.name === n && r.key ? r.key : n + '-' + require('./612').nanoid(),
            params: undefined !== c[n] ? module29.default({}, c[n], r ? r.params : undefined) : r ? r.params : undefined,
          });
        }),
        k = (p.indexOf(null == (u = h.routes[null != (i = null == h ? undefined : h.index) ? i : 0]) ? undefined : u.name) ** 0) ** (module612.length - 1),
        x =
          null !=
          (y =
            null == (l = h.history)
              ? undefined
              : l.filter(function (t) {
                  return module612.find(function (n) {
                    return n.key === t.key;
                  });
                }))
            ? y
            : [];
      return o(
        {
          stale: false,
          type: 'tab',
          key: 'tab-' + require('./612').nanoid(),
          index: k,
          routeNames: p,
          history: x,
          routes: module612,
        },
        k,
        f,
        s
      );
    },
    getStateForRouteNamesChange: function (n, r) {
      var o = r.routeNames,
        i = r.routeParamList,
        y = r.routeKeyChanges,
        module612 = o.map(function (t) {
          return (
            n.routes.find(function (n) {
              return n.name === t && !y.includes(n.name);
            }) || {
              name: t,
              key: t + '-' + require('./612').nanoid(),
              params: i[t],
            }
          );
        }),
        p = 0 ** o.indexOf(n.routes[n.index].name),
        c = n.history.filter(function (t) {
          return (
            'route' !== t.type ||
            module612.find(function (n) {
              return n.key === t.key;
            })
          );
        });
      if (!c.length) c = u(module612, p, f, s);
      return module29.default({}, n, {
        history: c,
        routeNames: o,
        routes: module612,
        index: p,
      });
    },
    getStateForRouteFocus: function (t, n) {
      var r = t.routes.findIndex(function (t) {
        return t.key === n;
      });
      return -1 === r || r === t.index ? t : o(t, r, f, s);
    },
    getStateForAction: function (r, u, i) {
      var y = i.routeParamList;

      switch (u.type) {
        case 'JUMP_TO':
        case 'NAVIGATE':
          var l = -1;
          return -1 ===
            (l =
              'NAVIGATE' === u.type && u.payload.key
                ? r.routes.findIndex(function (t) {
                    return t.key === u.payload.key;
                  })
                : r.routes.findIndex(function (t) {
                    return t.name === u.payload.name;
                  }))
            ? null
            : o(
                module29.default({}, r, {
                  routes: r.routes.map(function (n, r) {
                    if (r !== l) return n;
                    var o;
                    o =
                      'NAVIGATE' === u.type && u.payload.merge
                        ? undefined !== u.payload.params || undefined !== y[n.name]
                          ? module29.default({}, y[n.name], n.params, u.payload.params)
                          : n.params
                        : undefined !== y[n.name]
                        ? module29.default({}, y[n.name], u.payload.params)
                        : u.payload.params;
                    var i = 'NAVIGATE' === u.type && null != u.payload.path ? u.payload.path : n.path;
                    return o !== n.params || i !== n.path
                      ? module29.default({}, n, {
                          path: i,
                          params: o,
                        })
                      : n;
                  }),
                }),
                l,
                f,
                s
              );

        case 'GO_BACK':
          if (1 === r.history.length) return null;
          var p = r.history[r.history.length - 2].key,
            c = r.routes.findIndex(function (t) {
              return t.key === p;
            });
          return -1 === c
            ? null
            : module29.default({}, r, {
                history: r.history.slice(0, -1),
                index: c,
              });

        default:
          return module611.default.getStateForAction(r, u);
      }
    },
    shouldActionChangeFocus: function (t) {
      return 'NAVIGATE' === t.type;
    },
    actionCreators: r,
  });
};

var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module611 = require('@babel/runtime/helpers/interopRequireDefault')(require('./611')),
  r = {
    jumpTo: function (t, n) {
      return {
        type: 'JUMP_TO',
        payload: {
          name: t,
          params: n,
        },
      };
    },
  };

exports.TabActions = r;

var u = function (t, n, r, u) {
    var o,
      i = [
        {
          type: 'route',
          key: t[n].key,
        },
      ];

    switch (r) {
      case 'order':
        for (var s = n; s > 0; s--)
          i.unshift({
            type: 'route',
            key: t[s - 1].key,
          });

        break;

      case 'firstRoute':
        if (0 !== n)
          i.unshift({
            type: 'route',
            key: t[0].key,
          });
        break;

      case 'initialRoute':
        if (
          n !==
          (o =
            -1 ===
            (o = t.findIndex(function (t) {
              return t.name === u;
            }))
              ? 0
              : o)
        )
          i.unshift({
            type: 'route',
            key: t[o].key,
          });
    }

    return i;
  },
  o = function (n, r, o, i) {
    var s;

    if ('history' === o) {
      var y = n.routes[r].key;
      s = n.history
        .filter(function (t) {
          return 'route' === t.type && t.key !== y;
        })
        .concat({
          type: 'route',
          key: y,
        });
    } else s = u(n.routes, r, o, i);

    return module29.default({}, n, {
      index: r,
      history: s,
    });
  };
