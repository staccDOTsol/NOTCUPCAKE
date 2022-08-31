exports.default = function (c) {
  var f = React.useState(undefined),
    y = module23.default(f, 2),
    s = y[0],
    S = y[1],
    B = React.useState(undefined),
    k = module23.default(B, 2),
    b = k[0],
    p = k[1],
    v = function (e) {
      var t = e.nativeEvent.layout,
        n = t.height,
        l = t.width;
      p(function (e) {
        return e && n === e.height && l === e.width
          ? e
          : {
              height: n,
              width: l,
            };
      });
    },
    L = function (e) {
      var t = e.nativeEvent.layout,
        n = t.height,
        l = t.width;
      if (!(s && n === s.height && l === s.width))
        S({
          height: n,
          width: l,
        });
    },
    T = module1064.default(function (e, t, n, l, o, h, u) {
      return e({
        current: {
          progress: n,
        },
        next: l && {
          progress: l,
        },
        layouts: {
          header: {
            height: u,
            width: t.width,
          },
          screen: t,
          title: o,
          leftLabel: h,
        },
      });
    }),
    w = c.progress,
    C = c.layout,
    O = c.modal,
    H = c.onGoBack,
    I = c.headerTitle,
    P = c.headerLeft,
    module1065 =
      undefined === P
        ? H
          ? function (e) {
              return React.createElement(require('./1065').HeaderBackButton, e);
            }
          : undefined
        : P,
    D = c.headerRight,
    R = c.headerBackImage,
    _ = c.headerBackTitle,
    E = c.headerBackTitleVisible,
    M = undefined === E ? 'ios' === ReactNative.Platform.OS : E,
    A = c.headerTruncatedBackTitle,
    G = c.headerBackAccessibilityLabel,
    F = c.headerBackTestID,
    V = c.headerBackAllowFontScaling,
    W = c.headerBackTitleStyle,
    x = c.headerTitleContainerStyle,
    q = c.headerLeftContainerStyle,
    z = c.headerRightContainerStyle,
    J = c.headerBackgroundContainerStyle,
    K = c.headerStyle,
    N = c.headerStatusBarHeight,
    Q = c.styleInterpolator,
    U = module105.default(c, u),
    module1065 = require('./1065').getDefaultHeaderHeight(C, O, N),
    Y = ReactNative.StyleSheet.flatten(K || {}).height,
    Z = undefined === Y ? module1065 : Y,
    $ = T(Q, C, w.current, w.next, b, _ ? s : undefined, 'number' == typeof Z ? Z : module1065),
    ee = $.titleStyle,
    te = $.leftButtonStyle,
    ae = $.leftLabelStyle,
    re = $.rightButtonStyle,
    ne = $.backgroundStyle,
    le = module1065
      ? function (t) {
          return module1065(
            module29.default({}, t, {
              backImage: R,
              accessibilityLabel: G,
              testID: F,
              allowFontScaling: V,
              onPress: H,
              label: _,
              truncatedLabel: A,
              labelStyle: [ae, W],
              onLabelLayout: L,
              screenLayout: C,
              titleLayout: b,
              canGoBack: Boolean(H),
            })
          );
        }
      : undefined,
    ie = D
      ? function (t) {
          return D(
            module29.default({}, t, {
              canGoBack: Boolean(H),
            })
          );
        }
      : undefined,
    module1065 =
      'function' != typeof I
        ? function (t) {
            return React.createElement(
              require('./1065').HeaderTitle,
              module29.default({}, t, {
                onLayout: v,
              })
            );
          }
        : function (t) {
            return I(
              module29.default({}, t, {
                onLayout: v,
              })
            );
          };

  return React.createElement(
    require('./1065').Header,
    module29.default(
      {
        modal: O,
        layout: C,
        headerTitle: module1065,
        headerLeft: le,
        headerLeftLabelVisible: M,
        headerRight: ie,
        headerTitleContainerStyle: [ee, x],
        headerLeftContainerStyle: [te, q],
        headerRightContainerStyle: [re, z],
        headerBackgroundContainerStyle: [ne, J],
        headerStyle: K,
        headerStatusBarHeight: N,
      },
      U
    )
  );
};

var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  React = (function (e, t) {
    if (!t && e && e.__esModule) return e;
    if (null === e || ('object' != typeof e && 'function' != typeof e))
      return {
        default: e,
      };
    var n = c(t);
    if (n && n.has(e)) return n.get(e);
    var l = {},
      o = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var h in e)
      if ('default' !== h && Object.prototype.hasOwnProperty.call(e, h)) {
        var u = o ? Object.getOwnPropertyDescriptor(e, h) : null;
        if (u && (u.get || u.set)) Object.defineProperty(l, h, u);
        else l[h] = e[h];
      }

    l.default = e;
    if (n) n.set(e, l);
    return l;
  })(require('react')),
  ReactNative = require('react-native'),
  module1064 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1064')),
  u = [
    'progress',
    'layout',
    'modal',
    'onGoBack',
    'headerTitle',
    'headerLeft',
    'headerRight',
    'headerBackImage',
    'headerBackTitle',
    'headerBackTitleVisible',
    'headerTruncatedBackTitle',
    'headerBackAccessibilityLabel',
    'headerBackTestID',
    'headerBackAllowFontScaling',
    'headerBackTitleStyle',
    'headerTitleContainerStyle',
    'headerLeftContainerStyle',
    'headerRightContainerStyle',
    'headerBackgroundContainerStyle',
    'headerStyle',
    'headerStatusBarHeight',
    'styleInterpolator',
  ];

function c(e) {
  if ('function' != typeof WeakMap) return null;
  var t = new WeakMap(),
    n = new WeakMap();
  return (c = function (e) {
    return e ? n : t;
  })(e);
}
