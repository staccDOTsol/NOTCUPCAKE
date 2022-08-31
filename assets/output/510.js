var module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module86 = require('@babel/runtime/helpers/interopRequireDefault')(require('./86')),
  module10 = require('@babel/runtime/helpers/interopRequireDefault')(require('./10')),
  module12 = require('@babel/runtime/helpers/interopRequireDefault')(require('./12')),
  module15 = require('@babel/runtime/helpers/interopRequireDefault')(require('./15')),
  module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29'));

function f() {
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

function s(e, t) {
  'worklet';

  var module86;
  module86 =
    undefined === t
      ? {
          scaleChange: e.scale,
        }
      : {
          scaleChange: e.scale / t.scale,
        };
  return module29.default({}, e, module86);
}

var module508 = (function (o) {
  module10.default(y, o);

  var module508 = y,
    v = f(),
    p = function () {
      var e,
        t = module15.default(module508);

      if (v) {
        var n = module15.default(this).constructor;
        e = Reflect.construct(t, arguments, n);
      } else e = t.apply(this, arguments);

      return module12.default(this, e);
    };

  function y() {
    var t;
    module7.default(this, y);
    (t = p.call(this)).handlerName = 'PinchGestureHandler';
    return t;
  }

  module8.default(y, [
    {
      key: 'onChange',
      value: function (e) {
        this.handlers.changeEventCalculator = s;
        return module86.default(module15.default(y.prototype), 'onChange', this).call(this, e);
      },
    },
  ]);
  return y;
})(require('./508').ContinousBaseGesture);

exports.PinchGesture = module508;
