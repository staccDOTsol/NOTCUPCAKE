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
    var n = f(e);
    if (n && n.has(t)) return n.get(t);
    var o = {},
      l = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var s in t)
      if ('default' !== s && Object.prototype.hasOwnProperty.call(t, s)) {
        var p = l ? Object.getOwnPropertyDescriptor(t, s) : null;
        if (p && (p.get || p.set)) Object.defineProperty(o, s, p);
        else o[s] = t[s];
      }

    o.default = t;
    if (n) n.set(t, o);
    return o;
  })(require('react')),
  ReactNative = require('react-native');

function f(t) {
  if ('function' != typeof WeakMap) return null;
  var e = new WeakMap(),
    n = new WeakMap();
  return (f = function (t) {
    return t ? n : e;
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

var c = 0.05,
  module519 = (function (f) {
    module10.default(R, f);

    var module519 = R,
      S = h(),
      O = function () {
        var t,
          e = module15.default(module519);

        if (S) {
          var n = module15.default(this).constructor;
          t = Reflect.construct(e, arguments, n);
        } else t = e.apply(this, arguments);

        return module12.default(this, t);
      };

    function R(n) {
      var o;
      module7.default(this, R);

      (o = O.call(this, n)).updateAnimatedEvent = function (t, e) {
        var n = t.friction,
          l = t.overshootFriction,
          s = e.dragX,
          p = e.rowTranslation,
          f = e.leftWidth,
          h = undefined === f ? 0 : f,
          c = e.rowWidth,
          v = undefined === c ? 0 : c,
          w = e.rightOffset,
          S = undefined === w ? v : w,
          O = 0 ** (v - S),
          R = t.overshootLeft,
          y = undefined === R ? h > 0 : R,
          A = t.overshootRight,
          b = undefined === A ? O > 0 : A,
          W = ReactNative.Animated.add(
            p,
            s.interpolate({
              inputRange: [0, n],
              outputRange: [0, 1],
            })
          ).interpolate({
            inputRange: [-O - 1, -O, h, h + 1],
            outputRange: [-O - (b ? 1 / l : 0), -O, h, h + (y ? 1 / l : 0)],
          });
        o.transX = W;
        o.showLeftAction =
          h > 0
            ? W.interpolate({
                inputRange: [-1, 0, h],
                outputRange: [0, 0, 1],
              })
            : new ReactNative.Animated.Value(0);
        o.leftActionTranslate = o.showLeftAction.interpolate({
          inputRange: [0, Number.MIN_VALUE],
          outputRange: [-1e4, 0],
          extrapolate: 'clamp',
        });
        o.showRightAction =
          O > 0
            ? W.interpolate({
                inputRange: [-O, 0, 1],
                outputRange: [1, 0, 0],
              })
            : new ReactNative.Animated.Value(0);
        o.rightActionTranslate = o.showRightAction.interpolate({
          inputRange: [0, Number.MIN_VALUE],
          outputRange: [-1e4, 0],
          extrapolate: 'clamp',
        });
      };

      o.onTapHandlerStateChange = function (t) {
        if (t.nativeEvent.oldState === require('./495').State.ACTIVE) o.close();
      };

      o.onHandlerStateChange = function (t) {
        if (t.nativeEvent.oldState === require('./495').State.ACTIVE) o.handleRelease(t);
      };

      o.handleRelease = function (t) {
        var e = t.nativeEvent,
          n = e.velocityX,
          l = e.translationX,
          s = o.state,
          p = s.leftWidth,
          u = undefined === p ? 0 : p,
          f = s.rowWidth,
          h = undefined === f ? 0 : f,
          v = s.rowState,
          w = o.state.rightOffset,
          S = h - (undefined === w ? h : w),
          O = o.props,
          R = O.friction,
          y = O.leftThreshold,
          A = undefined === y ? u / 2 : y,
          b = O.rightThreshold,
          W = undefined === b ? S / 2 : b,
          E = o.currentOffset() + l / R,
          L = (l + c * n) / R,
          T = 0;
        if (0 === v) L > A ? (T = u) : L < -W && (T = -S);
        else if (1 === v) {
          if (L > -A) T = u;
        } else if (L < W) T = -S;
        o.animateRow(E, T, n / R);
      };

      o.animateRow = function (e, n, l) {
        var s = o.state,
          p = s.dragX,
          f = s.rowTranslation;

        if (
          (p.setValue(0),
          f.setValue(e),
          o.setState({
            rowState: Math.sign(n),
          }),
          ReactNative.Animated.spring(
            f,
            module29.default(
              {
                restSpeedThreshold: 1.7,
                restDisplacementThreshold: 0.4,
                velocity: l,
                bounciness: 0,
                toValue: n,
                useNativeDriver: o.props.useNativeAnimations,
              },
              o.props.animationOptions
            )
          ).start(function (t) {
            if (t.finished)
              if (n > 0) {
                if (!(null == o.props.onSwipeableLeftOpen)) o.props.onSwipeableLeftOpen();
                if (!(null == o.props.onSwipeableOpen)) o.props.onSwipeableOpen('left');
              } else if (n < 0) {
                if (!(null == o.props.onSwipeableRightOpen)) o.props.onSwipeableRightOpen();
                if (!(null == o.props.onSwipeableOpen)) o.props.onSwipeableOpen('right');
              } else {
                var l = e > 0 ? 'left' : 'right';
                if (!(null == o.props.onSwipeableClose)) o.props.onSwipeableClose(l);
              }
          }),
          n > 0)
        ) {
          if (!(null == o.props.onSwipeableLeftWillOpen)) o.props.onSwipeableLeftWillOpen();
          if (!(null == o.props.onSwipeableWillOpen)) o.props.onSwipeableWillOpen('left');
        } else if (n < 0) {
          if (!(null == o.props.onSwipeableRightWillOpen)) o.props.onSwipeableRightWillOpen();
          if (!(null == o.props.onSwipeableWillOpen)) o.props.onSwipeableWillOpen('right');
        } else {
          var h = e > 0 ? 'left' : 'right';
          if (!(null == o.props.onSwipeableWillClose)) o.props.onSwipeableWillClose(h);
        }
      };

      o.onRowLayout = function (t) {
        var e = t.nativeEvent;
        o.setState({
          rowWidth: e.layout.width,
        });
      };

      o.currentOffset = function () {
        var t = o.state,
          e = t.leftWidth,
          n = undefined === e ? 0 : e,
          l = t.rowWidth,
          s = undefined === l ? 0 : l,
          p = t.rowState,
          u = o.state.rightOffset;
        return 1 === p ? n : -1 === p ? -(s - (undefined === u ? s : u)) : 0;
      };

      o.close = function () {
        o.animateRow(o.currentOffset(), 0);
      };

      o.openLeft = function () {
        var t = o.state.leftWidth,
          e = undefined === t ? 0 : t;
        o.animateRow(o.currentOffset(), e);
      };

      o.openRight = function () {
        var t = o.state.rowWidth,
          e = undefined === t ? 0 : t,
          n = o.state.rightOffset,
          l = e - (undefined === n ? e : n);
        o.animateRow(o.currentOffset(), -l);
      };

      var l = new ReactNative.Animated.Value(0);
      o.state = {
        dragX: l,
        rowTranslation: new ReactNative.Animated.Value(0),
        rowState: 0,
        leftWidth: undefined,
        rightOffset: undefined,
        rowWidth: undefined,
      };
      o.updateAnimatedEvent(n, o.state);
      o.onGestureEvent = ReactNative.Animated.event(
        [
          {
            nativeEvent: {
              translationX: l,
            },
          },
        ],
        {
          useNativeDriver: n.useNativeAnimations,
        }
      );
      return o;
    }

    module8.default(R, [
      {
        key: 'UNSAFE_componentWillUpdate',
        value: function (t, e) {
          if (
            !(
              this.props.friction === t.friction &&
              this.props.overshootLeft === t.overshootLeft &&
              this.props.overshootRight === t.overshootRight &&
              this.props.overshootFriction === t.overshootFriction &&
              this.state.leftWidth === e.leftWidth &&
              this.state.rightOffset === e.rightOffset &&
              this.state.rowWidth === e.rowWidth
            )
          )
            this.updateAnimatedEvent(t, e);
        },
      },
      {
        key: 'render',
        value: function () {
          var e = this,
            n = this.state.rowState,
            o = this.props,
            l = o.children,
            s = o.renderLeftActions,
            f = o.renderRightActions,
            h =
              s &&
              React.createElement(
                ReactNative.Animated.View,
                {
                  style: [
                    w.leftActions,
                    {
                      transform: [
                        {
                          translateX: this.leftActionTranslate,
                        },
                      ],
                    },
                  ],
                },
                s(this.showLeftAction, this.transX),
                React.createElement(ReactNative.View, {
                  onLayout: function (t) {
                    var n = t.nativeEvent;
                    return e.setState({
                      leftWidth: n.layout.x,
                    });
                  },
                })
              ),
            c =
              f &&
              React.createElement(
                ReactNative.Animated.View,
                {
                  style: [
                    w.rightActions,
                    {
                      transform: [
                        {
                          translateX: this.rightActionTranslate,
                        },
                      ],
                    },
                  ],
                },
                f(this.showRightAction, this.transX),
                React.createElement(ReactNative.View, {
                  onLayout: function (t) {
                    var n = t.nativeEvent;
                    return e.setState({
                      rightOffset: n.layout.x,
                    });
                  },
                })
              );
          return React.createElement(
            require('./520').PanGestureHandler,
            module29.default(
              {
                activeOffsetX: [-10, 10],
              },
              this.props,
              {
                onGestureEvent: this.onGestureEvent,
                onHandlerStateChange: this.onHandlerStateChange,
              }
            ),
            React.createElement(
              ReactNative.Animated.View,
              {
                onLayout: this.onRowLayout,
                style: [w.container, this.props.containerStyle],
              },
              h,
              c,
              React.createElement(
                require('./519').TapGestureHandler,
                {
                  enabled: 0 !== n,
                  onHandlerStateChange: this.onTapHandlerStateChange,
                },
                React.createElement(
                  ReactNative.Animated.View,
                  {
                    pointerEvents: 0 === n ? 'auto' : 'box-only',
                    style: [
                      {
                        transform: [
                          {
                            translateX: this.transX,
                          },
                        ],
                      },
                      this.props.childrenContainerStyle,
                    ],
                  },
                  l
                )
              )
            )
          );
        },
      },
    ]);
    return R;
  })(React.Component);

exports.default = module519;
module519.defaultProps = {
  friction: 1,
  overshootFriction: 1,
  useNativeAnimations: true,
};
var w = ReactNative.StyleSheet.create({
  container: {
    overflow: 'hidden',
  },
  leftActions: module29.default({}, ReactNative.StyleSheet.absoluteFillObject, {
    flexDirection: ReactNative.I18nManager.isRTL ? 'row-reverse' : 'row',
  }),
  rightActions: module29.default({}, ReactNative.StyleSheet.absoluteFillObject, {
    flexDirection: ReactNative.I18nManager.isRTL ? 'row' : 'row-reverse',
  }),
});
