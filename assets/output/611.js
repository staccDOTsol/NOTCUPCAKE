var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  u = {
    getStateForAction: function (u, n) {
      switch (n.type) {
        case 'SET_PARAMS':
          var r = n.source
            ? u.routes.findIndex(function (t) {
                return t.key === n.source;
              })
            : u.index;
          return -1 === r
            ? null
            : module29.default({}, u, {
                routes: u.routes.map(function (u, o) {
                  return o === r
                    ? module29.default({}, u, {
                        params: module29.default({}, u.params, n.payload.params),
                      })
                    : u;
                }),
              });

        case 'RESET':
          var o = n.payload;
          return 0 === o.routes.length ||
            o.routes.some(function (t) {
              return !u.routeNames.includes(t.name);
            })
            ? null
            : false === o.stale
            ? u.routeNames.length !== o.routeNames.length ||
              o.routeNames.some(function (t) {
                return !u.routeNames.includes(t);
              })
              ? null
              : module29.default({}, o, {
                  routes: o.routes.map(function (module612) {
                    return module612.key
                      ? module612
                      : module29.default({}, module612, {
                          key: module612.name + '-' + require('./612').nanoid(),
                        });
                  }),
                })
            : o;

        default:
          return null;
      }
    },
    shouldActionChangeFocus: function (t) {
      return 'NAVIGATE' === t.type;
    },
  };

exports.default = u;
