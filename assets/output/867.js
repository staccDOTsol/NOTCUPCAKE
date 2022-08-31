exports.buildNfcExceptionAndroid = A;
exports.buildNfcExceptionIOS = _;

exports.handleNativeException = function (t) {
  var module8,
    u = arguments;
  return module76.default.async(
    function (o) {
      for (;;)
        switch ((o.prev = o.next)) {
          case 0:
            module8 = u.length > 1 && undefined !== u[1] && u[1];
            o.prev = 1;
            o.next = 4;
            return module76.default.awrap(t);

          case 4:
            return o.abrupt('return', o.sent);

          case 7:
            if (((o.prev = 7), (o.t0 = o.catch(1)), module8)) {
              o.next = 18;
              break;
            }

            if ('string' != typeof o.t0) {
              o.next = 17;
              break;
            }

            if ('ios' !== ReactNative.Platform.OS) {
              o.next = 15;
              break;
            }

            throw _(o.t0);

          case 15:
            if ('android' !== ReactNative.Platform.OS) {
              o.next = 17;
              break;
            }

            throw A(o.t0);

          case 17:
            throw o.t0;

          case 18:
          case 'end':
            return o.stop();
        }
    },
    null,
    null,
    [[1, 7]],
    Promise
  );
};

var module76 = require('@babel/runtime/helpers/interopRequireDefault')(require('./76')),
  module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module10 = require('@babel/runtime/helpers/interopRequireDefault')(require('./10')),
  module12 = require('@babel/runtime/helpers/interopRequireDefault')(require('./12')),
  module15 = require('@babel/runtime/helpers/interopRequireDefault')(require('./15')),
  module59 = require('@babel/runtime/helpers/interopRequireDefault')(require('./59')),
  ReactNative = require('react-native');

function p(e) {
  var t = v();
  return function () {
    var n,
      u = module15.default(e);

    if (t) {
      var o = module15.default(this).constructor;
      n = Reflect.construct(u, arguments, o);
    } else n = u.apply(this, arguments);

    return module12.default(this, n);
  };
}

function v() {
  if ('undefined' == typeof Reflect || !Reflect.construct) return false;
  if (Reflect.construct.sham) return false;
  if ('function' == typeof Proxy) return true;

  try {
    Boolean.prototype.valueOf.call(Reflect.construct(Boolean, [], function () {}));
    return true;
  } catch (e) {
    return false;
  }
}

var h = (function (e) {
  module10.default(f, e);
  var t = p(f);

  function f() {
    module7.default(this, f);
    return t.apply(this, arguments);
  }

  return module8.default(f);
})(module59.default(Error));

exports.NfcErrorBase = h;

var y = (function (e) {
  module10.default(f, e);
  var t = p(f);

  function f() {
    module7.default(this, f);
    return t.apply(this, arguments);
  }

  return module8.default(f);
})(h);

exports.UnsupportedFeature = y;

var C = (function (e) {
  module10.default(f, e);
  var t = p(f);

  function f() {
    module7.default(this, f);
    return t.apply(this, arguments);
  }

  return module8.default(f);
})(h);

exports.SecurityViolation = C;

var w = (function (e) {
  module10.default(f, e);
  var t = p(f);

  function f() {
    module7.default(this, f);
    return t.apply(this, arguments);
  }

  return module8.default(f);
})(h);

exports.InvalidParameter = w;

var N = (function (e) {
  module10.default(f, e);
  var t = p(f);

  function f() {
    module7.default(this, f);
    return t.apply(this, arguments);
  }

  return module8.default(f);
})(h);

exports.InvalidParameterLength = N;

var T = (function (e) {
  module10.default(f, e);
  var t = p(f);

  function f() {
    module7.default(this, f);
    return t.apply(this, arguments);
  }

  return module8.default(f);
})(h);

exports.ParameterOutOfBound = T;

var I = (function (e) {
  module10.default(f, e);
  var t = p(f);

  function f() {
    module7.default(this, f);
    return t.apply(this, arguments);
  }

  return module8.default(f);
})(h);

exports.RadioDisabled = I;

var E = (function (e) {
  module10.default(f, e);
  var t = p(f);

  function f() {
    module7.default(this, f);
    return t.apply(this, arguments);
  }

  return module8.default(f);
})(h);

exports.TagConnectionLost = E;

var S = (function (e) {
  module10.default(f, e);
  var t = p(f);

  function f() {
    module7.default(this, f);
    return t.apply(this, arguments);
  }

  return module8.default(f);
})(h);

exports.RetryExceeded = S;

var x = (function (e) {
  module10.default(f, e);
  var t = p(f);

  function f() {
    module7.default(this, f);
    return t.apply(this, arguments);
  }

  return module8.default(f);
})(h);

exports.TagResponseError = x;

var P = (function (e) {
  module10.default(f, e);
  var t = p(f);

  function f() {
    module7.default(this, f);
    return t.apply(this, arguments);
  }

  return module8.default(f);
})(h);

exports.SessionInvalidated = P;

var L = (function (e) {
  module10.default(f, e);
  var t = p(f);

  function f() {
    module7.default(this, f);
    return t.apply(this, arguments);
  }

  return module8.default(f);
})(h);

exports.TagNotConnected = L;

var b = (function (e) {
  module10.default(f, e);
  var t = p(f);

  function f() {
    module7.default(this, f);
    return t.apply(this, arguments);
  }

  return module8.default(f);
})(h);

