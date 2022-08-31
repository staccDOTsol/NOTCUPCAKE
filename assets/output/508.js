var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module10 = require('@babel/runtime/helpers/interopRequireDefault')(require('./10')),
  module12 = require('@babel/runtime/helpers/interopRequireDefault')(require('./12')),
  module15 = require('@babel/runtime/helpers/interopRequireDefault')(require('./15')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7'));

function h(e) {
  var t = l();
  return function () {
    var u,
      o = module15.default(e);

    if (t) {
      var h = module15.default(this).constructor;
      u = Reflect.construct(o, arguments, h);
    } else u = o.apply(this, arguments);

    return module12.default(this, u);
  };
}

function l() {
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

var c = {
  UNDEFINED: 0,
  BEGAN: 1,
  START: 2,
  UPDATE: 3,
  CHANGE: 4,
  END: 5,
  FINALIZE: 6,
  TOUCHES_DOWN: 7,
  TOUCHES_MOVE: 8,
  TOUCHES_UP: 9,
  TOUCHES_CANCELLED: 10,
};
exports.CALLBACK_TYPE = c;
var f = module8.default(function e() {
  module7.default(this, e);
});
exports.Gesture = f;

var v = 0,
  module493 = (function (n) {
    module10.default(l, n);
    var s = h(l);

    function l() {
      var e;
      module7.default(this, l);
      (e = s.call(this)).gestureId = -1;
      e.handlerTag = -1;
      e.handlerName = '';
      e.config = {};
      e.handlers = {
        gestureId: -1,
        handlerTag: -1,
        isWorklet: [],
      };
      e.gestureId = v++;
      e.handlers.gestureId = e.gestureId;
      return e;
    }

    module8.default(l, [
      {
        key: 'addDependency',
        value: function (e, t) {
          var n = this.config[e];
          this.config[e] = n ? Array().concat(n, t) : [t];
        },
      },
      {
        key: 'withRef',
        value: function (e) {
          this.config.ref = e;
          return this;
        },
      },
      {
        key: 'isWorklet',
        value: function (e) {
          return undefined !== e.__workletHash;
        },
      },
      {
        key: 'onBegin',
        value: function (e) {
          this.handlers.onBegin = e;
          this.handlers.isWorklet[c.BEGAN] = this.isWorklet(e);
          return this;
        },
      },
      {
        key: 'onStart',
        value: function (e) {
          this.handlers.onStart = e;
          this.handlers.isWorklet[c.START] = this.isWorklet(e);
          return this;
        },
      },
      {
        key: 'onEnd',
        value: function (e) {
          this.handlers.onEnd = e;
          this.handlers.isWorklet[c.END] = this.isWorklet(e);
          return this;
        },
      },
      {
        key: 'onFinalize',
        value: function (e) {
          this.handlers.onFinalize = e;
          this.handlers.isWorklet[c.FINALIZE] = this.isWorklet(e);
          return this;
        },
      },
      {
        key: 'onTouchesDown',
        value: function (e) {
          this.config.needsPointerData = true;
          this.handlers.onTouchesDown = e;
          this.handlers.isWorklet[c.TOUCHES_DOWN] = this.isWorklet(e);
          return this;
        },
      },
      {
        key: 'onTouchesMove',
        value: function (e) {
          this.config.needsPointerData = true;
          this.handlers.onTouchesMove = e;
          this.handlers.isWorklet[c.TOUCHES_MOVE] = this.isWorklet(e);
          return this;
        },
      },
      {
        key: 'onTouchesUp',
        value: function (e) {
          this.config.needsPointerData = true;
          this.handlers.onTouchesUp = e;
          this.handlers.isWorklet[c.TOUCHES_UP] = this.isWorklet(e);
          return this;
        },
      },
      {
        key: 'onTouchesCancelled',
        value: function (e) {
          this.config.needsPointerData = true;
          this.handlers.onTouchesCancelled = e;
          this.handlers.isWorklet[c.TOUCHES_CANCELLED] = this.isWorklet(e);
          return this;
        },
      },
      {
        key: 'enabled',
        value: function (e) {
          this.config.enabled = e;
          return this;
        },
      },
      {
        key: 'shouldCancelWhenOutside',
        value: function (e) {
          this.config.shouldCancelWhenOutside = e;
          return this;
        },
      },
      {
        key: 'hitSlop',
        value: function (e) {
          this.config.hitSlop = e;
          return this;
        },
      },
      {
        key: 'runOnJS',
        value: function (e) {
          this.config.runOnJS = e;
          return this;
        },
      },
      {
        key: 'simultaneousWithExternalGesture',
        value: function (...args) {
          for (var s = 0, u = args; s < u.length; s++) {
            var o = u[s];
            this.addDependency('simultaneousWith', o);
          }

          return this;
        },
      },
      {
        key: 'requireExternalGestureToFail',
        value: function (...args) {
          for (var s = 0, u = args; s < u.length; s++) {
            var o = u[s];
            this.addDependency('requireToFail', o);
          }

          return this;
        },
      },
      {
        key: 'withTestId',
        value: function (e) {
          this.config.testId = e;
          return this;
        },
      },
      {
        key: 'cancelsTouchesInView',
        value: function (e) {
          this.config.cancelsTouchesInView = e;
          return this;
        },
      },
      {
        key: 'initialize',
        value: function () {
          this.handlerTag = require('./497').getNextHandlerTag();
          this.handlers = module29.default({}, this.handlers, {
            handlerTag: this.handlerTag,
          });
          if (this.config.ref) this.config.ref.current = this;
        },
      },
      {
        key: 'toGestureArray',
        value: function () {
          return [this];
        },
      },
      {
        key: 'prepare',
        value: function () {},
      },
      {
        key: 'shouldUseReanimated',
        get: function () {
          return true !== this.config.runOnJS && !this.handlers.isWorklet.includes(false) && !require('./493').isRemoteDebuggingEnabled();
        },
      },
    ]);
    return l;
  })(f);

exports.BaseGesture = module493;

var y = (function (e) {
  module10.default(s, e);
  var n = h(s);

  function s() {
    module7.default(this, s);
    return n.apply(this, arguments);
  }

  module8.default(s, [
    {
      key: 'onUpdate',
      value: function (e) {
        this.handlers.onUpdate = e;
        this.handlers.isWorklet[c.UPDATE] = this.isWorklet(e);
        return this;
      },
    },
    {
      key: 'onChange',
      value: function (e) {
        this.handlers.onChange = e;
        this.handlers.isWorklet[c.CHANGE] = this.isWorklet(e);
        return this;
      },
    },
    {
      key: 'manualActivation',
      value: function (e) {
        this.config.manualActivation = e;
        return this;
      },
    },
  ]);
  return s;
})(module493);

exports.ContinousBaseGesture = y;
