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
  } catch (e) {
    return false;
  }
}

var module508 = (function (o) {
  module10.default(v, o);

  var l = v,
    s = f(),
    h = function () {
      var e,
        t = module15.default(l);

      if (s) {
        var n = module15.default(this).constructor;
        e = Reflect.construct(t, arguments, n);
      } else e = t.apply(this, arguments);

      return module12.default(this, e);
    };

  function v() {
    var t;
    module7.default(this, v);
    (t = h.call(this)).config = {};
    t.handlerName = 'FlingGestureHandler';
    return t;
  }

  module8.default(v, [
    {
      key: 'numberOfPointers',
      value: function (e) {
        this.config.numberOfPointers = e;
        return this;
      },
    },
    {
      key: 'direction',
      value: function (e) {
        this.config.direction = e;
        return this;
      },
    },
  ]);
  return v;
})(require('./508').BaseGesture);

exports.FlingGesture = module508;
