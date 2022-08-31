var module35 = require('@babel/runtime/helpers/interopRequireDefault')(require('./35')),
  module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = V(n);
    if (o && o.has(t)) return o.get(t);
    var i = {},
      l = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var u in t)
      if ('default' !== u && Object.prototype.hasOwnProperty.call(t, u)) {
        var c = l ? Object.getOwnPropertyDescriptor(t, u) : null;
        if (c && (c.get || c.set)) Object.defineProperty(i, u, c);
        else i[u] = t[u];
      }

    i.default = t;
    if (o) o.set(t, i);
    return i;
  })(require('react')),
  ReactNative = require('react-native'),
  module681 = require('@babel/runtime/helpers/interopRequireDefault')(require('./681')),
  module712 = require('@babel/runtime/helpers/interopRequireDefault')(require('./712')),
  module715 = require('@babel/runtime/helpers/interopRequireDefault')(require('./715')),
  module734 = require('@babel/runtime/helpers/interopRequireDefault')(require('./734')),
  module737 = require('@babel/runtime/helpers/interopRequireDefault')(require('./737')),
  module722 = require('@babel/runtime/helpers/interopRequireDefault')(require('./722')),
  module719 = require('@babel/runtime/helpers/interopRequireDefault')(require('./719')),
  module742 = require('@babel/runtime/helpers/interopRequireDefault')(require('./742')),
  module744 = require('@babel/runtime/helpers/interopRequireDefault')(require('./744')),
  module745 = require('@babel/runtime/helpers/interopRequireDefault')(require('./745')),
  module746 = require('@babel/runtime/helpers/interopRequireDefault')(require('./746')),
  module747 = require('@babel/runtime/helpers/interopRequireDefault')(require('./747')),
  k = ['route', 'style', 'children', 'borderless', 'centered', 'rippleColor'],
  C = ['component'];

function V(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (V = function (t) {
    return t ? o : n;
  })(t);
}

