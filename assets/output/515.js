var module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module10 = require('@babel/runtime/helpers/interopRequireDefault')(require('./10')),
  module12 = require('@babel/runtime/helpers/interopRequireDefault')(require('./12')),
  module15 = require('@babel/runtime/helpers/interopRequireDefault')(require('./15'));

function c() {
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

var module508 = (function (f) {
  module10.default(h, f);

  var l = h,
    s = c(),
    v = function () {
      var t,
        e = module15.default(l);

      if (s) {
        var n = module15.default(this).constructor;
        t = Reflect.construct(e, arguments, n);
      } else t = e.apply(this, arguments);

      return module12.default(this, t);
    };

  function h() {
    var e;
    module7.default(this, h);
    (e = v.call(this)).config = {};
    e.handlerName = 'NativeViewGestureHandler';
    return e;
  }

  module8.default(h, [
    {
      key: 'shouldActivateOnStart',
      value: function (t) {
        this.config.shouldActivateOnStart = t;
        return this;
      },
    },
    {
      key: 'disallowInterruption',
      value: function (t) {
        this.config.disallowInterruption = t;
        return this;
      },
    },
  ]);
  return h;
})(require('./508').BaseGesture);

exports.NativeGesture = module508;
