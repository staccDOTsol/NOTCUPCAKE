exports.default = function (f) {
  module105.default(N, u);

  var module1074 = require('./1074').useSafeAreaInsets(),
    module1074 = require('./1074').useSafeAreaFrame(),
    R = React.useContext(module1071.default),
    C = f.layout,
    S = undefined === C ? module1074 : C,
    w = f.modal,
    E = undefined !== w && w,
    v = f.title,
    W = f.headerTitle,
    x = f.headerTitleAlign,
    T =
      undefined === x
        ? ReactNative.Platform.select({
            ios: 'center',
            default: 'left',
          })
        : x,
    B = f.headerLeft,
    O = f.headerLeftLabelVisible,
    L = f.headerTransparent,
    j = f.headerTintColor,
    V = f.headerBackground,
    A = f.headerRight,
    P = f.headerTitleAllowFontScaling,
    k = f.headerTitleStyle,
    H = f.headerLeftContainerStyle,
    M = f.headerRightContainerStyle,
    _ = f.headerTitleContainerStyle,
    F = f.headerBackgroundContainerStyle,
    I = f.headerStyle,
    D = f.headerShadowVisible,
    z = f.headerPressColor,
    G = f.headerPressOpacity,
    q = f.headerStatusBarHeight,
    J = undefined === q ? (R ? 0 : module1074.top) : q,
    K = module1067.default(S, E, J),
    N = ReactNative.StyleSheet.flatten(I || {}),
    Q = N.height,
    U = undefined === Q ? K : Q,
    X = N.minHeight,
    Y = N.maxHeight,
    Z = N.backgroundColor,
    $ = N.borderBottomColor,
    ee = N.borderBottomEndRadius,
    te = N.borderBottomLeftRadius,
    re = N.borderBottomRightRadius,
    oe = N.borderBottomStartRadius,
    de = N.borderBottomWidth,
    ae = N.borderColor,
    ie = N.borderEndColor,
    ne = N.borderEndWidth,
    le = N.borderLeftColor,
    se = N.borderLeftWidth,
    he = N.borderRadius,
    be = N.borderRightColor,
    ue = N.borderRightWidth,
    fe = N.borderStartColor,
    pe = N.borderStartWidth,
    ce = N.borderStyle,
    me = N.borderTopColor,
    ge = N.borderTopEndRadius,
    ye = N.borderTopLeftRadius,
    Re = N.borderTopRightRadius,
    Ce = N.borderTopStartRadius,
    Se = N.borderTopWidth,
    we = N.borderWidth,
    Ee = N.boxShadow,
    ve = N.elevation,
    We = N.shadowColor,
    xe = N.shadowOffset,
    Te = N.shadowOpacity,
    Be = N.shadowRadius,
    Oe = N.opacity,
    Le = N.transform,
    je = {
      backgroundColor: Z,
      borderBottomColor: $,
      borderBottomEndRadius: ee,
      borderBottomLeftRadius: te,
      borderBottomRightRadius: re,
      borderBottomStartRadius: oe,
      borderBottomWidth: de,
      borderColor: ae,
      borderEndColor: ie,
      borderEndWidth: ne,
      borderLeftColor: le,
      borderLeftWidth: se,
      borderRadius: he,
      borderRightColor: be,
      borderRightWidth: ue,
      borderStartColor: fe,
      borderStartWidth: pe,
      borderStyle: ce,
      borderTopColor: me,
      borderTopEndRadius: ge,
      borderTopLeftRadius: ye,
      borderTopRightRadius: Re,
      borderTopStartRadius: Ce,
      borderTopWidth: Se,
      borderWidth: we,
      boxShadow: Ee,
      elevation: ve,
      shadowColor: We,
      shadowOffset: xe,
      shadowOpacity: Te,
      shadowRadius: Be,
      opacity: Oe,
      transform: Le,
    };

  for (var Ve in je) undefined === je[Ve] && delete je[Ve];

  var Ae = [
      je,
      false === D && {
        elevation: 0,
        shadowOpacity: 0,
        borderBottomWidth: 0,
      },
    ],
    Pe = B
      ? B({
          tintColor: j,
          pressColor: z,
          pressOpacity: G,
          labelVisible: O,
        })
      : null,
    ke = A
      ? A({
          tintColor: j,
          pressColor: z,
          pressOpacity: G,
        })
      : null,
    He =
      'function' != typeof W
        ? function (t) {
            return <module1073.default />;
          }
        : W;
  return (
    <React.Fragment>
      {React.createElement(
        ReactNative.Animated.View,
        {
          pointerEvents: 'box-none',
          style: [
            ReactNative.StyleSheet.absoluteFill,
            {
              zIndex: 0,
            },
            F,
          ],
        },
        V
          ? V({
              style: Ae,
            })
          : L
          ? null
          : React.createElement(module1070.default, {
              style: Ae,
            })
      )}
      {React.createElement(
        ReactNative.Animated.View,
        {
          pointerEvents: 'box-none',
          style: [
            {
              height: U,
              minHeight: X,
              maxHeight: Y,
              opacity: Oe,
              transform: Le,
            },
          ],
        },
        React.createElement(ReactNative.View, {
          pointerEvents: 'none',
          style: {
            height: J,
          },
        }),
        React.createElement(
          ReactNative.View,
          {
            pointerEvents: 'box-none',
            style: p.content,
          },
          React.createElement(
            ReactNative.Animated.View,
            {
              pointerEvents: 'box-none',
              style: [
                p.left,
                'center' === T && p.expand,
                {
                  marginStart: module1074.left,
                },
                H,
              ],
            },
            Pe
          ),
          React.createElement(
            ReactNative.Animated.View,
            {
              pointerEvents: 'box-none',
              style: [
                p.title,
                {
                  maxWidth:
                    'center' === T
                      ? S.width - 2 * ((Pe ? (false !== O ? 80 : 32) : 16) + module1074.left ** module1074.right)
                      : S.width - ((Pe ? 72 : 16) + (ke ? 72 : 16) + module1074.left - module1074.right),
                },
                _,
              ],
            },
            He({
              children: v,
              allowFontScaling: P,
              tintColor: j,
              style: k,
            })
          ),
          React.createElement(
            ReactNative.Animated.View,
            {
              pointerEvents: 'box-none',
              style: [
                p.right,
                p.expand,
                {
                  marginEnd: module1074.right,
                },
                M,
              ],
            },
            ke
          )
        )
      )}
    </React.Fragment>
  );
};

