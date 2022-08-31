var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module10 = require('@babel/runtime/helpers/interopRequireDefault')(require('./10')),
  module12 = require('@babel/runtime/helpers/interopRequireDefault')(require('./12')),
  module15 = require('@babel/runtime/helpers/interopRequireDefault')(require('./15')),
  React = (function (t, e) {
    if (!e && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var s = c(e);
    if (s && s.has(t)) return s.get(t);
    var o = {},
      n = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var l in t)
      if ('default' !== l && Object.prototype.hasOwnProperty.call(t, l)) {
        var u = n ? Object.getOwnPropertyDescriptor(t, l) : null;
        if (u && (u.get || u.set)) Object.defineProperty(o, l, u);
        else o[l] = t[l];
      }

    o.default = t;
    if (s) s.set(t, o);
    return o;
  })(require('react')),
  ReactNative = require('react-native');

function c(t) {
  if ('function' != typeof WeakMap) return null;
  var e = new WeakMap(),
    s = new WeakMap();
  return (c = function (t) {
    return t ? s : e;
  })(t);
}

function h() {
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

var T = {
  UNDETERMINED: 0,
  BEGAN: 1,
  MOVED_OUTSIDE: 2,
};
exports.TOUCHABLE_STATE = T;

var module399 = (function (c, ...args) {
  module10.default(y, c);

  var module399 = y,
    E = h(),
    v = function () {
      var t,
        e = module15.default(module399);

      if (E) {
        var s = module15.default(this).constructor;
        t = Reflect.construct(e, arguments, s);
      } else t = e.apply(this, arguments);

      return module12.default(this, t);
    };

  function y() {
    var t;
    module7.default(this, y);
    (t = v.call(this, ...args)).longPressDetected = false;
    t.pointerInside = true;
    t.STATE = T.UNDETERMINED;

    t.onGestureEvent = function (e) {
      var s = e.nativeEvent.pointerInside;
      if (t.pointerInside !== s) s ? t.onMoveIn() : t.onMoveOut();
      t.pointerInside = s;
    };

    t.onHandlerStateChange = function (e) {
      var s = e.nativeEvent.state;
      if (s === require('./495').State.CANCELLED || s === require('./495').State.FAILED) t.moveToState(T.UNDETERMINED);
      else if (s === ('android' !== ReactNative.Platform.OS ? require('./495').State.ACTIVE : require('./495').State.BEGAN) && t.STATE === T.UNDETERMINED) t.handlePressIn();
      else if (s === require('./495').State.END) {
        var o = !t.longPressDetected && t.STATE !== T.MOVED_OUTSIDE && null === t.pressOutTimeout;
        t.handleGoToUndetermined();
        if (o) null == t.props.onPress || t.props.onPress();
      }
    };

    t.onLongPressDetected = function () {
      t.longPressDetected = true;
      if (!(null == t.props.onLongPress)) t.props.onLongPress();
    };

    return t;
  }

  module8.default(y, [
    {
      key: 'handlePressIn',
      value: function () {
        var t = this;

        if (
          (this.props.delayPressIn
            ? (this.pressInTimeout = setTimeout(function () {
                t.moveToState(T.BEGAN);
                t.pressInTimeout = null;
              }, this.props.delayPressIn))
            : this.moveToState(T.BEGAN),
          this.props.onLongPress)
        ) {
          var e = (this.props.delayPressIn || 0) + (this.props.delayLongPress || 0);
          this.longPressTimeout = setTimeout(this.onLongPressDetected, e);
        }
      },
    },
    {
      key: 'handleMoveOutside',
      value: function () {
        var t = this;
        if (this.props.delayPressOut)
          this.pressOutTimeout =
            this.pressOutTimeout ||
            setTimeout(function () {
              t.moveToState(T.MOVED_OUTSIDE);
              t.pressOutTimeout = null;
            }, this.props.delayPressOut);
        else this.moveToState(T.MOVED_OUTSIDE);
      },
    },
    {
      key: 'handleGoToUndetermined',
      value: function () {
        var t = this;
        clearTimeout(this.pressOutTimeout);
        if (this.props.delayPressOut)
          this.pressOutTimeout = setTimeout(function () {
            if (t.STATE === T.UNDETERMINED) t.moveToState(T.BEGAN);
            t.moveToState(T.UNDETERMINED);
            t.pressOutTimeout = null;
          }, this.props.delayPressOut);
        else {
          if (this.STATE === T.UNDETERMINED) this.moveToState(T.BEGAN);
          this.moveToState(T.UNDETERMINED);
        }
      },
    },
    {
      key: 'componentDidMount',
      value: function () {
        this.reset();
      },
    },
    {
      key: 'reset',
      value: function () {
        this.longPressDetected = false;
        this.pointerInside = true;
        clearTimeout(this.pressInTimeout);
        clearTimeout(this.pressOutTimeout);
        clearTimeout(this.longPressTimeout);
        this.pressOutTimeout = null;
        this.longPressTimeout = null;
        this.pressInTimeout = null;
      },
    },
    {
      key: 'moveToState',
      value: function (t) {
        var e, s;

        if (t !== this.STATE) {
          var o, n;
          if (t === T.BEGAN) null == (o = (n = this.props).onPressIn) || o.call(n);
          else if (t === T.MOVED_OUTSIDE) {
            var l, u;
            if (!(null == (l = (u = this.props).onPressOut))) l.call(u);
          } else if (t === T.UNDETERMINED) {
            var p, c;
            if ((this.reset(), this.STATE === T.BEGAN)) null == (p = (c = this.props).onPressOut) || p.call(c);
          }
          if (!(null == (e = (s = this.props).onStateChange))) e.call(s, this.STATE, t);
          this.STATE = t;
        }
      },
    },
    {
      key: 'componentWillUnmount',
      value: function () {
        this.reset();
      },
    },
    {
      key: 'onMoveIn',
      value: function () {
        if (this.STATE === T.MOVED_OUTSIDE) this.moveToState(T.BEGAN);
      },
    },
    {
      key: 'onMoveOut',
      value: function () {
        clearTimeout(this.longPressTimeout);
        this.longPressTimeout = null;
        if (this.STATE === T.BEGAN) this.handleMoveOutside();
      },
    },
    {
      key: 'render',
      value: function () {
        var e,
          s = {
            accessible: false !== this.props.accessible,
            accessibilityLabel: this.props.accessibilityLabel,
            accessibilityHint: this.props.accessibilityHint,
            accessibilityRole: this.props.accessibilityRole,
            accessibilityState: this.props.accessibilityState,
            accessibilityActions: this.props.accessibilityActions,
            onAccessibilityAction: this.props.onAccessibilityAction,
            nativeID: this.props.nativeID,
            onLayout: this.props.onLayout,
            hitSlop: this.props.hitSlop,
          };
        return React.createElement(
          require('./399').BaseButton,
          module29.default(
            {
              style: this.props.containerStyle,
              onHandlerStateChange: this.props.disabled ? undefined : this.onHandlerStateChange,
              onGestureEvent: this.onGestureEvent,
              hitSlop: this.props.hitSlop,
              shouldActivateOnStart: this.props.shouldActivateOnStart,
              disallowInterruption: this.props.disallowInterruption,
              testID: this.props.testID,
              touchSoundDisabled: null != (e = this.props.touchSoundDisabled) && e,
            },
            this.props.extraButtonProps
          ),
          React.createElement(
            ReactNative.Animated.View,
            module29.default({}, s, {
              style: this.props.style,
            }),
            this.props.children
          )
        );
      },
    },
  ]);
  return y;
})(React.Component);

exports.default = module399;
module399.defaultProps = {
  delayLongPress: 600,
  extraButtonProps: {
    rippleColor: 'transparent',
    exclusive: true,
  },
};
