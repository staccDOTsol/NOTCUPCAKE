exports.default = function (e) {
  var t = e.name,
    p = e.allowedProps,
    y = undefined === p ? [] : p,
    H = e.config,
    T = undefined === H ? {} : H,
    C = e.transformProps,
    w = e.customNativeProps,
    S = undefined === w ? [] : w,
    module493 = (function (e) {
      module10.default(module496, e);

      var p = module496,
        H = G(),
        w = function () {
          var e,
            t = module15.default(p);

          if (H) {
            var n = module15.default(this).constructor;
            e = Reflect.construct(t, arguments, n);
          } else e = t.apply(this, arguments);

          return module12.default(this, e);
        };

      function module496(e) {
        var n;

        if (
          (module7.default(this, module496),
          ((n = w.call(this, e)).updateEnqueued = null),
          (n.onGestureHandlerEvent = function (e) {
            if (e.nativeEvent.handlerTag === n.handlerTag) {
              if ('function' == typeof n.props.onGestureEvent) null == n.props.onGestureEvent || n.props.onGestureEvent(e);
            } else if (!(null == n.props.onGestureHandlerEvent)) n.props.onGestureHandlerEvent(e);
          }),
          (n.onGestureHandlerStateChange = function (e) {
            if (e.nativeEvent.handlerTag === n.handlerTag) {
              if ('function' == typeof n.props.onHandlerStateChange) null == n.props.onHandlerStateChange || n.props.onHandlerStateChange(e);
              var t = e.nativeEvent.state,
                r = A[t],
                o = r && n.props[r];
              if (o && 'function' == typeof o) o(e);
            } else null == n.props.onGestureHandlerStateChange || n.props.onGestureHandlerStateChange(e);
          }),
          (n.refHandler = function (e) {
            n.viewNode = e;
            var t = React.Children.only(n.props.children),
              r = t.ref;
            if (null !== r) 'function' == typeof r ? r(e) : (r.current = e);
          }),
          (n.createGestureHandler = function (e) {
            n.config = e;
            module492.default.createGestureHandler(t, n.handlerTag, e);
          }),
          (n.attachGestureHandler = function (e) {
            if (((n.viewTag = e), 'web' === ReactNative.Platform.OS))
              module492.default.attachGestureHandler(n.handlerTag, e, require('./496').ActionType.JS_FUNCTION_OLD_API, n.propsRef);
            else {
              require('./497').registerOldGestureHandler(n.handlerTag, {
                onGestureEvent: n.onGestureHandlerEvent,
                onGestureStateChange: n.onGestureHandlerStateChange,
              });

              var module496 =
                null != (r = n.props) && r.onGestureEvent && 'current' in n.props.onGestureEvent
                  ? require('./496').ActionType.REANIMATED_WORKLET
                  : null != (o = n.props) && o.onGestureEvent && '__isNative' in n.props.onGestureEvent
                  ? require('./496').ActionType.NATIVE_ANIMATED_EVENT
                  : require('./496').ActionType.JS_FUNCTION_OLD_API;
              module492.default.attachGestureHandler(n.handlerTag, e, module496);
            }
            var r, o;

            require('./498').scheduleFlushOperations();
          }),
          (n.updateGestureHandler = function (e) {
            n.config = e;
            module492.default.updateGestureHandler(n.handlerTag, e);

            require('./498').scheduleFlushOperations();
          }),
          (n.handlerTag = require('./497').getNextHandlerTag()),
          (n.config = {}),
          (n.propsRef = React.createRef()),
          (n.state = {
            allowTouches: O,
          }),
          e.id)
        ) {
          if (undefined !== require('./497').handlerIDToTag[e.id]) throw new Error('Handler with ID "' + e.id + '" already registered');
          require('./497').handlerIDToTag[e.id] = n.handlerTag;
        }

        return n;
      }

      module8.default(module496, [
        {
          key: 'componentDidMount',
          value: function () {
            var e = this,
              t = this.props;
            if (I(t))
              this.updateEnqueued = setImmediate(function () {
                e.updateEnqueued = null;
                e.update(R);
              });
            this.createGestureHandler(require('./498').filterConfig(C ? C(this.props) : this.props, [].concat(module35.default(y), module35.default(S)), T));
            this.attachGestureHandler(require('./498').findNodeHandle(this.viewNode));
          },
        },
        {
          key: 'componentDidUpdate',
          value: function () {
            var module498 = require('./498').findNodeHandle(this.viewNode);

            if (this.viewTag !== module498) this.attachGestureHandler(module498);
            this.update(R);
          },
        },
        {
          key: 'componentWillUnmount',
          value: function () {
            var e;
            if (!(null == (e = this.inspectorToggleListener))) e.remove();
            module492.default.dropGestureHandler(this.handlerTag);

            require('./498').scheduleFlushOperations();

            if (this.updateEnqueued) clearImmediate(this.updateEnqueued);
            var t = this.props.id;
            if (t) delete require('./497').handlerIDToTag[t];
          },
        },
        {
          key: 'update',
          value: function (e) {
            var t = this,
              r = this.props;
            if (I(r) && e > 0)
              this.updateEnqueued = setImmediate(function () {
                t.updateEnqueued = null;
                t.update(e - 1);
              });
            else {
              var module498 = require('./498').filterConfig(C ? C(this.props) : this.props, [].concat(module35.default(y), module35.default(S)), T);

              if (!module403.default(this.config, module498)) this.updateGestureHandler(module498);
            }
          },
        },
        {
          key: 'setNativeProps',
          value: function (e) {
            var t = module29.default({}, this.props, e),
              module498 = require('./498').filterConfig(C ? C(t) : t, [].concat(module35.default(y), module35.default(S)), T);

            this.updateGestureHandler(module498);
          },
        },
        {
          key: 'render',
          value: function () {
            var e,
              n = this.onGestureHandlerEvent,
              r = this.props,
              o = r.onGestureEvent,
              u = r.onGestureHandlerEvent;

            if (o && 'function' != typeof o) {
              if (u) throw new Error('Nesting touch handlers with native animated driver is not supported yet');
              n = o;
            } else if (u && 'function' != typeof u) throw new Error('Nesting touch handlers with native animated driver is not supported yet');

            var l = this.onGestureHandlerStateChange,
              s = this.props,
              p = s.onHandlerStateChange,
              h = s.onGestureHandlerStateChange;

            if (p && 'function' != typeof p) {
              if (h) throw new Error('Nesting touch handlers with native animated driver is not supported yet');
              l = p;
            } else if (h && 'function' != typeof h) throw new Error('Nesting touch handlers with native animated driver is not supported yet');

            var v = {
              onGestureHandlerEvent: this.state.allowTouches ? n : undefined,
              onGestureHandlerStateChange: this.state.allowTouches ? l : undefined,
            };
            this.propsRef.current = v;
            var E = React.Children.only(this.props.children),
              y = E.props.children;
            return React.cloneElement(
              E,
              module29.default(
                {
                  ref: this.refHandler,
                  collapsable: false,
                },
                require('./493').isJestEnv()
                  ? {
                      handlerType: t,
                      handlerTag: this.handlerTag,
                    }
                  : {},
                {
                  testID: null != (e = this.props.testID) ? e : E.props.testID,
                },
                v
              ),
              y
            );
          },
        },
      ]);
      return module496;
    })(React.Component);

  module493.displayName = t;
  return module493;
};

