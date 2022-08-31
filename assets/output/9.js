var module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module10 = require('@babel/runtime/helpers/interopRequireDefault')(require('./10')),
  module12 = require('@babel/runtime/helpers/interopRequireDefault')(require('./12')),
  module15 = require('@babel/runtime/helpers/interopRequireDefault')(require('./15'));

function f() {
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

var module16 = (function (o) {
  module10.default(h, o);

  var l = h,
    s = f(),
    v = function () {
      var t,
        e = module15.default(l);

      if (s) {
        var n = module15.default(this).constructor;
        t = Reflect.construct(e, arguments, n);
      } else t = e.apply(this, arguments);

      return module12.default(this, t);
    };

  function h(e, n, u, c) {
    var f;
    module7.default(this, h);
    (f = v.call(this, n)).emitter = e;
    f.listener = u;
    f.context = c;
    return f;
  }

  module8.default(h, [
    {
      key: 'remove',
      value: function () {
        this.emitter.__removeSubscription(this);
      },
    },
  ]);
  return h;
})(require('@babel/runtime/helpers/interopRequireDefault')(require('./16')).default);

module.exports = module16;
