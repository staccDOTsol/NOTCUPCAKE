var module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module10 = require('@babel/runtime/helpers/interopRequireDefault')(require('./10')),
  module12 = require('@babel/runtime/helpers/interopRequireDefault')(require('./12')),
  module15 = require('@babel/runtime/helpers/interopRequireDefault')(require('./15'));

function o() {
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

var module508 = (function (c) {
  module10.default(v, c);

  var s = v,
    l = o(),
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
    e.handlerName = 'TapGestureHandler';
    return e;
  }

  module8.default(v, [
    {
      key: 'minPointers',
      value: function (t) {
        this.config.minPointers = t;
        return this;
      },
    },
    {
      key: 'numberOfTaps',
      value: function (t) {
        this.config.numberOfTaps = t;
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
    {
      key: 'maxDuration',
      value: function (t) {
        this.config.maxDurationMs = t;
        return this;
      },
    },
    {
      key: 'maxDelay',
      value: function (t) {
        this.config.maxDelayMs = t;
        return this;
      },
    },
    {
      key: 'maxDeltaX',
      value: function (t) {
        this.config.maxDeltaX = t;
        return this;
      },
    },
    {
      key: 'maxDeltaY',
      value: function (t) {
        this.config.maxDeltaY = t;
        return this;
      },
    },
  ]);
  return v;
})(require('./508').BaseGesture);

exports.TapGesture = module508;
