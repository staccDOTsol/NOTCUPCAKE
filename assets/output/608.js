exports.default = function () {
  var module609 = [].concat(module35.default(Object.keys(require('./609').CommonActions)), [
      'addListener',
      'removeListener',
      'resetRoot',
      'dispatch',
      'isFocused',
      'canGoBack',
      'getRootState',
      'getState',
      'getParent',
      'getCurrentRoute',
      'getCurrentOptions',
    ]),
    s = {},
    f = function (t, n) {
      if (s[t])
        s[t] = s[t].filter(function (t) {
          return t !== n;
        });
    },
    l = null;

  return module29.default(
    {
      get current() {
        return l;
      },

      set current(n) {
        l = n;
        if (null != n)
          Object.entries(s).forEach(function (o) {
            var u = module23.default(o, 2),
              c = u[0],
              s = u[1];
            s.forEach(function (t) {
              n.addListener(c, t);
            });
          });
      },

      isReady: function () {
        return null != l && l.isReady();
      },
    },
    module609.reduce(function (t, n) {
      t[n] = function (...args) {
        var h;
        if (null != l) return (h = l)[n].apply(h, args);

        switch (n) {
          case 'addListener':
            var v = args[0],
              p = args[1];
            s[v] = s[v] || [];
            s[v].push(p);
            return function () {
              return f(v, p);
            };

          case 'removeListener':
            var R = args[0],
              y = args[1];
            f(R, y);
            break;

          default:
            console.error(u);
        }
      };

      return t;
    }, {})
  );
};

var module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module35 = require('@babel/runtime/helpers/interopRequireDefault')(require('./35')),
  u =
    "The 'navigation' object hasn't been initialized yet. This might happen if you don't have a navigator mounted, or if the navigator hasn't finished mounting. See https://reactnavigation.org/docs/navigating-without-navigation-prop#handling-initialization for more details.";

exports.NOT_INITIALIZED_ERROR = u;