exports.PacketTooLong = b;

var O = (function (e) {
  module10.default(f, e);
  var t = p(f);

  function f() {
    module7.default(this, f);
    return t.apply(this, arguments);
  }

  return module8.default(f);
})(h);

exports.UserCancel = O;

var R = (function (e) {
  module10.default(f, e);
  var t = p(f);

  function f() {
    module7.default(this, f);
    return t.apply(this, arguments);
  }

  return module8.default(f);
})(h);

exports.Timeout = R;

var B = (function (e) {
  module10.default(f, e);
  var t = p(f);

  function f() {
    module7.default(this, f);
    return t.apply(this, arguments);
  }

  return module8.default(f);
})(h);

exports.Unexpected = B;

var F = (function (e) {
  module10.default(f, e);
  var t = p(f);

  function f() {
    module7.default(this, f);
    return t.apply(this, arguments);
  }

  return module8.default(f);
})(h);

exports.SystemBusy = F;

var U = (function (e) {
  module10.default(f, e);
  var t = p(f);

  function f() {
    module7.default(this, f);
    return t.apply(this, arguments);
  }

  return module8.default(f);
})(h);

exports.FirstNdefInvalid = U;

var k = (function (e) {
  module10.default(f, e);
  var t = p(f);

  function f() {
    module7.default(this, f);
    return t.apply(this, arguments);
  }

  return module8.default(f);
})(h);

exports.InvalidConfiguration = k;

var z = (function (e) {
  module10.default(f, e);
  var t = p(f);

  function f() {
    module7.default(this, f);
    return t.apply(this, arguments);
  }

  return module8.default(f);
})(h);

exports.TagNotWritable = z;

var M = (function (e) {
  module10.default(f, e);
  var t = p(f);

  function f() {
    module7.default(this, f);
    return t.apply(this, arguments);
  }

  return module8.default(f);
})(h);

exports.TagUpdateFailure = M;

var D = (function (e) {
  module10.default(f, e);
  var t = p(f);

  function f() {
    module7.default(this, f);
    return t.apply(this, arguments);
  }

  return module8.default(f);
})(h);

exports.TagSizeTooSmall = D;

var V = (function (e) {
  module10.default(f, e);
  var t = p(f);

  function f() {
    module7.default(this, f);
    return t.apply(this, arguments);
  }

  return module8.default(f);
})(h);

exports.ZeroLengthMessage = V;
var W = {
  errCodes: {
    unknown: -1,
    unsupportedFeature: 1,
    securityViolation: 2,
    invalidParameter: 3,
    invalidParameterLength: 4,
    parameterOutOfBound: 5,
    radioDisabled: 6,
    tagConnectionLost: 100,
    retryExceeded: 101,
    tagResponseError: 102,
    sessionInvalidated: 103,
    tagNotConnected: 104,
    packetTooLong: 105,
    userCancel: 200,
    timeout: 201,
    unexpected: 202,
    systemBusy: 203,
    firstNdefInvalid: 204,
    invalidConfiguration: 300,
    tagNotWritable: 400,
    tagUpdateFailure: 401,
    tagSizeTooSmall: 402,
    zeroLengthMessage: 403,
  },
  parse: function (e) {
    if ('string' == typeof e) {
      var n = e.split(','),
        u = module23.default(n, 1)[0];

      if (u) {
        var o = u.split(':'),
          f = module23.default(o, 2),
          l = f[0],
          s = f[1];
        if ('NFCError' === l) return parseInt(s, 10);
      }
    } else if (e instanceof O) {
      console.warn('API Deprecated: please use NfcError.UserCancel instead');
      return W.errCodes.userCancel;
    }

    return W.errCodes.unknown;
  },
};

function _(e) {
  var n = e.split(','),
    u = module23.default(n, 1)[0];

  if (u) {
    var o = u.split(':'),
      f = module23.default(o, 2),
      l = f[0],
      s = f[1];

    if ('NFCError' === l) {
      var c = parseInt(s, 10);
      if (c === W.errCodes.unsupportedFeature) return new y();
      if (c === W.errCodes.securityViolation) return new C();
      if (c === W.errCodes.invalidParameter) return new w();
      if (c === W.errCodes.invalidParameterLength) return new N();
      if (c === W.errCodes.parameterOutOfBound) return new T();
      if (c === W.errCodes.tagConnectionLost) return new E();
      if (c === W.errCodes.retryExceeded) return new S();
      if (c === W.errCodes.tagResponseError) return new x();
      if (c === W.errCodes.sessionInvalidated) return new P();
      if (c === W.errCodes.tagNotConnected) return new L();
      if (c === W.errCodes.packetTooLong) return new b();
      if (c === W.errCodes.userCancel) return new O();
      if (c === W.errCodes.timeout) return new R();
      if (c === W.errCodes.unexpected) return new B();
      if (c === W.errCodes.systemBusy) return new F();
      if (c === W.errCodes.firstNdefInvalid) return new U();
      if (c === W.errCodes.invalidConfiguration) return new k();
      if (c === W.errCodes.tagNotWritable) return new z();
      if (c === W.errCodes.tagUpdateFailure) return new M();
      if (c === W.errCodes.tagSizeTooSmall) return new D();
      if (c === W.errCodes.zeroLengthMessage) return new V();
    }
  }

  return new h(e);
}

function A(e) {
  return 'cancelled' === e ? new O() : new h(e);
}

exports.NfcErrorIOS = W;
