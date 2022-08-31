var e,
  t,
  module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module10 = require('@babel/runtime/helpers/interopRequireDefault')(require('./10')),
  module12 = require('@babel/runtime/helpers/interopRequireDefault')(require('./12')),
  module15 = require('@babel/runtime/helpers/interopRequireDefault')(require('./15')),
  module35 = require('@babel/runtime/helpers/interopRequireDefault')(require('./35')),
  React = (function (e, t) {
    if (!t && e && e.__esModule) return e;
    if (null === e || ('object' != typeof e && 'function' != typeof e))
      return {
        default: e,
      };
    var n = g(t);
    if (n && n.has(e)) return n.get(e);
    var l = {},
      o = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var u in e)
      if ('default' !== u && Object.prototype.hasOwnProperty.call(e, u)) {
        var i = o ? Object.getOwnPropertyDescriptor(e, u) : null;
        if (i && (i.get || i.set)) Object.defineProperty(l, u, i);
        else l[u] = e[u];
      }

    l.default = e;
    if (n) n.set(e, l);
    return l;
  })(require('react')),
  module492 = require('@babel/runtime/helpers/interopRequireDefault')(require('./492')),
  ReactNative = require('react-native');

function g(e) {
  if ('function' != typeof WeakMap) return null;
  var t = new WeakMap(),
    n = new WeakMap();
  return (g = function (e) {
    return e ? n : t;
  })(e);
}

