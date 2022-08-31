var module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module10 = require('@babel/runtime/helpers/interopRequireDefault')(require('./10')),
  module12 = require('@babel/runtime/helpers/interopRequireDefault')(require('./12')),
  module15 = require('@babel/runtime/helpers/interopRequireDefault')(require('./15')),
  module1008 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1008'));

function l() {
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

var module1009 = (function (f) {
  module10.default(_, f);

  var s = _,
    v = l(),
    h = function () {
      var t,
        e = module15.default(s);

      if (v) {
        var n = module15.default(this).constructor;
        t = Reflect.construct(e, arguments, n);
      } else t = e.apply(this, arguments);

      return module12.default(this, t);
    };

  function _() {
    var t = arguments.length > 0 && undefined !== arguments[0] ? arguments[0] : 'ws://localhost:8080',
      n = arguments.length > 1 && undefined !== arguments[1] ? arguments[1] : {},
      c = n.autoconnect,
      o = undefined === c || c,
      l = n.reconnect,
      f = undefined === l || l,
      s = n.reconnect_interval,
      v = undefined === s ? 1e3 : s,
      p = n.max_reconnects,
      y = undefined === p ? 5 : p,
      R = arguments.length > 2 ? arguments[2] : undefined;
    module7.default(this, _);
    return h.call(
      this,
      module1008.default,
      t,
      {
        autoconnect: o,
        reconnect: f,
        reconnect_interval: v,
        max_reconnects: y,
      },
      R
    );
  }

  return module8.default(_);
})(require('@babel/runtime/helpers/interopRequireDefault')(require('./1009')).default);

exports.Client = module1009;