var module748 = require('./748').getBottomSpace(),
  A = 'web' === ReactNative.Platform.OS ? 0 : 9999,
  O = function (t) {
    t.route;
    var n = t.style,
      c = t.children,
      s = t.borderless,
      f = t.centered,
      p = t.rippleColor,
      b = module105.default(t, k);
    return module722.default.supported ? (
      <module722.default>{c}</module722.default>
    ) : (
      <ReactNative.TouchableWithoutFeedback>
        <ReactNative.View style={n}>{c}</ReactNative.View>
      </ReactNative.TouchableWithoutFeedback>
    );
  },
  P = React.memo(function (t) {
    var n = t.component,
      o = module105.default(t, C);
    return <n />;
  }),
  j = function (o) {
    var i,
      y,
      k,
      C = o.navigationState,
      V = o.renderScene,
      P = o.renderIcon,
      j = o.renderLabel,
      M = o.renderTouchable,
      D =
        undefined === M
          ? function (t) {
              return <O />;
            }
          : M,
      W = o.getLabelText,
      z =
        undefined === W
          ? function (t) {
              return t.route.title;
            }
          : W,
      I = o.getBadge,
      F =
        undefined === I
          ? function (t) {
              return t.route.badge;
            }
          : I,
      L = o.getColor,
      _ =
        undefined === L
          ? function (t) {
              return t.route.color;
            }
          : L,
      B = o.getAccessibilityLabel,
      H =
        undefined === B
          ? function (t) {
              return t.route.accessibilityLabel;
            }
          : B,
      N = o.getTestID,
      Y =
        undefined === N
          ? function (t) {
              return t.route.testID;
            }
          : N,
      q = o.activeColor,
      G = o.inactiveColor,
      J = o.keyboardHidesNavigationBar,
      K = undefined === J || J,
      Q = o.barStyle,
      U = o.labeled,
      X = undefined === U || U,
      Z = o.style,
      $ = o.theme,
      ee = o.sceneAnimationEnabled,
      te = undefined !== ee && ee,
      ne = o.onTabPress,
      re = o.onIndexChange,
      ae = o.shifting,
      oe = undefined === ae ? C.routes.length > 3 : ae,
      ie = o.safeAreaInsets,
      le = o.labelMaxFontSizeMultiplier,
      ue = undefined === le ? 1 : le,
      ce = $.animation.scale,
      de = C.routes[C.index].key,
      se = module742.default(1),
      fe = module744.default(
        C.routes.map(function (t, n) {
          return n === C.index ? 1 : 0;
        })
      ),
      pe = module744.default(
        C.routes.map(function (t, n) {
          return n === C.index ? 0 : 1;
        })
      ),
      me = module742.default(C.index),
      be = module742.default(0.001),
      ge = module745.default(),
      ye = module23.default(ge, 2),
      ve = ye[0],
      he = ye[1],
      Ee = React.useState([de]),
      we = module23.default(Ee, 2),
      Se = we[0],
      xe = we[1];

    if (!Se.includes(de))
      xe(function (n) {
        return [].concat(module35.default(n), [de]);
      });
    var ke = React.useState(false),
      Ce = module23.default(ke, 2),
      Ve = Ce[0],
      Re = Ce[1],
      Ae = React.useCallback(
        function () {
          Re(true);
          ReactNative.Animated.timing(se, {
            toValue: 0,
            duration: 150 * ce,
            useNativeDriver: true,
          }).start();
        },
        [ce, se]
      ),
      Oe = React.useCallback(
        function () {
          ReactNative.Animated.timing(se, {
            toValue: 1,
            duration: 100 * ce,
            useNativeDriver: true,
          }).start(function () {
            Re(false);
          });
        },
        [ce, se]
      ),
      Pe = React.useCallback(
        function (n) {
          be.setValue(0.001);
          ReactNative.Animated.parallel(
            [
              ReactNative.Animated.timing(be, {
                toValue: 1,
                duration: oe ? 400 * ce : 0,
                useNativeDriver: true,
              }),
            ].concat(
              module35.default(
                C.routes.map(function (t, o) {
                  return ReactNative.Animated.timing(fe[o], {
                    toValue: o === n ? 1 : 0,
                    duration: oe ? 150 * ce : 0,
                    useNativeDriver: true,
                  });
                })
              )
            )
          ).start(function (t) {
            var o = t.finished;
            fe.map(function (t, o) {
              return t.setValue(o === n ? 1 : 0);
            });
            me.setValue(n);
            be.setValue(0.001);
            if (o)
              pe.forEach(function (t, o) {
                if (o === n) t.setValue(0);
                else t.setValue(1);
              });
          });
        },
        [me, oe, C.routes, pe, be, ce, fe]
      );
    React.useEffect(function () {
      Pe(C.index);
    }, []);
    module746.default({
      onShow: Ae,
      onHide: Oe,
    });
    var je = React.useRef();
    React.useEffect(
      function () {
        pe.forEach(function (t, n) {
          var o;
          if (!(n !== C.index && n !== (null == (o = je.current) ? undefined : o.index))) t.setValue(0);
        });
        Pe(C.index);
      },
      [C.index, Pe, pe]
    );

    var Me = function (t) {
        var n = {
          route: C.routes[t],
          defaultPrevented: false,
          preventDefault: function () {
            n.defaultPrevented = true;
          },
        };
        if (!(null == ne)) ne(n);
        if (!n.defaultPrevented) t !== C.index && re(t);
      },
      Te = React.useCallback(
        function (t) {
          var n = C.routes.findIndex(function (n) {
            return n.key === t;
          });
          re(n);
        },
        [C.routes, re]
      ),
      De = C.routes,
      We = $.colors,
      ze = $.dark,
      Ie = $.mode,
      Fe = ReactNative.StyleSheet.flatten(Q) || {},
      Le = Fe.backgroundColor,
      _e = Fe.elevation,
      Be = undefined === _e ? 4 : _e,
      He = Le || (ze && 'adaptive' === Ie ? module712.default(Be, We.surface) : We.primary),
      Ne = oe
        ? me.interpolate({
            inputRange: De.map(function (t, n) {
              return n;
            }),
            outputRange: De.map(function (t) {
              return (
                _({
                  route: t,
                }) || He
              );
            }),
          })
        : He,
      module691 = 'string' != typeof He || !module681.default(He).isLight() ? require('./691').white : require('./691').black,
      qe = undefined !== q ? q : module691,
      Ge = undefined !== G ? G : module681.default(module691).alpha(0.5).rgb().string(),
      Je = module681
        .default(q || qe)
        .alpha(0.12)
        .rgb()
        .string(),
      Ke = (De.length > 3 ? 96 : 168) * De.length,
      Qe = ve.width ** Ke / De.length,
      Ue = ve.width / 4,
      Xe = {
        left: null != (i = null == ie ? undefined : ie.left) ? i : 0,
        right: null != (y = null == ie ? undefined : ie.right) ? y : 0,
        bottom: null != (k = null == ie ? undefined : ie.bottom) ? k : module748,
      };

    return (
      <ReactNative.View style={[T.container, Z]}>
        <ReactNative.View
          style={[
            T.content,
            {
              backgroundColor: We.background,
            },
          ]}
        >
          {De.map(function (t, n) {
            if (!Se.includes(t.key)) return null;
            var o = C.index === n,
              i = te ? fe[n] : o ? 1 : 0,
              c = te
                ? pe[n].interpolate({
                    inputRange: [0, 1],
                    outputRange: [0, A],
                  })
                : o
                ? 0
                : A;
            return (
              <module747.default
                key={t.key}
                pointerEvents={o ? 'auto' : 'none'}
                accessibilityElementsHidden={!o}
                importantForAccessibility={o ? 'auto' : 'no-hide-descendants'}
                index={n}
                visibility={i}
                style={[
                  ReactNative.StyleSheet.absoluteFill,
                  {
                    opacity: i,
                  },
                ]}
                collapsable={false}
                removeClippedSubviews={'ios' !== ReactNative.Platform.OS || C.index !== n}
              >
                {React.createElement(
                  ReactNative.Animated.View,
                  {
                    style: [
                      T.content,
                      {
                        top: c,
                      },
                    ],
                  },
                  V({
                    route: t,
                    jumpTo: Te,
                  })
                )}
              </module747.default>
            );
          })}
        </ReactNative.View>
        <module734.default
          style={[
            T.bar,
            K
              ? {
                  transform: [
                    {
                      translateY: se.interpolate({
                        inputRange: [0, 1],
                        outputRange: [ve.height, 0],
                      }),
                    },
                  ],
                  position: Ve ? 'absolute' : null,
                }
              : null,
            Q,
          ]}
          pointerEvents={ve.measured ? (K && Ve ? 'none' : 'auto') : 'none'}
          onLayout={he}
        >
          {React.createElement(
            ReactNative.Animated.View,
            {
              style: [
                T.barContent,
                {
                  backgroundColor: Ne,
                },
              ],
            },
            React.createElement(
              ReactNative.View,
              {
                style: [
                  T.items,
                  {
                    marginBottom: Xe.bottom,
                    marginHorizontal: Xe.left ** Xe.right,
                    maxWidth: Ke,
                  },
                ],
                accessibilityRole: 'tablist',
              },
              oe
                ? React.createElement(ReactNative.Animated.View, {
                    pointerEvents: 'none',
                    style: [
                      T.ripple,
                      {
                        top: (56 - Ue) / 2,
                        left: Qe * (C.index + 0.5) - Ue / 2,
                        height: Ue,
                        width: Ue,
                        borderRadius: Ue / 2,
                        backgroundColor: _({
                          route: De[C.index],
                        }),
                        transform: [
                          {
                            scale: be.interpolate({
                              inputRange: [0, 1],
                              outputRange: [0, 8],
                            }),
                          },
                        ],
                        opacity: be.interpolate({
                          inputRange: [0, 0.001, 0.3, 1],
                          outputRange: [0, 0, 1, 1],
                        }),
                      },
                    ],
                  })
                : null,
              De.map(function (t, n) {
                var o = C.index === n,
                  i = fe[n],
                  c =
                    X && oe
                      ? i.interpolate({
                          inputRange: [0, 1],
                          outputRange: [0.5, 1],
                        })
                      : 1,
                  s = X
                    ? oe
                      ? i.interpolate({
                          inputRange: [0, 1],
                          outputRange: [7, 0],
                        })
                      : 0
                    : 7,
                  p = i,
                  y = i.interpolate({
                    inputRange: [0, 1],
                    outputRange: [1, 0],
                  }),
                  h = F({
                    route: t,
                  });
                return D({
                  key: t.key,
                  route: t,
                  borderless: true,
                  centered: true,
                  rippleColor: Je,
                  onPress: function () {
                    return Me(n);
                  },
                  testID: Y({
                    route: t,
                  }),
                  accessibilityLabel: H({
                    route: t,
                  }),
                  accessibilityTraits: o ? ['button', 'selected'] : 'button',
                  accessibilityComponentType: 'button',
                  accessibilityRole: 'ios' === ReactNative.Platform.OS ? 'button' : 'tab',
                  accessibilityState: {
                    selected: o,
                  },
                  style: T.item,
                  children: React.createElement(
                    ReactNative.View,
                    {
                      pointerEvents: 'none',
                    },
                    React.createElement(
                      ReactNative.Animated.View,
                      {
                        style: [
                          T.iconContainer,
                          {
                            transform: [
                              {
                                translateY: s,
                              },
                            ],
                          },
                        ],
                      },
                      React.createElement(
                        ReactNative.Animated.View,
                        {
                          style: [
                            T.iconWrapper,
                            {
                              opacity: p,
                            },
                          ],
                        },
                        P
                          ? P({
                              route: t,
                              focused: true,
                              color: qe,
                            })
                          : React.createElement(module715.default, {
                              source: t.icon,
                              color: qe,
                              size: 24,
                            })
                      ),
                      React.createElement(
                        ReactNative.Animated.View,
                        {
                          style: [
                            T.iconWrapper,
                            {
                              opacity: y,
                            },
                          ],
                        },
                        P
                          ? P({
                              route: t,
                              focused: false,
                              color: Ge,
                            })
                          : React.createElement(module715.default, {
                              source: t.icon,
                              color: Ge,
                              size: 24,
                            })
                      ),
                      React.createElement(
                        ReactNative.View,
                        {
                          style: [
                            T.badgeContainer,
                            {
                              right: (null != h && 'boolean' != typeof h ? -2 * String(h).length : 0) - 2,
                            },
                          ],
                        },
                        'boolean' == typeof h
                          ? React.createElement(module737.default, {
                              visible: h,
                              size: 8,
                            })
                          : React.createElement(
                              module737.default,
                              {
                                visible: null != h,
                                size: 16,
                              },
                              h
                            )
                      )
                    ),
                    X
                      ? React.createElement(
                          ReactNative.Animated.View,
                          {
                            style: [
                              T.labelContainer,
                              {
                                transform: [
                                  {
                                    scale: c,
                                  },
                                ],
                              },
                            ],
                          },
                          React.createElement(
                            ReactNative.Animated.View,
                            {
                              style: [
                                T.labelWrapper,
                                {
                                  opacity: p,
                                },
                              ],
                            },
                            j
                              ? j({
                                  route: t,
                                  focused: true,
                                  color: qe,
                                })
                              : React.createElement(
                                  module719.default,
                                  {
                                    maxFontSizeMultiplier: ue,
                                    style: [
                                      T.label,
                                      {
                                        color: qe,
                                      },
                                    ],
                                  },
                                  z({
                                    route: t,
                                  })
                                )
                          ),
                          oe
                            ? null
                            : React.createElement(
                                ReactNative.Animated.View,
                                {
                                  style: [
                                    T.labelWrapper,
                                    {
                                      opacity: y,
                                    },
                                  ],
                                },
                                j
                                  ? j({
                                      route: t,
                                      focused: false,
                                      color: Ge,
                                    })
                                  : React.createElement(
                                      module719.default,
                                      {
                                        maxFontSizeMultiplier: ue,
                                        selectable: false,
                                        style: [
                                          T.label,
                                          {
                                            color: Ge,
                                          },
                                        ],
                                      },
                                      z({
                                        route: t,
                                      })
                                    )
                              )
                        )
                      : React.createElement(ReactNative.View, {
                          style: T.labelContainer,
                        })
                  ),
                });
              })
            )
          )}
        </module734.default>
      </ReactNative.View>
    );
  };