function E() {
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

function v(e, t) {
  var n = ('undefined' != typeof Symbol && e[Symbol.iterator]) || e['@@iterator'];
  if (n) return (n = n.call(e)).next.bind(n);

  if (Array.isArray(e) || (n = T(e)) || (t && e && 'number' == typeof e.length)) {
    if (n) e = n;
    var l = 0;
    return function () {
      return l >= e.length
        ? {
            done: true,
          }
        : {
            done: false,
            value: e[l++],
          };
    };
  }

  throw new TypeError('Invalid attempt to iterate non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.');
}

function T(e, t) {
  if (e) {
    if ('string' == typeof e) return C(e, t);
    var n = Object.prototype.toString.call(e).slice(8, -1);
    if ('Object' === n && e.constructor) n = e.constructor.name;
    return 'Map' === n || 'Set' === n ? Array.from(e) : 'Arguments' === n || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(n) ? C(e, t) : undefined;
  }
}

function C(e, t) {
  if (null == t || t > e.length) t = e.length;

  for (var n = 0, l = new Array(t); n < t; n++) l[n] = e[n];

  return l;
}

var module503 = [].concat(
  module35.default(require('./498').baseGestureHandlerWithMonitorProps),
  module35.default(require('./519').tapGestureHandlerProps),
  module35.default(require('./520').panGestureHandlerProps),
  module35.default(require('./520').panGestureHandlerCustomNativeProps),
  module35.default(require('./521').longPressGestureHandlerProps),
  module35.default(require('./504').forceTouchGestureHandlerProps),
  module35.default(require('./503').flingGestureHandlerProps)
);

function A(e) {
  return 'number' == typeof e ? e : e instanceof require('./508').BaseGesture ? e.handlerTag : null != (t = null == (n = e.current) ? undefined : n.handlerTag) ? t : -1;
  var t, n;
}

function L(e) {
  var t, n;
  return null !=
    (t =
      null == e
        ? undefined
        : null == (n = e.map(A))
        ? undefined
        : n.filter(function (e) {
            return e > 0;
          }))
    ? t
    : [];
}

function H(e) {
  for (var t, n = v(e.config); !(t = n()).done; ) {
    var l = t.value;
    module492.default.dropGestureHandler(l.handlerTag);

    require('./497').unregisterHandler(l.handlerTag, l.config.testId);
  }

  require('./498').scheduleFlushOperations();
}

function y(e) {
  if (!e.config.runOnJS) {
    var t = e.handlers.isWorklet.includes(false),
      n = e.handlers.isWorklet.includes(true);
    if (t && n)
      console.error(
        require('./493').tagMessage(
          "Some of the callbacks in the gesture are worklets and some are not. Either make sure that all calbacks are marked as 'worklet' if you wish to run them on the UI thread or use '.runOnJS(true)' modifier on the gesture explicitly to run all callbacks on the JS thread."
        )
      );
  }
}

function S(e) {
  var t = e.preparedGesture,
    n = e.gestureConfig,
    l = e.gesture,
    o = e.viewTag,
    u = e.webEventHandlersRef;
  if (t.firstExecution) t.firstExecution = false;
  else if (!(null == n)) n.initialize();
  setImmediate(function () {
    if (!(null == n)) n.prepare();
  });

  for (var i, s = v(l); !(i = s()).done; ) {
    var c = i.value;
    y(c);
    module492.default.createGestureHandler(c.handlerName, c.handlerTag, require('./498').filterConfig(c.config, module503));

    require('./497').registerHandler(c.handlerTag, c, c.config.testId);
  }

  setImmediate(function () {
    for (var e, t = v(l); !(e = t()).done; ) {
      var n = e.value,
        o = [];
      if (n.config.requireToFail) o = L(n.config.requireToFail);
      var u = [];
      if (n.config.simultaneousWith) u = L(n.config.simultaneousWith);
      module492.default.updateGestureHandler(
        n.handlerTag,
        require('./498').filterConfig(n.config, module503, {
          simultaneousHandlers: u,
          waitFor: o,
        })
      );
    }

    require('./498').scheduleFlushOperations();
  });
  t.config = l;

  for (var g, E = v(t.config); !(g = E()).done; ) {
    var T = g.value,
      module496 = T.shouldUseReanimated ? require('./496').ActionType.REANIMATED_WORKLET : require('./496').ActionType.JS_FUNCTION_NEW_API;
    if ('web' === ReactNative.Platform.OS) module492.default.attachGestureHandler(T.handlerTag, o, require('./496').ActionType.JS_FUNCTION_OLD_API, u);
    else module492.default.attachGestureHandler(T.handlerTag, o, module496);
  }

  if (t.animatedHandlers) {
    t.animatedHandlers.value = l
      .filter(function (e) {
        return e.shouldUseReanimated;
      })
      .map(function (e) {
        return e.handlers;
      });
  }
}

function _(e, t, n) {
  if (!(null == t)) t.prepare();

  for (var l = 0; l < n.length; l++) {
    var o = e.config[l];
    y(o);

    if (n[l].handlerTag !== o.handlerTag) {
      n[l].handlerTag = o.handlerTag;
      n[l].handlers.handlerTag = o.handlerTag;
    }
  }

  setImmediate(function () {
    for (var t = 0; t < n.length; t++) {
      var l = e.config[t];
      l.config = n[t].config;
      l.handlers = n[t].handlers;
      var o = L(l.config.requireToFail),
        u = L(l.config.simultaneousWith);
      module492.default.updateGestureHandler(
        l.handlerTag,
        require('./498').filterConfig(l.config, module503, {
          simultaneousHandlers: u,
          waitFor: o,
        })
      );

      require('./497').registerHandler(l.handlerTag, l, l.config.testId);
    }

    if (e.animatedHandlers) {
      var i,
        s = null != (i = e.animatedHandlers.value) ? i : [],
        c = e.config
          .filter(function (e) {
            return e.shouldUseReanimated;
          })
          .map(function (e) {
            return e.handlers;
          }),
        h = s.length !== c.length;
      if (!h)
        for (var g = 0; g < c.length; g++)
          if (c[g].gestureId !== s[g].gestureId) {
            h = true;
            break;
          }
      if (h) e.animatedHandlers.value = c;
    }

    require('./498').scheduleFlushOperations();
  });
}

function P(e, t) {
  if (t.length !== e.config.length) return true;

  for (var n = 0; n < t.length; n++) if (t[n].handlerName !== e.config[n].handlerName || t[n].shouldUseReanimated !== e.config[n].shouldUseReanimated) return true;

  return false;
}

function N(e) {
  'worklet';

  return null != e.oldState;
}

function w(e) {
  'worklet';

  return null != e.eventType;
}

function O(e, t) {
  'worklet';

  switch (e) {
    case require('./508').CALLBACK_TYPE.BEGAN:
      return t.onBegin;

    case require('./508').CALLBACK_TYPE.START:
      return t.onStart;

    case require('./508').CALLBACK_TYPE.UPDATE:
      return t.onUpdate;

    case require('./508').CALLBACK_TYPE.CHANGE:
      return t.onChange;

    case require('./508').CALLBACK_TYPE.END:
      return t.onEnd;

    case require('./508').CALLBACK_TYPE.FINALIZE:
      return t.onFinalize;

    case require('./508').CALLBACK_TYPE.TOUCHES_DOWN:
      return t.onTouchesDown;

    case require('./508').CALLBACK_TYPE.TOUCHES_MOVE:
      return t.onTouchesMove;

    case require('./508').CALLBACK_TYPE.TOUCHES_UP:
      return t.onTouchesUp;

    case require('./508').CALLBACK_TYPE.TOUCHES_CANCELLED:
      return t.onTouchesCancelled;
  }
}

function b(e) {
  'worklet';

  switch (e) {
    case require('./522').TouchEventType.TOUCHES_DOWN:
      return require('./508').CALLBACK_TYPE.TOUCHES_DOWN;

    case require('./522').TouchEventType.TOUCHES_MOVE:
      return require('./508').CALLBACK_TYPE.TOUCHES_MOVE;

    case require('./522').TouchEventType.TOUCHES_UP:
      return require('./508').CALLBACK_TYPE.TOUCHES_UP;

    case require('./522').TouchEventType.TOUCHES_CANCELLED:
      return require('./508').CALLBACK_TYPE.TOUCHES_CANCELLED;
  }

  return require('./508').CALLBACK_TYPE.UNDEFINED;
}

function G(e, t, n) {
  'worklet';

  var l = O(e, t);

  if (t.isWorklet[e]) {
    for (var o = arguments.length, u = new Array(o > 3 ? o - 3 : 0), i = 3; i < o; i++) u[i - 3] = arguments[i];

    if (!(null == l)) l.apply(undefined, [n].concat(u));
  } else l && console.warn(require('./493').tagMessage('Animated gesture callback must be a worklet'));
}

function R(e, t) {
  if (require('./523').Reanimated) {
    var module508 = require('./523').Reanimated.useSharedValue(null),
      module508 = require('./523').Reanimated.useSharedValue([]),
      o = [],
      module508 = require('./523').Reanimated.useEvent(
        function (e) {
          'worklet';

          var t = module508.value;
          if (t)
            for (var u = 0; u < t.length; u++) {
              var i = t[u];
              if (e.handlerTag === i.handlerTag)
                N(e)
                  ? e.oldState === require('./495').State.UNDETERMINED && e.state === require('./495').State.BEGAN
                    ? G(require('./508').CALLBACK_TYPE.BEGAN, i, e)
                    : (e.oldState !== require('./495').State.BEGAN && e.oldState !== require('./495').State.UNDETERMINED) || e.state !== require('./495').State.ACTIVE
                    ? e.oldState !== e.state && e.state === require('./495').State.END
                      ? (e.oldState === require('./495').State.ACTIVE && G(require('./508').CALLBACK_TYPE.END, i, e, true), G(require('./508').CALLBACK_TYPE.FINALIZE, i, e, true))
                      : (e.state !== require('./495').State.FAILED && e.state !== require('./495').State.CANCELLED) ||
                        e.state === e.oldState ||
                        (e.oldState === require('./495').State.ACTIVE && G(require('./508').CALLBACK_TYPE.END, i, e, false),
                        G(require('./508').CALLBACK_TYPE.FINALIZE, i, e, false))
                    : (G(require('./508').CALLBACK_TYPE.START, i, e), (module508.value[i.handlerTag] = undefined))
                  : w(e)
                  ? (o[u] || (o[u] = require('./524').GestureStateManager.create(e.handlerTag)),
                    e.eventType !== require('./522').TouchEventType.UNDETERMINED && G(b(e.eventType), i, e, o[u]))
                  : (G(require('./508').CALLBACK_TYPE.UPDATE, i, e),
                    i.onChange &&
                      i.changeEventCalculator &&
                      (G(require('./508').CALLBACK_TYPE.CHANGE, i, null == i.changeEventCalculator ? undefined : i.changeEventCalculator(e, module508.value[i.handlerTag])),
                      (module508.value[i.handlerTag] = e)));
            }
        },
        ['onGestureHandlerStateChange', 'onGestureHandlerEvent'],
        t
      );

    e.animatedEventHandler = module508;
    e.animatedHandlers = module508;
  }
}

exports.GestureDetector = function (e) {
  var t,
    n = e.gesture,
    l = null != (t = null == n ? undefined : null == n.toGestureArray ? undefined : n.toGestureArray()) ? t : [],
    o = l.some(function (e) {
      return e.shouldUseReanimated;
    }),
    u = React.useRef(null),
    i = React.useRef(true),
    module525 = React.useRef({
      onGestureHandlerEvent: function (e) {
        require('./525').onGestureHandlerEvent(e.nativeEvent);
      },
    }),
    f = React.default.useRef({
      config: l,
      animatedEventHandler: null,
      animatedHandlers: null,
      firstExecution: true,
      useReanimatedHook: o,
    }).current;
  if (o !== f.useReanimatedHook) throw new Error(require('./493').tagMessage('You cannot change the thread the callbacks are ran on while the app is running'));
  var h = f.firstExecution || P(f, l);
  if (f.firstExecution) null == n || null == n.initialize || n.initialize();
  if (o) R(f, h);
  React.useEffect(function () {
    i.current = true;

    var module498 = require('./498').findNodeHandle(u.current);

    S({
      preparedGesture: f,
      gestureConfig: n,
      gesture: l,
      viewTag: module498,
      webEventHandlersRef: module525,
    });
    return function () {
      H(f);
    };
  }, []);
  React.useEffect(
    function () {
      if (i.current) i.current = false;
      else {
        var module498 = require('./498').findNodeHandle(u.current);

        if (P(f, l)) {
          H(f);
          S({
            preparedGesture: f,
            gestureConfig: n,
            gesture: l,
            viewTag: module498,
            webEventHandlersRef: module525,
          });
        } else _(f, n, l);
      }
    },
    [e]
  );

  var module493 = function (e) {
    if (null !== e && ((u.current = e), require('./493').isFabric())) {
      var module526 = require('./526').getShadowNodeFromRef(e);

      if (false === globals.isFormsStackingContext(module526))
        console.error(
          require('./493').tagMessage(
            'GestureDetector has received a child that may get view-flattened. \nTo prevent it from misbehaving you need to wrap the child with a `<View collapsable={false}>`.'
          )
        );
    }
  };

  return o
    ? React.default.createElement(
        module523,
        {
          ref: module493,
          onGestureHandlerEvent: f.animatedEventHandler,
        },
        e.children
      )
    : React.default.createElement(
        U,
        {
          ref: module493,
        },
        e.children
      );
};

var U = (function (e) {
    module10.default(h, e);

    var t = h,
      module35 = E(),
      f = function () {
        var e,
          n = module15.default(t);

        if (module35) {
          var l = module15.default(this).constructor;
          e = Reflect.construct(n, arguments, l);
        } else e = n.apply(this, arguments);

        return module12.default(this, e);
      };

    function h() {
      module7.default(this, h);
      return f.apply(this, arguments);
    }

    module8.default(h, [
      {
        key: 'render',
        value: function () {
          var e = React.default.Children.only(this.props.children);
          return React.default.cloneElement(
            e,
            {
              collapsable: false,
            },
            e.props.children
          );
        },
      },
    ]);
    return h;
  })(React.default.Component),
  module523 = null != (e = null == require('./523').Reanimated ? undefined : null == (t = require('./523').Reanimated.default) ? undefined : t.createAnimatedComponent(U)) ? e : U;
