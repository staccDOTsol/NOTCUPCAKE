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
  } catch (t) {
    return false;
  }
}

function s(t, e) {
  'worklet';

  var module86;
  module86 =
    undefined === e
      ? {
          rotationChange: t.rotation,
        }
      : {
          rotationChange: t.rotation - e.rotation,
        };
  return module29.default({}, t, module86);
}

var module508 = (function (c) {
  module10.default(y, c);

  var module508 = y,
    v = f(),
    p = function () {
      var t,
        e = module15.default(module508);

      if (v) {
        var n = module15.default(this).constructor;
        t = Reflect.construct(e, arguments, n);
      } else t = e.apply(this, arguments);

      return module12.default(this, t);
    };

  function y() {
    var e;
    module7.default(this, y);
    (e = p.call(this)).handlerName = 'RotationGestureHandler';
    return e;
  }

  module8.default(y, [
    {
      key: 'onChange',
      value: function (t) {
        this.handlers.changeEventCalculator = s;
        return module86.default(module15.default(y.prototype), 'onChange', this).call(this, t);
      },
    },
  ]);
  return y;
})(require('./508').ContinousBaseGesture);

exports.RotationGesture = module508;
