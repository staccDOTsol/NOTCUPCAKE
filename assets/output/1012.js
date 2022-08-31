var t = {
  setupURLPolyfill: true,
};

exports.setupURLPolyfill = function () {
  globals.REACT_NATIVE_URL_POLYFILL = require('./1029').name + '@' + require('./1029').version;

  require('./68').polyfillGlobal('URL', function () {
    return require('./1014').URL;
  });

  require('./68').polyfillGlobal('URLSearchParams', function () {
    return require('./1028').URLSearchParams;
  });
};

require('./1013');

Object.keys(require('./1014')).forEach(function (n) {
  if ('default' !== n && '__esModule' !== n)
    Object.prototype.hasOwnProperty.call(t, n) ||
      (n in exports && exports[n] === require('./1014')[n]) ||
      Object.defineProperty(exports, n, {
        enumerable: true,
        get: function () {
          return require('./1014')[n];
        },
      });
});
Object.keys(require('./1028')).forEach(function (n) {
  if ('default' !== n && '__esModule' !== n)
    Object.prototype.hasOwnProperty.call(t, n) ||
      (n in exports && exports[n] === require('./1028')[n]) ||
      Object.defineProperty(exports, n, {
        enumerable: true,
        get: function () {
          return require('./1028')[n];
        },
      });
});