j.SceneMap = function (t) {
  return function (n) {
    var o = n.route,
      i = n.jumpTo;
    return React.createElement(P, {
      key: o.key,
      component: t[o.key ? o.key : ''],
      route: o,
      jumpTo: i,
    });
  };
};

var module679 = require('./679').withTheme(j);

exports.default = module679;
var T = ReactNative.StyleSheet.create({
  container: {
    flex: 1,
    overflow: 'hidden',
  },
  content: {
    flex: 1,
  },
  bar: {
    left: 0,
    right: 0,
    bottom: 0,
    elevation: 4,
  },
  barContent: {
    alignItems: 'center',
    overflow: 'hidden',
  },
  items: module29.default(
    {
      flexDirection: 'row',
    },
    'web' === ReactNative.Platform.OS
      ? {
          width: '100%',
        }
      : null
  ),
  item: {
    flex: 1,
    paddingVertical: 6,
  },
  ripple: {
    position: 'absolute',
  },
  iconContainer: {
    height: 24,
    width: 24,
    marginTop: 2,
    marginHorizontal: 12,
    alignSelf: 'center',
  },
  iconWrapper: module29.default({}, ReactNative.StyleSheet.absoluteFillObject, {
    alignItems: 'center',
  }),
  labelContainer: {
    height: 16,
    paddingBottom: 2,
  },
  labelWrapper: module29.default({}, ReactNative.StyleSheet.absoluteFillObject),
  label: module29.default(
    {
      fontSize: 12,
      height: 56,
      textAlign: 'center',
      backgroundColor: 'transparent',
    },
    'web' === ReactNative.Platform.OS
      ? {
          whiteSpace: 'nowrap',
          alignSelf: 'center',
        }
      : null
  ),
  badgeContainer: {
    position: 'absolute',
    left: 0,
    top: -2,
  },
});