var e,
  t,
  module35 = require('@babel/runtime/helpers/interopRequireDefault')(require('./35')),
  module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module10 = require('@babel/runtime/helpers/interopRequireDefault')(require('./10')),
  module12 = require('@babel/runtime/helpers/interopRequireDefault')(require('./12')),
  module15 = require('@babel/runtime/helpers/interopRequireDefault')(require('./15')),
  module256 = require('@babel/runtime/helpers/interopRequireDefault')(require('./256')),
  module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  React = (function (e, t) {
    if (!t && e && e.__esModule) return e;
    if (null === e || ('object' != typeof e && 'function' != typeof e))
      return {
        default: e,
      };
    var n = y(t);
    if (n && n.has(e)) return n.get(e);
    var r = {},
      o = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var u in e)
      if ('default' !== u && Object.prototype.hasOwnProperty.call(e, u)) {
        var l = o ? Object.getOwnPropertyDescriptor(e, u) : null;
        if (l && (l.get || l.set)) Object.defineProperty(r, u, l);
        else r[u] = e[u];
      }

    r.default = e;
    if (n) n.set(e, r);
    return r;
  })(require('react')),
  ReactNative = require('react-native'),
  module403 = require('@babel/runtime/helpers/interopRequireDefault')(require('./403')),
  module492 = require('@babel/runtime/helpers/interopRequireDefault')(require('./492'));

function y(e) {
  if ('function' != typeof WeakMap) return null;
  var t = new WeakMap(),
    n = new WeakMap();
  return (y = function (e) {
    return e ? n : t;
  })(e);
}

function G() {
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

var H = ReactNative.UIManager,
  module493 = module29.default(
    {
      onGestureHandlerEvent: {
        registrationName: 'onGestureHandlerEvent',
      },
      onGestureHandlerStateChange: {
        registrationName: 'onGestureHandlerStateChange',
      },
    },
    require('./493').isFabric() &&
      'android' === ReactNative.Platform.OS && {
        topOnGestureHandlerEvent: {
          registrationName: 'onGestureHandlerEvent',
        },
        topOnGestureHandlerStateChange: {
          registrationName: 'onGestureHandlerStateChange',
        },
      }
  );
H.genericDirectEventTypes = module29.default({}, H.genericDirectEventTypes, module493);
var C = null != (e = null == H.getViewManagerConfig ? undefined : H.getViewManagerConfig('getConstants')) ? e : null == H.getConstants ? undefined : H.getConstants();
if (C) C.genericDirectEventTypes = module29.default({}, C.genericDirectEventTypes, module493);
var w = H.setJSResponder,
  S = undefined === w ? function () {} : w,
  N = H.clearJSResponder,
  D = undefined === N ? function () {} : N;

H.setJSResponder = function (e, t) {
  module492.default.handleSetJSResponder(e, t);
  S(e, t);
};

H.clearJSResponder = function () {
  module492.default.handleClearJSResponder();
  D();
};

var O = true;

function I(e) {
  var t = function (e) {
    return Array.isArray(e)
      ? e.some(function (e) {
          return e && null === e.current;
        })
      : e && null === e.current;
  };

  return t(e.simultaneousHandlers) || t(e.waitFor);
}

t = {};
module256.default(t, require('./495').State.UNDETERMINED, undefined);
module256.default(t, require('./495').State.BEGAN, 'onBegan');
module256.default(t, require('./495').State.FAILED, 'onFailed');
module256.default(t, require('./495').State.CANCELLED, 'onCancelled');
module256.default(t, require('./495').State.ACTIVE, 'onActivated');
module256.default(t, require('./495').State.END, 'onEnded');
var A = t,
  R = 1;
