var module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  module549 = require('@babel/runtime/helpers/interopRequireDefault')(require('./549'));

if (!module549.default)
  throw new Error(
    '[@RNC/AsyncStorage]: NativeModule: AsyncStorage is null.\n\nTo fix this issue try these steps:\n\n  \u2022 Rebuild and restart the app.\n\n  \u2022 Run the packager with `--reset-cache` flag.\n\n  \u2022 If you are using CocoaPods on iOS, run `pod install` in the `ios` directory and then rebuild and re-run the app.\n\n  \u2022 If this happens while testing with Jest, check out docs how to integrate AsyncStorage with it: https://react-native-async-storage.github.io/async-storage/docs/advanced/jest\n\nIf none of these fix the issue, please open an issue on the Github repository: https://github.com/react-native-async-storage/async-storage/issues\n'
  );
var u = [],
  l = [],
  o = null,
  module551 = {
    getItem: function (n, u) {
      return new Promise(function (l, o) {
        require('./551').checkValidInput(n);

        module549.default.multiGet([n], function (n, t) {
          var i,
            c = null != t && null != (i = t[0]) && i[1] ? t[0][1] : null,
            module551 = require('./551').convertErrors(n);

          if (!(null == u)) u(null == module551 ? undefined : module551[0], c);
          if (module551) o(module551[0]);
          else l(c);
        });
      });
    },
    setItem: function (n, u, l) {
      return new Promise(function (o, i) {
        require('./551').checkValidInput(n, u);

        module549.default.multiSet([[n, u]], function (n) {
          var module551 = require('./551').convertErrors(n);

          if (!(null == l)) l(null == module551 ? undefined : module551[0]);
          if (module551) i(module551[0]);
          else o();
        });
      });
    },
    removeItem: function (n, u) {
      return new Promise(function (l, o) {
        require('./551').checkValidInput(n);

        module549.default.multiRemove([n], function (n) {
          var module551 = require('./551').convertErrors(n);

          if (!(null == u)) u(null == module551 ? undefined : module551[0]);
          if (module551) o(module551[0]);
          else l();
        });
      });
    },
    mergeItem: function (n, u, l) {
      return new Promise(function (o, i) {
        require('./551').checkValidInput(n, u);

        module549.default.multiMerge([[n, u]], function (n) {
          var module551 = require('./551').convertErrors(n);

          if (!(null == l)) l(null == module551 ? undefined : module551[0]);
          if (module551) i(module551[0]);
          else o();
        });
      });
    },
    clear: function (n) {
      return new Promise(function (u, l) {
        module549.default.clear(function (t) {
          var module551 = require('./551').convertError(t);

          if (!(null == n)) n(module551);
          if (module551) l(module551);
          else u();
        });
      });
    },
    getAllKeys: function (n) {
      return new Promise(function (u, l) {
        module549.default.getAllKeys(function (t, o) {
          var module551 = require('./551').convertError(t);

          if (!(null == n)) n(module551, o);
          if (o) u(o);
          else l(module551);
        });
      });
    },
    flushGetRequests: function () {
      var o = u,
        i = l;
      u = [];
      l = [];
      module549.default.multiGet(i, function (t, u) {
        var l = {};
        if (!(null == u))
          u.forEach(function (t) {
            var u = module23.default(t, 2),
              o = u[0],
              i = u[1];
            l[o] = i;
            return i;
          });

        for (var i = o.length, module551 = require('./551').convertErrors(t), s = null != module551 && module551.length ? module551[0] : null, f = 0; f < i; f++) {
          var v = o[f];

          if (s) {
            if (!(null == v.callback)) v.callback(module551);
            if (!(null == v.reject)) v.reject(s);
          } else {
            var h = v.keys.map(function (n) {
              return [n, l[n]];
            });
            if (!(null == v.callback)) v.callback(null, h);
            if (!(null == v.resolve)) v.resolve(h);
          }
        }
      });
    },
    multiGet: function (n, t) {
      if (!o)
        o = setImmediate(function () {
          o = null;
          module551.flushGetRequests();
        });
      var c = {
          keys: n,
          callback: t,
          keyIndex: l.length,
          resolve: null,
          reject: null,
        },
        s = new Promise(function (n, t) {
          c.resolve = n;
          c.reject = t;
        });
      u.push(c);
      n.forEach(function (n) {
        if (-1 === l.indexOf(n)) l.push(n);
      });
      return s;
    },
    multiSet: function (u, l) {
      require('./551').checkValidArgs(u, l);

      return new Promise(function (o, i) {
        u.forEach(function (t) {
          var u = module23.default(t, 2),
            l = u[0],
            o = u[1];

          require('./551').checkValidInput(l, o);
        });
        module549.default.multiSet(u, function (n) {
          var module551 = require('./551').convertErrors(n);

          if (!(null == l)) l(module551);
          if (module551) i(module551);
          else o();
        });
      });
    },
    multiRemove: function (n, u) {
      return new Promise(function (l, o) {
        n.forEach(function (n) {
          return require('./551').checkValidInput(n);
        });
        module549.default.multiRemove(n, function (n) {
          var module551 = require('./551').convertErrors(n);

          if (!(null == u)) u(module551);
          if (module551) o(module551);
          else l();
        });
      });
    },
    multiMerge: function (n, u) {
      return new Promise(function (l, o) {
        module549.default.multiMerge(n, function (n) {
          var module551 = require('./551').convertErrors(n);

          if (!(null == u)) u(module551);
          if (module551) o(module551);
          else l();
        });
      });
    },
  };

if (!module549.default.multiMerge) {
  delete module551.mergeItem;
  delete module551.multiMerge;
}

var c = module551;
exports.default = c;
