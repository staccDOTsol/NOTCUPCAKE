Object.defineProperty(exports, 'Ndef', {
  enumerable: true,
  get: function () {
    return module879.default;
  },
});
Object.defineProperty(exports, 'NdefStatus', {
  enumerable: true,
  get: function () {
    return require('./865').NdefStatus;
  },
});
Object.defineProperty(exports, 'Nfc15693RequestFlagIOS', {
  enumerable: true,
  get: function () {
    return require('./873').Nfc15693RequestFlagIOS;
  },
});
Object.defineProperty(exports, 'Nfc15693ResponseFlagIOS', {
  enumerable: true,
  get: function () {
    return require('./873').Nfc15693ResponseFlagIOS;
  },
});
Object.defineProperty(exports, 'NfcAdapter', {
  enumerable: true,
  get: function () {
    return require('./875').NfcAdapter;
  },
});
Object.defineProperty(exports, 'NfcEvents', {
  enumerable: true,
  get: function () {
    return require('./865').NfcEvents;
  },
});
Object.defineProperty(exports, 'NfcTech', {
  enumerable: true,
  get: function () {
    return require('./865').NfcTech;
  },
});

var ReactNative = require('react-native'),
  module879 = require('@babel/runtime/helpers/interopRequireDefault')(require('./879')),
  module867 = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var f = u(n);
    if (f && f.has(t)) return f.get(t);
    var c = {},
      o = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var l in t)
      if ('default' !== l && Object.prototype.hasOwnProperty.call(t, l)) {
        var p = o ? Object.getOwnPropertyDescriptor(t, l) : null;
        if (p && (p.get || p.set)) Object.defineProperty(c, l, p);
        else c[l] = t[l];
      }

    c.default = t;
    if (f) f.set(t, c);
    return c;
  })(require('./867'));

function u(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    f = new WeakMap();
  return (u = function (t) {
    return t ? f : n;
  })(t);
}

exports.NfcError = module867;
var module875 = 'ios' === ReactNative.Platform.OS ? new (require('./873').NfcManagerIOS)() : new (require('./875').NfcManagerAndroid)(),
  o = module867.NfcErrorIOS;
exports.NfcErrorIOS = o;
var l = module875;
exports.default = l;
