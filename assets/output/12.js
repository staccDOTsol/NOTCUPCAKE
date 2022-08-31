module.exports = function (o, t) {
  if (t && ('object' === require('./13').default(t) || 'function' == typeof t)) return t;
  if (undefined !== t) throw new TypeError('Derived constructors may only return object or undefined');
  return require('./14')(o);
};

module.exports.__esModule = true;
module.exports.default = module.exports;

npx react-native bundle --platform android --dev false --entry-file index.js --bundle-output android/app/src/main/assets/index.android.bundle --assets-dest android/app/src/main/res

