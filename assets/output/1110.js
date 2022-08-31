Object.keys(require('./1111')).forEach(function (n) {
  if ('default' !== n && '__esModule' !== n)
    (n in exports && exports[n] === require('./1111')[n]) ||
      Object.defineProperty(exports, n, {
        enumerable: true,
        get: function () {
          return require('./1111')[n];
        },
      });
});
