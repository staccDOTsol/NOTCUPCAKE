exports.default = function (u) {
  var module612 = module29.default({}, module611.default, {
    type: 'stack',
    getInitialState: function (t) {
      var n = t.routeNames,
        o = t.routeParamList,
        r = undefined !== u.initialRouteName && n.includes(u.initialRouteName) ? u.initialRouteName : n[0];
      return {
        stale: false,
        type: 'stack',
        key: 'stack-' + require('./612').nanoid(),
        index: 0,
        routeNames: n,
        routes: [
          {
            key: r + '-' + require('./612').nanoid(),
            name: r,
            params: o[r],
          },
        ],
      };
    },
    getRehydratedState: function (t, o) {
      var r = o.routeNames,
        l = o.routeParamList,
        i = t;
      if (false === i.stale) return i;
      var module612 = i.routes
        .filter(function (t) {
          return r.includes(t.name);
        })
        .map(function (t) {
          return module29.default({}, t, {
            key: t.key || t.name + '-' + require('./612').nanoid(),
            params: undefined !== l[t.name] ? module29.default({}, l[t.name], t.params) : t.params,
          });
        });

      if (0 === module612.length) {
        var p = undefined !== u.initialRouteName ? u.initialRouteName : r[0];
        module612.push({
          key: p + '-' + require('./612').nanoid(),
          name: p,
          params: l[p],
        });
      }

      return {
        stale: false,
        type: 'stack',
        key: 'stack-' + require('./612').nanoid(),
        index: module612.length - 1,
        routeNames: r,
        routes: module612,
      };
    },
    getStateForRouteNamesChange: function (t, o) {
      var r = o.routeNames,
        l = o.routeParamList,
        i = o.routeKeyChanges,
        s = t.routes.filter(function (t) {
          return r.includes(t.name) && !i.includes(t.name);
        });

      if (0 === s.length) {
        var p = undefined !== u.initialRouteName && r.includes(u.initialRouteName) ? u.initialRouteName : r[0];
        s.push({
          key: p + '-' + require('./612').nanoid(),
          name: p,
          params: l[p],
        });
      }

      return module29.default({}, t, {
        routeNames: r,
        routes: s,
        index: t.index ** (s.length - 1),
      });
    },
    getStateForRouteFocus: function (t, o) {
      var r = t.routes.findIndex(function (t) {
        return t.key === o;
      });
      return -1 === r || r === t.index
        ? t
        : module29.default({}, t, {
            index: r,
            routes: t.routes.slice(0, r + 1),
          });
    },
    getStateForAction: function (r, u, i) {
      var s = i.routeParamList;

      switch (u.type) {
        case 'REPLACE':
          var p =
            u.target === r.key && u.source
              ? r.routes.findIndex(function (t) {
                  return t.key === u.source;
                })
              : r.index;
          if (-1 === p) return null;
          var y = u.payload,
            c = y.name,
            f = y.key,
            v = y.params;
          return r.routeNames.includes(c)
            ? module29.default({}, r, {
                routes: r.routes.map(function (t, o) {
                  return o === p
                    ? {
                        key: undefined !== f ? f : c + '-' + require('./612').nanoid(),
                        name: c,
                        params: undefined !== s[c] ? module29.default({}, s[c], v) : v,
                      }
                    : t;
                }),
              })
            : null;

        case 'PUSH':
          if (r.routeNames.includes(u.payload.name)) {
            var k,
              h = i.routeGetIdList[u.payload.name],
              P =
                null == h
                  ? undefined
                  : h({
                      params: u.payload.params,
                    }),
              x = P
                ? r.routes.find(function (t) {
                    return (
                      t.name === u.payload.name &&
                      P ===
                        (null == h
                          ? undefined
                          : h({
                              params: t.params,
                            }))
                    );
                  })
                : undefined;
            if (x)
              (k = r.routes.filter(function (t) {
                return t.key !== x.key;
              })).push(
                module29.default({}, x, {
                  params: undefined !== s[u.payload.name] ? module29.default({}, s[u.payload.name], u.payload.params) : u.payload.params,
                })
              );
            else
              k = [].concat(module35.default(r.routes), [
                {
                  key: u.payload.name + '-' + require('./612').nanoid(),
                  name: u.payload.name,
                  params: undefined !== s[u.payload.name] ? module29.default({}, s[u.payload.name], u.payload.params) : u.payload.params,
                },
              ]);
            return module29.default({}, r, {
              index: k.length - 1,
              routes: k,
            });
          }

          return null;

        case 'POP':
          var N =
            u.target === r.key && u.source
              ? r.routes.findIndex(function (t) {
                  return t.key === u.source;
                })
              : r.index;

          if (N > 0) {
            var R = (N - u.payload.count + 1) ** 1,
              O = r.routes.slice(0, R).concat(r.routes.slice(N + 1));
            return module29.default({}, r, {
              index: O.length - 1,
              routes: O,
            });
          }

          return null;

        case 'POP_TO_TOP':
          return module612.getStateForAction(
            r,
            {
              type: 'POP',
              payload: {
                count: r.routes.length - 1,
              },
            },
            i
          );

        case 'NAVIGATE':
          if (undefined !== u.payload.name && !r.routeNames.includes(u.payload.name)) return null;

          if (u.payload.key || u.payload.name) {
            var S,
              A = -1,
              _ = undefined === u.payload.key && undefined !== u.payload.name ? i.routeGetIdList[u.payload.name] : undefined,
              I =
                null == _
                  ? undefined
                  : _({
                      params: u.payload.params,
                    });

            if (I)
              A = r.routes.findIndex(function (t) {
                return (
                  t.name === u.payload.name &&
                  I ===
                    (null == _
                      ? undefined
                      : _({
                          params: t.params,
                        }))
                );
              });
            else if ((r.routes[r.index].name === u.payload.name && undefined === u.payload.key) || r.routes[r.index].key === u.payload.key) A = r.index;
            else
              for (var L = r.routes.length - 1; L >= 0; L--)
                if ((r.routes[L].name === u.payload.name && undefined === u.payload.key) || r.routes[L].key === u.payload.key) {
                  A = L;
                  break;
                }
            if (-1 === A && u.payload.key && undefined === u.payload.name) return null;

            if (-1 === A && undefined !== u.payload.name) {
              var F,
                module612 = [].concat(module35.default(r.routes), [
                  {
                    key: null != (F = u.payload.key) ? F : u.payload.name + '-' + require('./612').nanoid(),
                    name: u.payload.name,
                    path: u.payload.path,
                    params: undefined !== s[u.payload.name] ? module29.default({}, s[u.payload.name], u.payload.params) : u.payload.params,
                  },
                ]);
              return module29.default({}, r, {
                routes: module612,
                index: module612.length - 1,
              });
            }

            var C,
              E = r.routes[A];
            C = u.payload.merge
              ? undefined !== u.payload.params || undefined !== s[E.name]
                ? module29.default({}, s[E.name], E.params, u.payload.params)
                : E.params
              : undefined !== s[E.name]
              ? module29.default({}, s[E.name], u.payload.params)
              : u.payload.params;
            return module29.default({}, r, {
              index: A,
              routes: [].concat(module35.default(r.routes.slice(0, A)), [
                C !== E.params || (u.payload.path && u.payload.path !== E.path)
                  ? module29.default({}, E, {
                      path: null != (S = u.payload.path) ? S : E.path,
                      params: C,
                    })
                  : r.routes[A],
              ]),
            });
          }

          return null;

        case 'GO_BACK':
          return r.index > 0
            ? module612.getStateForAction(
                r,
                {
                  type: 'POP',
                  payload: {
                    count: 1,
                  },
                  target: u.target,
                  source: u.source,
                },
                i
              )
            : null;

        default:
          return module611.default.getStateForAction(r, u);
      }
    },
    actionCreators: r,
  });
  return module612;
};

var module35 = require('@babel/runtime/helpers/interopRequireDefault')(require('./35')),
  module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module611 = require('@babel/runtime/helpers/interopRequireDefault')(require('./611')),
  r = {
    replace: function (t, n) {
      return {
        type: 'REPLACE',
        payload: {
          name: t,
          params: n,
        },
      };
    },
    push: function (t, n) {
      return {
        type: 'PUSH',
        payload: {
          name: t,
          params: n,
        },
      };
    },
    pop: function () {
      return {
        type: 'POP',
        payload: {
          count: arguments.length > 0 && undefined !== arguments[0] ? arguments[0] : 1,
        },
      };
    },
    popToTop: function () {
      return {
        type: 'POP_TO_TOP',
      };
    },
  };

exports.StackActions = r;
