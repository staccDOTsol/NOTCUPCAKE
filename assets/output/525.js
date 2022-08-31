exports.onGestureHandlerEvent = E;

exports.startListening = function () {
  v();
  t = ReactNative.DeviceEventEmitter.addListener('onGestureHandlerEvent', E);
  l = ReactNative.DeviceEventEmitter.addListener('onGestureHandlerStateChange', E);
};

exports.stopListening = v;

var ReactNative = require('react-native'),
  t = null,
  l = null,
  module493 = require('./493').tagMessage('You have to use react-native-reanimated in order to control the state of the gesture.'),
  s = {
    begin: function () {
      console.warn(module493);
    },
    activate: function () {
      console.warn(module493);
    },
    end: function () {
      console.warn(module493);
    },
    fail: function () {
      console.warn(module493);
    },
  },
  u = [];

function h(n) {
  return null != n.oldState;
}

function c(n) {
  return null != n.eventType;
}

function E(n) {
  var t,
    l,
    o,
    E,
    module497 = require('./497').findHandler(n.handlerTag);

  if (module497) {
    if (h(n))
      n.oldState === require('./495').State.UNDETERMINED && n.state === require('./495').State.BEGAN
        ? null == module497.handlers.onBegin || module497.handlers.onBegin(n)
        : (n.oldState !== require('./495').State.BEGAN && n.oldState !== require('./495').State.UNDETERMINED) || n.state !== require('./495').State.ACTIVE
        ? n.oldState !== n.state && n.state === require('./495').State.END
          ? (n.oldState === require('./495').State.ACTIVE && (null == module497.handlers.onEnd || module497.handlers.onEnd(n, true)),
            null == module497.handlers.onFinalize || module497.handlers.onFinalize(n, true),
            (u[module497.handlers.handlerTag] = undefined))
          : (n.state !== require('./495').State.FAILED && n.state !== require('./495').State.CANCELLED) ||
            n.oldState === n.state ||
            (n.oldState === require('./495').State.ACTIVE && (null == module497.handlers.onEnd || module497.handlers.onEnd(n, false)),
            null == module497.handlers.onFinalize || module497.handlers.onFinalize(n, false),
            (u[module497.handlers.handlerTag] = undefined))
        : (null == module497.handlers.onStart || module497.handlers.onStart(n), (u[module497.handlers.handlerTag] = n));
    else if (c(n))
      switch (n.eventType) {
        case require('./522').TouchEventType.TOUCHES_DOWN:
          if (!(null == (t = module497.handlers) || null == t.onTouchesDown)) t.onTouchesDown(n, s);
          break;

        case require('./522').TouchEventType.TOUCHES_MOVE:
          if (!(null == (l = module497.handlers) || null == l.onTouchesMove)) l.onTouchesMove(n, s);
          break;

        case require('./522').TouchEventType.TOUCHES_UP:
          if (!(null == (o = module497.handlers) || null == o.onTouchesUp)) o.onTouchesUp(n, s);
          break;

        case require('./522').TouchEventType.TOUCHES_CANCELLED:
          if (!(null == (E = module497.handlers) || null == E.onTouchesCancelled)) E.onTouchesCancelled(n, s);
      }
    else {
      if (!(null == module497.handlers.onUpdate)) module497.handlers.onUpdate(n);

      if (module497.handlers.onChange && module497.handlers.changeEventCalculator) {
        if (!(null == module497.handlers.onChange))
          module497.handlers.onChange(null == module497.handlers.changeEventCalculator ? undefined : module497.handlers.changeEventCalculator(n, u[module497.handlers.handlerTag]));
        u[module497.handlers.handlerTag] = n;
      }
    }
  } else {
    var module497 = require('./497').findOldGestureHandler(n.handlerTag);

    if (module497) {
      var S = {
        nativeEvent: n,
      };
      return void (h(n) ? module497.onGestureStateChange(S) : module497.onGestureEvent(S));
    }
  }
}

function v() {
  if (t) {
    t.remove();
    t = null;
  }

  if (l) {
    l.remove();
    l = null;
  }
}
