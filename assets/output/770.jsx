var module76 = require('@babel/runtime/helpers/interopRequireDefault')(require('./76')),
  module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
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
    var n = v(t);
    if (n && n.has(e)) return n.get(e);
    var o = {},
      s = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var u in e)
      if ('default' !== u && Object.prototype.hasOwnProperty.call(e, u)) {
        var l = s ? Object.getOwnPropertyDescriptor(e, u) : null;
        if (l && (l.get || l.set)) Object.defineProperty(o, u, l);
        else o[u] = e[u];
      }

    o.default = e;
    if (n) n.set(e, o);
    return o;
  })(require('react')),
  ReactNative = require('react-native'),
  module771 = require('@babel/runtime/helpers/interopRequireDefault')(require('./771')),
  module734 = require('@babel/runtime/helpers/interopRequireDefault')(require('./734')),
  module773 = require('@babel/runtime/helpers/interopRequireDefault')(require('./773'));

function v(e) {
  if ('function' != typeof WeakMap) return null;
  var t = new WeakMap(),
    n = new WeakMap();
  return (v = function (e) {
    return e ? n : t;
  })(e);
}

function b() {
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

var A = 250,
  L = ReactNative.Easing.bezier(0.4, 0, 0.2, 1),
  module709 = (function (w, ...args) {
    module10.default(D, w);

    var v = D,
      module709 = b(),
      P = function () {
        var e,
          t = module15.default(v);

        if (module709) {
          var n = module15.default(this).constructor;
          e = Reflect.construct(t, arguments, n);
        } else e = t.apply(this, arguments);

        return module12.default(this, e);
      };

    function D() {
      var t;
      module7.default(this, D);
      (t = P.call(this, ...args)).state = {
        rendered: t.props.visible,
        top: 0,
        left: 0,
        menuLayout: {
          width: 0,
          height: 0,
        },
        anchorLayout: {
          width: 0,
          height: 0,
        },
        opacityAnimation: new ReactNative.Animated.Value(0),
        scaleAnimation: new ReactNative.Animated.ValueXY({
          x: 0,
          y: 0,
        }),
      };
      t.anchor = null;
      t.menu = null;

      t.isCoordinate = function (e) {
        return !React.isValidElement(e) && 'number' == typeof (null == e ? undefined : e.x) && 'number' == typeof (null == e ? undefined : e.y);
      };

      t.measureMenuLayout = function () {
        return new Promise(function (e) {
          if (t.menu)
            t.menu.measureInWindow(function (t, n, o, s) {
              e({
                x: t,
                y: n,
                width: o,
                height: s,
              });
            });
        });
      };

      t.measureAnchorLayout = function () {
        return new Promise(function (e) {
          var n = t.props.anchor;
          if (t.isCoordinate(n))
            e({
              x: n.x,
              y: n.y,
              width: 0,
              height: 0,
            });
          else if (t.anchor)
            t.anchor.measureInWindow(function (t, n, o, s) {
              e({
                x: t,
                y: n,
                width: o,
                height: s,
              });
            });
        });
      };

      t.updateVisibility = function () {
        return module76.default.async(
          function (n) {
            for (;;)
              switch ((n.prev = n.next)) {
                case 0:
                  n.next = 2;
                  return module76.default.awrap(Promise.resolve());

                case 2:
                  if (t.props.visible) t.show();
                  else t.hide();

                case 3:
                case 'end':
                  return n.stop();
              }
          },
          null,
          null,
          null,
          Promise
        );
      };

      t.isBrowser = function () {
        return 'web' === ReactNative.Platform.OS && 'document' in globals;
      };

      t.focusFirstDOMNode = function (e) {
        if (e && t.isBrowser()) {
          var n = ReactNative.findNodeHandle(e).querySelector('button, [href], input, select, textarea, [tabindex]:not([tabindex="-1"])');
          if (!(null == n)) n.focus();
        }
      };

      t.handleDismiss = function () {
        if (t.props.visible) t.props.onDismiss();
        return true;
      };

      t.handleKeypress = function (e) {
        if ('Escape' === e.key) t.props.onDismiss();
      };

      t.attachListeners = function () {
        t.backHandlerSubscription = require('./709').addEventListener(ReactNative.BackHandler, 'hardwareBackPress', t.handleDismiss);
        t.dimensionsSubscription = require('./709').addEventListener(ReactNative.Dimensions, 'change', t.handleDismiss);
        if (t.isBrowser()) document.addEventListener('keyup', t.handleKeypress);
      };

      t.removeListeners = function () {
        var e, n;
        if (!(null == (e = t.backHandlerSubscription))) e.remove();
        if (!(null == (n = t.dimensionsSubscription))) n.remove();
        if (t.isBrowser()) document.removeEventListener('keyup', t.handleKeypress);
      };

      t.show = function () {
        var module7, s, u, l, h;
        return module76.default.async(
          function (c) {
            for (;;)
              switch ((c.prev = c.next)) {
                case 0:
                  module7 = ReactNative.Dimensions.get('window');
                  c.next = 3;
                  return module76.default.awrap(Promise.all([t.measureMenuLayout(), t.measureAnchorLayout()]));

                case 3:
                  if (
                    ((s = c.sent),
                    (u = module23.default(s, 2)),
                    (l = u[0]),
                    (h = u[1]),
                    module7.width && module7.height && l.width && l.height && (h.width || t.isCoordinate(t.props.anchor)) && (h.height || t.isCoordinate(t.props.anchor)))
                  ) {
                    c.next = 10;
                    break;
                  }

                  requestAnimationFrame(t.show);
                  return c.abrupt('return');

                case 10:
                  t.setState(
                    function () {
                      return {
                        left: h.x,
                        top: h.y,
                        anchorLayout: {
                          height: h.height,
                          width: h.width,
                        },
                        menuLayout: {
                          width: l.width,
                          height: l.height,
                        },
                      };
                    },
                    function () {
                      t.attachListeners();
                      var e = t.props.theme.animation;
                      ReactNative.Animated.parallel([
                        ReactNative.Animated.timing(t.state.scaleAnimation, {
                          toValue: {
                            x: l.width,
                            y: l.height,
                          },
                          duration: A * e.scale,
                          easing: L,
                          useNativeDriver: true,
                        }),
                        ReactNative.Animated.timing(t.state.opacityAnimation, {
                          toValue: 1,
                          duration: A * e.scale,
                          easing: L,
                          useNativeDriver: true,
                        }),
                      ]).start(function (e) {
                        if (e.finished) t.focusFirstDOMNode(t.menu);
                      });
                    }
                  );

                case 11:
                case 'end':
                  return c.stop();
              }
          },
          null,
          null,
          null,
          Promise
        );
      };

      t.hide = function () {
        t.removeListeners();
        var e = t.props.theme.animation;
        ReactNative.Animated.timing(t.state.opacityAnimation, {
          toValue: 0,
          duration: A * e.scale,
          easing: L,
          useNativeDriver: true,
        }).start(function (e) {
          if (e.finished) {
            t.setState({
              menuLayout: {
                width: 0,
                height: 0,
              },
              rendered: false,
            });
            t.state.scaleAnimation.setValue({
              x: 0,
              y: 0,
            });
            t.focusFirstDOMNode(t.anchor);
          }
        });
      };

      return t;
    }

    module8.default(
      D,
      [
        {
          key: 'componentDidUpdate',
          value: function (e) {
            if (e.visible !== this.props.visible) this.updateVisibility();
          },
        },
        {
          key: 'componentWillUnmount',
          value: function () {
            this.removeListeners();
          },
        },
        {
          key: 'render',
          value: function () {
            var e = this,
              n = this.props,
              o = n.visible,
              s = n.anchor,
              u = n.contentStyle,
              l = n.style,
              h = n.children,
              w = n.theme,
              v = n.statusBarHeight,
              b = n.onDismiss,
              A = n.overlayAccessibilityLabel,
              L = this.state,
              x = L.rendered,
              P = L.menuLayout,
              D = L.anchorLayout,
              E = L.opacityAnimation,
              S = L.scaleAnimation,
              k = this.state,
              V = k.left,
              O = k.top,
              M = ReactNative.Platform.select({
                android: v,
                default: 0,
              }),
              B = [
                {
                  scaleX: S.x.interpolate({
                    inputRange: [0, P.width],
                    outputRange: [0, 1],
                  }),
                },
                {
                  scaleY: S.y.interpolate({
                    inputRange: [0, P.height],
                    outputRange: [0, 1],
                  }),
                },
              ],
              C = ReactNative.Dimensions.get('window'),
              F = [];

            if (V <= C.width - P.width - 8) {
              F.push({
                translateX: S.x.interpolate({
                  inputRange: [0, P.width],
                  outputRange: [-P.width / 2, 0],
                }),
              });
              if (V < 8) V = 8;
            } else {
              F.push({
                translateX: S.x.interpolate({
                  inputRange: [0, P.width],
                  outputRange: [P.width / 2, 0],
                }),
              });
              if ((V += D.width - P.width) + P.width > C.width - 8) V = C.width - 8 - P.width;
            }

            var H = 0;

            if (
              (O >= C.height - P.height - 8 - M && O <= C.height - O
                ? (H = C.height - O - 8 - M)
                : O >= C.height - P.height - 8 - M && O >= C.height - O && O <= P.height - D.height + 8 - M && (H = O + D.height - 8 + M),
              (H = H > C.height - 16 ? C.height - 16 : H),
              O <= C.height - P.height - 8 - M || (O >= C.height - P.height - 8 - M && O <= C.height - O))
            ) {
              F.push({
                translateY: S.y.interpolate({
                  inputRange: [0, P.height],
                  outputRange: [-(H || P.height) / 2, 0],
                }),
              });
              if (O < 8) O = 8;
            } else {
              F.push({
                translateY: S.y.interpolate({
                  inputRange: [0, P.height],
                  outputRange: [(H || P.height) / 2, 0],
                }),
              });
              if ((O += D.height - (H || P.height)) + (H || P.height) + M > C.height - 8) O = H === C.height - 16 ? -16 : C.height - P.height - 8 - M;
            }

            var _ = module29.default(
                {
                  opacity: E,
                  transform: B,
                  borderRadius: w.roundness,
                },
                H
                  ? {
                      height: H,
                    }
                  : {}
              ),
              j = module29.default(
                {
                  top: this.isCoordinate(s) ? O : O + M,
                },
                ReactNative.I18nManager.isRTL
                  ? {
                      right: V,
                    }
                  : {
                      left: V,
                    }
              );

            return (
              <ReactNative.View
                ref={function (t) {
                  e.anchor = t;
                }}
                collapsable={false}
              >
                {this.isCoordinate(s) ? null : s}
                {x ? (
                  <module771.default>
                    <ReactNative.TouchableWithoutFeedback accessibilityLabel={A} accessibilityRole="button" onPress={b}>
                      <ReactNative.View style={ReactNative.StyleSheet.absoluteFill} />
                    </ReactNative.TouchableWithoutFeedback>
                    <ReactNative.View
                      ref={function (t) {
                        e.menu = t;
                      }}
                      collapsable={false}
                      accessibilityViewIsModal={o}
                      style={[R.wrapper, j, l]}
                      pointerEvents={o ? 'box-none' : 'none'}
                      onAccessibilityEscape={b}
                    >
                      {React.createElement(
                        ReactNative.Animated.View,
                        {
                          style: {
                            transform: F,
                          },
                        },
                        React.createElement(
                          module734.default,
                          {
                            style: [R.shadowMenuContainer, _, u],
                          },
                          (H && React.createElement(ReactNative.ScrollView, null, h)) || React.createElement(React.Fragment, null, h)
                        )
                      )}
                    </ReactNative.View>
                  </module771.default>
                ) : null}
              </ReactNative.View>
            );
          },
        },
      ],
      [
        {
          key: 'getDerivedStateFromProps',
          value: function (e, t) {
            return e.visible && !t.rendered
              ? {
                  rendered: true,
                }
              : null;
          },
        },
      ]
    );
    return D;
  })(React.Component);

module709.Item = module773.default;
module709.defaultProps = {
  statusBarHeight: require('./774').APPROX_STATUSBAR_HEIGHT,
  overlayAccessibilityLabel: 'Close menu',
};

var R = ReactNative.StyleSheet.create({
    wrapper: {
      position: 'absolute',
    },
    shadowMenuContainer: {
      opacity: 0,
      paddingVertical: 8,
      elevation: 8,
    },
  }),
  module679 = require('./679').withTheme(module709);

exports.default = module679;
