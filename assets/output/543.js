var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module10 = require('@babel/runtime/helpers/interopRequireDefault')(require('./10')),
  module12 = require('@babel/runtime/helpers/interopRequireDefault')(require('./12')),
  module15 = require('@babel/runtime/helpers/interopRequireDefault')(require('./15')),
  React = (function (e, t) {
    if (!t && e && e.__esModule) return e;
    if (null === e || ('object' != typeof e && 'function' != typeof e))
      return {
        default: e,
      };
    var n = w(t);
    if (n && n.has(e)) return n.get(e);
    var o = {},
      l = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var s in e)
      if ('default' !== s && Object.prototype.hasOwnProperty.call(e, s)) {
        var u = l ? Object.getOwnPropertyDescriptor(e, s) : null;
        if (u && (u.get || u.set)) Object.defineProperty(o, s, u);
        else o[s] = e[s];
      }

    o.default = e;
    if (n) n.set(e, o);
    return o;
  })(require('react')),
  module18 = require('@babel/runtime/helpers/interopRequireDefault')(require('./18')),
  ReactNative = require('react-native');

function w(e) {
  if ('function' != typeof WeakMap) return null;
  var t = new WeakMap(),
    n = new WeakMap();
  return (w = function (e) {
    return e ? n : t;
  })(e);
}

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

