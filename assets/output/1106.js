var module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module10 = require('@babel/runtime/helpers/interopRequireDefault')(require('./10')),
  module12 = require('@babel/runtime/helpers/interopRequireDefault')(require('./12')),
  module15 = require('@babel/runtime/helpers/interopRequireDefault')(require('./15')),
  module1098 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1098')),
  React = (function (e, t) {
    if (!t && e && e.__esModule) return e;
    if (null === e || ('object' != typeof e && 'function' != typeof e))
      return {
        default: e,
      };
    var n = V(t);
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
  ReactNative = require('react-native'),
  module1107 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1107')),
  module1102 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1102')),
  module1103 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1103')),
  module1064 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1064')),
  module1108 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1108')),
  module1109 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1109')),
  S = [
    'styleInterpolator',
    'interpolationIndex',
    'current',
    'gesture',
    'next',
    'layout',
    'insets',
    'overlay',
    'overlayEnabled',
    'shadowEnabled',
    'gestureEnabled',
    'gestureDirection',
    'pageOverflowEnabled',
    'headerDarkContent',
    'children',
    'containerStyle',
    'contentStyle',
  ];

function V(e) {
  if ('function' != typeof WeakMap) return null;
  var t = new WeakMap(),
    n = new WeakMap();
  return (V = function (e) {
    return e ? n : t;
  })(e);
}

function C() {
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

var A = 1,
  I = 0,
  O = 'web' !== ReactNative.Platform.OS,
  module1110 = (function (V, ...args) {
    module10.default(G, V);

    var module1110 = G,
      P = C(),
      x = function () {
        var e,
          t = module15.default(module1110);

        if (P) {
          var n = module15.default(this).constructor;
          e = Reflect.construct(t, arguments, n);
        } else e = t.apply(this, arguments);

        return module12.default(this, e);
      };

    function G() {
      var e;
      module7.default(this, G);
      (e = x.call(this, ...args)).isCurrentlyMounted = false;
      e.isClosing = new ReactNative.Animated.Value(I);
      e.inverted = new ReactNative.Animated.Value(module1103.default(e.props.gestureDirection));
      e.layout = {
        width: new ReactNative.Animated.Value(e.props.layout.width),
        height: new ReactNative.Animated.Value(e.props.layout.height),
      };
      e.isSwiping = new ReactNative.Animated.Value(I);

      e.animate = function (n) {
        var o = n.closing,
          l = n.velocity,
          s = e.props,
          u = s.gesture,
          c = s.transitionSpec,
          h = s.onOpen,
          p = s.onClose,
          v = s.onTransition,
          y = e.getAnimateToValue(
            module29.default({}, e.props, {
              closing: o,
            })
          );
        e.lastToValue = y;
        e.isClosing.setValue(o ? A : I);
        var w = o ? c.close : c.open,
          b = 'spring' === w.animation ? ReactNative.Animated.spring : ReactNative.Animated.timing;
        e.setPointerEventsEnabled(!o);
        e.handleStartInteraction();
        clearTimeout(e.pendingGestureCallback);
        if (!(null == v))
          v({
            closing: o,
            gesture: undefined !== l,
          });
        b(
          u,
          module29.default({}, w.config, {
            velocity: l,
            toValue: y,
            useNativeDriver: O,
            isInteraction: false,
          })
        ).start(function (t) {
          var n = t.finished;
          e.handleEndInteraction();
          clearTimeout(e.pendingGestureCallback);

          if (n) {
            if (o) p();
            else h();
            if (e.isCurrentlyMounted) e.forceUpdate();
          }
        });
      };

      e.getAnimateToValue = function (e) {
        var t = e.closing,
          n = e.layout,
          o = e.gestureDirection;
        return t ? module1102.default(n, o) : 0;
      };

      e.setPointerEventsEnabled = function (t) {
        var n,
          o = t ? 'box-none' : 'none';
        if (!(null == (n = e.contentRef.current)))
          n.setNativeProps({
            pointerEvents: o,
          });
      };

      e.handleStartInteraction = function () {
        if (undefined === e.interactionHandle) e.interactionHandle = ReactNative.InteractionManager.createInteractionHandle();
      };

      e.handleEndInteraction = function () {
        if (undefined !== e.interactionHandle) {
          ReactNative.InteractionManager.clearInteractionHandle(e.interactionHandle);
          e.interactionHandle = undefined;
        }
      };

      e.handleGestureStateChange = function (t) {
        var n = t.nativeEvent,
          o = e.props,
          l = o.layout,
          s = o.onClose,
          u = o.onGestureBegin,
          c = o.onGestureCanceled,
          h = o.onGestureEnd,
          f = o.gestureDirection,
          p = o.gestureVelocityImpact;

        switch (n.state) {
          case require('./1110').GestureState.ACTIVE:
            e.isSwiping.setValue(A);
            e.handleStartInteraction();
            if (!(null == u)) u();
            break;

          case require('./1110').GestureState.CANCELLED:
            e.isSwiping.setValue(I);
            e.handleEndInteraction();
            var v = 'vertical' === f || 'vertical-inverted' === f ? n.velocityY : n.velocityX;
            e.animate({
              closing: e.props.closing,
              velocity: v,
            });
            if (!(null == c)) c();
            break;

          case require('./1110').GestureState.END:
            var w, b, E;
            e.isSwiping.setValue(I);

            if ('vertical' === f || 'vertical-inverted' === f) {
              w = l.height;
              b = n.translationY;
              E = n.velocityY;
            } else {
              w = l.width;
              b = n.translationX;
              E = n.velocityX;
            }

            var S = (b + E * p) * module1103.default(f) > w / 2 ? 0 !== E || 0 !== b : e.props.closing;
            e.animate({
              closing: S,
              velocity: E,
            });
            if (S)
              e.pendingGestureCallback = setTimeout(function () {
                s();
                e.forceUpdate();
              }, 32);
            if (!(null == h)) h();
        }
      };

      e.getInterpolatedStyle = module1064.default(function (e, t) {
        return e(t);
      });
      e.getCardAnimation = module1064.default(function (t, n, o, l, s, u, c, h) {
        return {
          index: t,
          current: {
            progress: n,
          },
          next: o && {
            progress: o,
          },
          closing: e.isClosing,
          swiping: e.isSwiping,
          inverted: e.inverted,
          layouts: {
            screen: l,
          },
          insets: {
            top: s,
            right: u,
            bottom: c,
            left: h,
          },
        };
      });
      e.contentRef = React.createRef();
      return e;
    }

    module8.default(G, [
      {
        key: 'componentDidMount',
        value: function () {
          this.animate({
            closing: this.props.closing,
          });
          this.isCurrentlyMounted = true;
        },
      },
      {
        key: 'componentDidUpdate',
        value: function (e) {
          var t = this.props,
            n = t.layout,
            o = t.gestureDirection,
            l = t.closing,
            s = n.width,
            u = n.height;
          if (s !== e.layout.width) this.layout.width.setValue(s);
          if (u !== e.layout.height) this.layout.height.setValue(u);
          if (o !== e.gestureDirection) this.inverted.setValue(module1103.default(o));
          var c = this.getAnimateToValue(this.props);
          if (!(this.getAnimateToValue(e) === c && this.lastToValue === c))
            this.animate({
              closing: l,
            });
        },
      },
      {
        key: 'componentWillUnmount',
        value: function () {
          this.props.gesture.stopAnimation();
          this.isCurrentlyMounted = false;
          this.handleEndInteraction();
        },
      },
      {
        key: 'gestureActivationCriteria',
        value: function () {
          var e = this.props,
            t = e.layout,
            n = e.gestureDirection,
            o = e.gestureResponseDistance,
            l = undefined !== o ? o : 'vertical' === n || 'vertical-inverted' === n ? 135 : 50;
          if ('vertical' === n)
            return {
              maxDeltaX: 15,
              minOffsetY: 5,
              hitSlop: {
                bottom: -t.height + l,
              },
              enableTrackpadTwoFingerGesture: true,
            };
          if ('vertical-inverted' === n)
            return {
              maxDeltaX: 15,
              minOffsetY: -5,
              hitSlop: {
                top: -t.height + l,
              },
              enableTrackpadTwoFingerGesture: true,
            };
          var s = -t.width + l;
          return 1 === module1103.default(n)
            ? {
                minOffsetX: 5,
                maxDeltaY: 20,
                hitSlop: {
                  right: s,
                },
                enableTrackpadTwoFingerGesture: true,
              }
            : {
                minOffsetX: -5,
                maxDeltaY: 20,
                hitSlop: {
                  left: s,
                },
                enableTrackpadTwoFingerGesture: true,
              };
        },
      },
      {
        key: 'render',
        value: function () {
          var n,
            o = this.props,
            l = o.styleInterpolator,
            s = o.interpolationIndex,
            u = o.current,
            v = o.gesture,
            y = o.next,
            w = o.layout,
            V = o.insets,
            C = o.overlay,
            A = o.overlayEnabled,
            I = o.shadowEnabled,
            k = o.gestureEnabled,
            P = o.gestureDirection,
            x = o.pageOverflowEnabled,
            G = o.headerDarkContent,
            M = o.children,
            R = o.containerStyle,
            H = o.contentStyle,
            X = module105.default(o, S),
            Y = this.getCardAnimation(s, u, y, w, V.top, V.right, V.bottom, V.left),
            j = this.getInterpolatedStyle(l, Y),
            _ = j.containerStyle,
            z = j.cardStyle,
            B = j.overlayStyle,
            F = j.shadowStyle,
            N = k
              ? ReactNative.Animated.event(
                  [
                    {
                      nativeEvent:
                        'vertical' === P || 'vertical-inverted' === P
                          ? {
                              translationY: v,
                            }
                          : {
                              translationX: v,
                            },
                    },
                  ],
                  {
                    useNativeDriver: O,
                  }
                )
              : undefined,
            L = ReactNative.StyleSheet.flatten(H || {}).backgroundColor,
            U = 'string' == typeof L && 0 === module1098.default(L).alpha();
          return React.createElement(
            module1107.default.Provider,
            {
              value: Y,
            },
            'ios' === ReactNative.Platform.OS && A && y && module1051(l)
              ? React.createElement(module1108.default, {
                  dark: G,
                  layout: w,
                  insets: V,
                  style: z,
                })
              : null,
            React.createElement(ReactNative.Animated.View, {
              style: {
                opacity: u,
              },
              collapsable: false,
            }),
            React.createElement(
              ReactNative.View,
              module29.default(
                {
                  pointerEvents: 'box-none',
                },
                X
              ),
              A
                ? React.createElement(
                    ReactNative.View,
                    {
                      pointerEvents: 'box-none',
                      style: ReactNative.StyleSheet.absoluteFill,
                    },
                    C({
                      style: B,
                    })
                  )
                : null,
              React.createElement(
                ReactNative.Animated.View,
                {
                  style: [T.container, _, R],
                  pointerEvents: 'box-none',
                },
                React.createElement(
                  require('./1110').PanGestureHandler,
                  module29.default(
                    {
                      enabled: 0 !== w.width && k,
                      onGestureEvent: N,
                      onHandlerStateChange: this.handleGestureStateChange,
                    },
                    this.gestureActivationCriteria()
                  ),
                  React.createElement(
                    ReactNative.Animated.View,
                    {
                      needsOffscreenAlphaCompositing: ((n = z), !!n && null != ReactNative.StyleSheet.flatten(n).opacity),
                      style: [T.container, z],
                    },
                    I && F && !U
                      ? React.createElement(ReactNative.Animated.View, {
                          style: [
                            T.shadow,
                            'horizontal' === P
                              ? [T.shadowHorizontal, T.shadowLeft]
                              : 'horizontal-inverted' === P
                              ? [T.shadowHorizontal, T.shadowRight]
                              : 'vertical' === P
                              ? [T.shadowVertical, T.shadowTop]
                              : [T.shadowVertical, T.shadowBottom],
                            {
                              backgroundColor: L,
                            },
                            F,
                          ],
                          pointerEvents: 'none',
                        })
                      : null,
                    React.createElement(
                      module1109.default,
                      {
                        ref: this.contentRef,
                        enabled: x,
                        layout: w,
                        style: H,
                      },
                      M
                    )
                  )
                )
              )
            )
          );
        },
      },
    ]);
    return G;
  })(React.Component);

exports.default = module1110;
module1110.defaultProps = {
  shadowEnabled: false,
  gestureEnabled: true,
  gestureVelocityImpact: 0.3,
  overlay: function (e) {
    var t = e.style;
    return t
      ? React.createElement(ReactNative.Animated.View, {
          pointerEvents: 'none',
          style: [T.overlay, t],
        })
      : null;
  },
};

var module1051 = function (e) {
  return e === require('./1051').forModalPresentationIOS || 'forModalPresentationIOS' === e.name;
};

exports.getIsModalPresentation = module1051;
var T = ReactNative.StyleSheet.create({
  container: {
    flex: 1,
  },
  overlay: {
    flex: 1,
    backgroundColor: '#000',
  },
  shadow: {
    position: 'absolute',
    shadowRadius: 5,
    shadowColor: '#000',
    shadowOpacity: 0.3,
  },
  shadowHorizontal: {
    top: 0,
    bottom: 0,
    width: 3,
    shadowOffset: {
      width: -1,
      height: 1,
    },
  },
  shadowLeft: {
    left: 0,
  },
  shadowRight: {
    right: 0,
  },
  shadowVertical: {
    left: 0,
    right: 0,
    height: 3,
    shadowOffset: {
      width: 1,
      height: -1,
    },
  },
  shadowTop: {
    top: 0,
  },
  shadowBottom: {
    bottom: 0,
  },
});
