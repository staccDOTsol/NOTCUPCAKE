var module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module86 = require('@babel/runtime/helpers/interopRequireDefault')(require('./86')),
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

function f(t, e) {
  'worklet';

  return t;
}

var module508 = (function (s) {
  module10.default(y, s);

  var h = y,
    v = c(),
    p = function () {
      var t,
        e = module15.default(h);

      if (v) {
        var n = module15.default(this).constructor;
        t = Reflect.construct(e, arguments, n);
      } else t = e.apply(this, arguments);

      return module12.default(this, t);
    };

  function y() {
    var e;
    module7.default(this, y);
    (e = p.call(this)).handlerName = 'ManualGestureHandler';
    return e;
  }

  module8.default(y, [
    {
      key: 'onChange',
      value: function (t) {
        this.handlers.changeEventCalculator = f;
        return module86.default(module15.default(y.prototype), 'onChange', this).call(this, t);
      },
    },
  ]);
  return y;
})(require('./508').ContinousBaseGesture);

exports.ManualGesture = module508;
