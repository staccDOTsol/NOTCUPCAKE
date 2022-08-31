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
  module10.default(v, f);

  var s = v,
    l = c(),
    h = function () {
      var t,
        e = module15.default(s);

      if (l) {
        var n = module15.default(this).constructor;
        t = Reflect.construct(e, arguments, n);
      } else t = e.apply(this, arguments);

      return module12.default(this, t);
    };

  function v() {
    var e;
    module7.default(this, v);
    (e = h.call(this)).config = {};
    e.handlerName = 'LongPressGestureHandler';
    return e;
  }

  module8.default(v, [
    {
      key: 'minDuration',
      value: function (t) {
        this.config.minDurationMs = t;
        return this;
      },
    },
    {
      key: 'maxDistance',
      value: function (t) {
        this.config.maxDist = t;
        return this;
      },
    },
  ]);
  return v;
})(require('./508').BaseGesture);

exports.LongPressGesture = module508;