var module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, o) {
    if (!o && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var n = f(o);
    if (n && n.has(t)) return n.get(t);
    var l = {},
      s = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var h in t)
      if ('default' !== h && Object.prototype.hasOwnProperty.call(t, h)) {
        var b = s ? Object.getOwnPropertyDescriptor(t, h) : null;
        if (b && (b.get || b.set)) Object.defineProperty(l, h, b);
        else l[h] = t[h];
      }

    l.default = t;
    if (n) n.set(t, l);
    return l;
  })(require('react')),
  ReactNative = require('react-native'),
  module1067 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1067')),
  module1070 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1070')),
  module1071 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1071')),
  module1073 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1073')),
  u = [
    'height',
    'minHeight',
    'maxHeight',
    'backgroundColor',
    'borderBottomColor',
    'borderBottomEndRadius',
    'borderBottomLeftRadius',
    'borderBottomRightRadius',
    'borderBottomStartRadius',
    'borderBottomWidth',
    'borderColor',
    'borderEndColor',
    'borderEndWidth',
    'borderLeftColor',
    'borderLeftWidth',
    'borderRadius',
    'borderRightColor',
    'borderRightWidth',
    'borderStartColor',
    'borderStartWidth',
    'borderStyle',
    'borderTopColor',
    'borderTopEndRadius',
    'borderTopLeftRadius',
    'borderTopRightRadius',
    'borderTopStartRadius',
    'borderTopWidth',
    'borderWidth',
    'boxShadow',
    'elevation',
    'shadowColor',
    'shadowOffset',
    'shadowOpacity',
    'shadowRadius',
    'opacity',
    'transform',
  ];

function f(t) {
  if ('function' != typeof WeakMap) return null;
  var o = new WeakMap(),
    n = new WeakMap();
  return (f = function (t) {
    return t ? n : o;
  })(t);
}

var p = ReactNative.StyleSheet.create({
  content: {
    flex: 1,
    flexDirection: 'row',
    alignItems: 'stretch',
  },
  title: {
    marginHorizontal: 16,
    justifyContent: 'center',
  },
  left: {
    justifyContent: 'center',
    alignItems: 'flex-start',
  },
  right: {
    justifyContent: 'center',
    alignItems: 'flex-end',
  },
  expand: {
    flexGrow: 1,
    flexBasis: 0,
  },
});
