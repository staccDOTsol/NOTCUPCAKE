var module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module86 = require('@babel/runtime/helpers/interopRequireDefault')(require('./86')),
  module10 = require('@babel/runtime/helpers/interopRequireDefault')(require('./10')),
  module12 = require('@babel/runtime/helpers/interopRequireDefault')(require('./12')),
  module15 = require('@babel/runtime/helpers/interopRequireDefault')(require('./15')),
  module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29'));

function u() {
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

function l(t, e) {
  'worklet';

  var module86;
  module86 =
    undefined === e
      ? {
          changeX: t.translationX,
          changeY: t.translationY,
        }
      : {
          changeX: t.translationX - e.translationX,
          changeY: t.translationY - e.translationY,
        };
  return module29.default({}, t, module86);
}

var module508 = (function (o) {
  module10.default(O, o);

  var module508 = O,
    v = u(),
    y = function () {
      var t,
        e = module15.default(module508);

      if (v) {
        var n = module15.default(this).constructor;
        t = Reflect.construct(e, arguments, n);
      } else t = e.apply(this, arguments);

      return module12.default(this, t);
    };

  function O() {
    var e;
    module7.default(this, O);
    (e = y.call(this)).config = {};
    e.handlerName = 'PanGestureHandler';
    return e;
  }

  module8.default(O, [
    {
      key: 'activeOffsetY',
      value: function (t) {
        if (Array.isArray(t)) {
          this.config.activeOffsetYStart = t[0];
          this.config.activeOffsetYEnd = t[1];
        } else if (t < 0) this.config.activeOffsetYStart = t;
        else this.config.activeOffsetYEnd = t;

        return this;
      },
    },
    {
      key: 'activeOffsetX',
      value: function (t) {
        if (Array.isArray(t)) {
          this.config.activeOffsetXStart = t[0];
          this.config.activeOffsetXEnd = t[1];
        } else if (t < 0) this.config.activeOffsetXStart = t;
        else this.config.activeOffsetXEnd = t;

        return this;
      },
    },
    {
      key: 'failOffsetY',
      value: function (t) {
        if (Array.isArray(t)) {
          this.config.failOffsetYStart = t[0];
          this.config.failOffsetYEnd = t[1];
        } else if (t < 0) this.config.failOffsetYStart = t;
        else this.config.failOffsetYEnd = t;

        return this;
      },
    },
    {
      key: 'failOffsetX',
      value: function (t) {
        if (Array.isArray(t)) {
          this.config.failOffsetXStart = t[0];
          this.config.failOffsetXEnd = t[1];
        } else if (t < 0) this.config.failOffsetXStart = t;
        else this.config.failOffsetXEnd = t;

        return this;
      },
    },
    {
      key: 'minPointers',
      value: function (t) {
        this.config.minPointers = t;
        return this;
      },
    },
    {
      key: 'maxPointers',
      value: function (t) {
        this.config.maxPointers = t;
        return this;
      },
    },
    {
      key: 'minDistance',
      value: function (t) {
        this.config.minDist = t;
        return this;
      },
    },
    {
      key: 'minVelocity',
      value: function (t) {
        this.config.minVelocity = t;
        return this;
      },
    },
    {
      key: 'minVelocityX',
      value: function (t) {
        this.config.minVelocityX = t;
        return this;
      },
    },
    {
      key: 'minVelocityY',
      value: function (t) {
        this.config.minVelocityY = t;
        return this;
      },
    },
    {
      key: 'averageTouches',
      value: function (t) {
        this.config.avgTouches = t;
        return this;
      },
    },
    {
      key: 'enableTrackpadTwoFingerGesture',
      value: function (t) {
        this.config.enableTrackpadTwoFingerGesture = t;
        return this;
      },
    },
    {
      key: 'activateAfterLongPress',
      value: function (t) {
        this.config.activateAfterLongPress = t;
        return this;
      },
    },
    {
      key: 'onChange',
      value: function (t) {
        this.handlers.changeEventCalculator = l;
        return module86.default(module15.default(O.prototype), 'onChange', this).call(this, t);
      },
    },
  ]);
  return O;
})(require('./508').ContinousBaseGesture);

exports.PanGesture = module508;
