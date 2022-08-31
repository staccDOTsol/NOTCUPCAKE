function t(t) {
  var e = n();
  return function () {
    var n,
      module15 = require('./15')(t);

    if (e) {
      var module15 = require('./15')(this).constructor;

      n = Reflect.construct(module15, arguments, module15);
    } else n = module15.apply(this, arguments);

    return require('./12')(this, n);
  };
}

function n() {
  if ('undefined' == typeof Reflect || !Reflect.construct) return false;
  if (Reflect.construct.sham) return false;
  if ('function' == typeof Proxy) return true;

  try {
    Boolean.prototype.valueOf.call(Reflect.construct(Boolean, [], function () {}));
    return true;
  } catch (t) {
    return false;
  }
}

var ReactNative = require('react-native').NativeModules,
  module59 = (function (n) {
    'use strict';

    require('./10')(module10, n);

    var e = t(module10);

    function module10() {
      require('./7')(this, module10);

      return e.apply(this, arguments);
    }

    return require('./8')(module10);
  })(require('./59')(Error)),
  module59 = (function (n) {
    'use strict';

    require('./10')(o, n);

    var e = t(o);

    function o() {
      require('./7')(this, o);

      return e.apply(this, arguments);
    }

    return require('./8')(o);
  })(require('./59')(Error));

function c(t) {
  if (ReactNative.RNGetRandomValues) return ReactNative.RNGetRandomValues.getRandomBase64(t);
  if (ReactNative.ExpoRandom) return ReactNative.ExpoRandom.getRandomBase64String(t);
  if (globals.ExpoModules) return globals.ExpoModules.ExpoRandom.getRandomBase64String(t);
  throw new Error('Native module not found');
}

if ('object' != typeof globals.crypto) globals.crypto = {};
if ('function' != typeof globals.crypto.getRandomValues)
  globals.crypto.getRandomValues = function (t) {
    if (
      !(
        t instanceof Int8Array ||
        t instanceof Uint8Array ||
        t instanceof Int16Array ||
        t instanceof Uint16Array ||
        t instanceof Int32Array ||
        t instanceof Uint32Array ||
        t instanceof Uint8ClampedArray
      )
    )
      throw new module59('Expected an integer array');
    if (t.byteLength > 65536) throw new module59('Can only request a maximum of 65536 bytes');

    require('./937')(c(t.byteLength), new Uint8Array(t.buffer, t.byteOffset, t.byteLength));

    return t;
  };