var h = 0.05,
  v = 'Idle',
  S = 'Dragging',
  y = 'Settling',
  module520 = (function (e) {
    module10.default(D, e);

    var w = D,
      module520 = f(),
      A = function () {
        var e,
          t = module15.default(w);

        if (module520) {
          var n = module15.default(this).constructor;
          e = Reflect.construct(t, arguments, n);
        } else e = t.apply(this, arguments);

        return module12.default(this, e);
      };

    function D(e) {
      var n;
      module7.default(this, D);
      (n = A.call(this, e)).accessibilityIsModalView = React.createRef();
      n.pointerEventsView = React.createRef();
      n.panGestureHandler = React.createRef();
      n.drawerShown = false;

      n.updateAnimatedEvent = function (e, t) {
        var o = e.drawerPosition,
          l = e.drawerWidth,
          s = e.drawerType,
          u = t.dragX,
          p = t.touchX,
          w = t.drawerTranslation,
          f = t.containerWidth,
          h = u,
          v = p;

        if ('left' !== o) {
          h = ReactNative.Animated.multiply(new ReactNative.Animated.Value(-1), u);
          v = ReactNative.Animated.add(new ReactNative.Animated.Value(f), ReactNative.Animated.multiply(new ReactNative.Animated.Value(-1), p));
          p.setValue(f);
        } else p.setValue(0);

        var S = h;

        if ('front' === s) {
          var y = ReactNative.Animated.add(v, ReactNative.Animated.multiply(new ReactNative.Animated.Value(-1), h)).interpolate({
            inputRange: [l - 1, l, l + 1],
            outputRange: [0, 0, 1],
          });
          S = ReactNative.Animated.add(h, y);
        }

        n.openValue = ReactNative.Animated.add(S, w).interpolate({
          inputRange: [0, l],
          outputRange: [0, 1],
          extrapolate: 'clamp',
        });
        var b = {
          useNativeDriver: e.useNativeAnimations,
        };
        if (n.props.onDrawerSlide)
          b.listener = function (e) {
            var t = Math.floor(Math.abs(e.nativeEvent.translationX)) / n.state.containerWidth;
            if (!(null == n.props.onDrawerSlide)) n.props.onDrawerSlide(t);
          };
        n.onGestureEvent = ReactNative.Animated.event(
          [
            {
              nativeEvent: {
                translationX: u,
                x: p,
              },
            },
          ],
          b
        );
      };

      n.handleContainerLayout = function (e) {
        var t = e.nativeEvent;
        n.setState({
          containerWidth: t.layout.width,
        });
      };

      n.emitStateChanged = function (e, t) {
        if (!(null == n.props.onDrawerStateChanged)) n.props.onDrawerStateChanged(e, t);
      };

      n.openingHandlerStateChange = function (e) {
        var t = e.nativeEvent;
        if (t.oldState === require('./495').State.ACTIVE)
          n.handleRelease({
            nativeEvent: t,
          });
        else if (t.state === require('./495').State.ACTIVE) {
          n.emitStateChanged(S, false);
          n.setState({
            drawerState: S,
          });
          if ('on-drag' === n.props.keyboardDismissMode) ReactNative.Keyboard.dismiss();
          if (n.props.hideStatusBar) ReactNative.StatusBar.setHidden(true, n.props.statusBarAnimation || 'slide');
        }
      };

      n.onTapHandlerStateChange = function (e) {
        var t = e.nativeEvent;
        if (n.drawerShown && t.oldState === require('./495').State.ACTIVE && 'locked-open' !== n.props.drawerLockMode) n.closeDrawer();
      };

      n.handleRelease = function (e) {
        var t = e.nativeEvent,
          o = n.props,
          l = o.drawerWidth,
          s = o.drawerPosition,
          u = o.drawerType,
          p = n.state.containerWidth,
          c = t.translationX,
          w = t.velocityX,
          f = t.x;

        if ('left' !== s) {
          c = -c;
          f = p - f;
          w = -w;
        }

        var v = f - c,
          S = 0;
        if ('front' === u) S = v > l ? v - l : 0;
        var y = c + S + (n.drawerShown ? l : 0);
        if (y + h * w > l / 2) n.animateDrawer(y, l, w);
        else n.animateDrawer(y, 0, w);
      };

      n.updateShowing = function (e) {
        var t, o, l;
        n.drawerShown = e;
        if (!(null == (t = n.accessibilityIsModalView.current)))
          t.setNativeProps({
            accessibilityViewIsModal: e,
          });
        if (!(null == (o = n.pointerEventsView.current)))
          o.setNativeProps({
            pointerEvents: e ? 'auto' : 'none',
          });
        var s = n.props,
          u = s.drawerPosition,
          p = s.minSwipeDistance,
          c = s.edgeWidth,
          w = 'left' === u,
          f = (w ? 1 : -1) * (n.drawerShown ? -1 : 1),
          h = w
            ? {
                left: 0,
                width: e ? undefined : c,
              }
            : {
                right: 0,
                width: e ? undefined : c,
              };
        if (!(null == (l = n.panGestureHandler.current)))
          l.setNativeProps({
            hitSlop: h,
            activeOffsetX: f * p,
          });
      };

      n.animateDrawer = function (e, t, o, l) {
        if ((n.state.dragX.setValue(0), n.state.touchX.setValue('left' === n.props.drawerPosition ? 0 : n.state.containerWidth), null != e)) {
          var s = e;
          if (n.props.useNativeAnimations) e < t && o > 0 ? (s = (e + o / 60) ** t) : e > t && o < 0 && (s = (e + o / 60) ** t);
          n.state.drawerTranslation.setValue(s);
        }

        var u = 0 !== t;
        n.updateShowing(u);
        n.emitStateChanged(y, u);
        n.setState({
          drawerState: y,
        });
        if (n.props.hideStatusBar) ReactNative.StatusBar.setHidden(u, n.props.statusBarAnimation || 'slide');
        ReactNative.Animated.spring(n.state.drawerTranslation, {
          velocity: o,
          bounciness: 0,
          toValue: t,
          useNativeDriver: n.props.useNativeAnimations,
          speed: null != l ? l : undefined,
        }).start(function (e) {
          if (e.finished) {
            n.emitStateChanged(v, u);
            n.setState({
              drawerOpened: u,
            });
            if (n.state.drawerState !== S)
              n.setState({
                drawerState: v,
              });
            if (u) {
              if (!(null == n.props.onDrawerOpen)) n.props.onDrawerOpen();
            } else if (!(null == n.props.onDrawerClose)) n.props.onDrawerClose();
          }
        });
      };

      n.openDrawer = function () {
        var e = arguments.length > 0 && undefined !== arguments[0] ? arguments[0] : {};
        n.animateDrawer(undefined, n.props.drawerWidth, e.velocity ? e.velocity : 0, e.speed);
        n.forceUpdate();
      };

      n.closeDrawer = function () {
        var e = arguments.length > 0 && undefined !== arguments[0] ? arguments[0] : {};
        n.animateDrawer(undefined, 0, e.velocity ? e.velocity : 0, e.speed);
        n.forceUpdate();
      };

      n.renderOverlay = function () {
        module18.default(n.openValue, 'should be set');
        var e = {
          opacity: n.state.drawerState !== v ? n.openValue : n.state.drawerOpened ? 1 : 0,
          backgroundColor: n.props.overlayColor,
        };
        return React.createElement(
          require('./519').TapGestureHandler,
          {
            onHandlerStateChange: n.onTapHandlerStateChange,
          },
          React.createElement(ReactNative.Animated.View, {
            pointerEvents: n.drawerShown ? 'auto' : 'none',
            ref: n.pointerEventsView,
            style: [V.overlay, e],
          })
        );
      };

      n.renderDrawer = function () {
        var e,
          t = n.props,
          o = t.drawerBackgroundColor,
          l = t.drawerWidth,
          s = t.drawerPosition,
          w = t.drawerType,
          f = t.drawerContainerStyle,
          h = t.contentContainerStyle,
          S = 'left' === s,
          y = 'back' !== w,
          b = 'front' !== w,
          A = ReactNative.I18nManager.isRTL ? S : !S,
          D = {
            backgroundColor: o,
            width: l,
          },
          E = n.openValue;
        if ((module18.default(E, 'should be set'), b))
          e = {
            transform: [
              {
                translateX: E.interpolate({
                  inputRange: [0, 1],
                  outputRange: S ? [0, l] : [0, -l],
                  extrapolate: 'clamp',
                }),
              },
            ],
          };
        var C = 0;

        if (y) {
          var O = S ? -l : l;
          C =
            n.state.drawerState !== v
              ? E.interpolate({
                  inputRange: [0, 1],
                  outputRange: [O, 0],
                  extrapolate: 'clamp',
                })
              : n.state.drawerOpened
              ? 0
              : O;
        }

        var R = {
          transform: [
            {
              translateX: C,
            },
          ],
          flexDirection: A ? 'row-reverse' : 'row',
        };
        return React.createElement(
          ReactNative.Animated.View,
          {
            style: V.main,
            onLayout: n.handleContainerLayout,
          },
          React.createElement(
            ReactNative.Animated.View,
            {
              style: ['front' === w ? V.containerOnBack : V.containerInFront, e, h],
              importantForAccessibility: n.drawerShown ? 'no-hide-descendants' : 'yes',
            },
            'function' == typeof n.props.children ? n.props.children(n.openValue) : n.props.children,
            n.renderOverlay()
          ),
          React.createElement(
            ReactNative.Animated.View,
            {
              pointerEvents: 'box-none',
              ref: n.accessibilityIsModalView,
              accessibilityViewIsModal: n.drawerShown,
              style: [V.drawerContainer, R, f],
            },
            React.createElement(
              ReactNative.View,
              {
                style: D,
              },
              n.props.renderNavigationView(n.openValue)
            )
          )
        );
      };

      n.setPanGestureRef = function (e) {
        n.panGestureHandler.current = e;
        if (!(null == n.props.onGestureRef)) n.props.onGestureRef(e);
      };

      var o = new ReactNative.Animated.Value(0),
        l = new ReactNative.Animated.Value(0),
        s = new ReactNative.Animated.Value(0);
      n.state = {
        dragX: o,
        touchX: l,
        drawerTranslation: s,
        containerWidth: 0,
        drawerState: v,
        drawerOpened: false,
      };
      n.updateAnimatedEvent(e, n.state);
      return n;
    }

    module8.default(D, [
      {
        key: 'UNSAFE_componentWillUpdate',
        value: function (e, t) {
          if (
            !(
              this.props.drawerPosition === e.drawerPosition &&
              this.props.drawerWidth === e.drawerWidth &&
              this.props.drawerType === e.drawerType &&
              this.state.containerWidth === t.containerWidth
            )
          )
            this.updateAnimatedEvent(e, t);
        },
      },
      {
        key: 'render',
        value: function () {
          var e = this.props,
            t = e.drawerPosition,
            n = e.drawerLockMode,
            o = e.edgeWidth,
            l = e.minSwipeDistance,
            s = 'left' === t,
            p = (s ? 1 : -1) * (this.drawerShown ? -1 : 1),
            c = s
              ? {
                  left: 0,
                  width: this.drawerShown ? undefined : o,
                }
              : {
                  right: 0,
                  width: this.drawerShown ? undefined : o,
                };
          return React.createElement(
            require('./520').PanGestureHandler,
            {
              ref: this.setPanGestureRef,
              hitSlop: c,
              activeOffsetX: p * l,
              failOffsetY: [-15, 15],
              onGestureEvent: this.onGestureEvent,
              onHandlerStateChange: this.openingHandlerStateChange,
              enableTrackpadTwoFingerGesture: this.props.enableTrackpadTwoFingerGesture,
              enabled: 'locked-closed' !== n && 'locked-open' !== n,
            },
            this.renderDrawer()
          );
        },
      },
    ]);
    return D;
  })(React.Component);

exports.default = module520;
module520.defaultProps = {
  drawerWidth: 200,
  drawerPosition: 'left',
  useNativeAnimations: true,
  drawerType: 'front',
  edgeWidth: 20,
  minSwipeDistance: 3,
  overlayColor: 'rgba(0, 0, 0, 0.7)',
  drawerLockMode: 'unlocked',
  enableTrackpadTwoFingerGesture: false,
};
module520.positions = {
  Left: 'left',
  Right: 'right',
};
var V = ReactNative.StyleSheet.create({
  drawerContainer: module29.default({}, ReactNative.StyleSheet.absoluteFillObject, {
    zIndex: 1001,
    flexDirection: 'row',
  }),
  containerInFront: module29.default({}, ReactNative.StyleSheet.absoluteFillObject, {
    zIndex: 1002,
  }),
  containerOnBack: module29.default({}, ReactNative.StyleSheet.absoluteFillObject),
  main: {
    flex: 1,
    zIndex: 0,
    overflow: 'hidden',
  },
  overlay: module29.default({}, ReactNative.StyleSheet.absoluteFillObject, {
    zIndex: 1e3,
  }),
});
