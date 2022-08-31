var module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = c(n);
    if (o && o.has(t)) return o.get(t);
    var s = {},
      u = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var l in t)
      if ('default' !== l && Object.prototype.hasOwnProperty.call(t, l)) {
        var p = u ? Object.getOwnPropertyDescriptor(t, l) : null;
        if (p && (p.get || p.set)) Object.defineProperty(s, l, p);
        else s[l] = t[l];
      }

    s.default = t;
    if (o) o.set(t, s);
    return s;
  })(require('react')),
  ReactNative = require('react-native'),
  module1059 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1059')),
  module1105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1105')),
  module1106 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1106'));

function c(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (c = function (t) {
    return t ? o : n;
  })(t);
}

var p = 0.1;
var module1065 = React.memo(function (c) {
  var module1065 = c.interpolationIndex,
    y = c.index,
    h = c.active,
    b = c.closing,
    S = c.gesture,
    C = c.focused,
    E = c.modal,
    x = c.getPreviousScene,
    H = c.getFocusedRoute,
    P = c.headerDarkContent,
    w = c.hasAbsoluteFloatHeader,
    O = c.headerHeight,
    k = c.onHeaderHeightChange,
    I = c.isParentHeaderShown,
    D = c.isNextScreenTransparent,
    M = c.detachCurrentScreen,
    T = c.layout,
    j = c.onCloseRoute,
    R = c.onOpenRoute,
    A = c.onGestureCancel,
    F = c.onGestureEnd,
    G = c.onGestureStart,
    _ = c.onTransitionEnd,
    L = c.onTransitionStart,
    V = c.renderHeader,
    B = c.renderScene,
    W = c.safeAreaInsetBottom,
    N = c.safeAreaInsetLeft,
    q = c.safeAreaInsetRight,
    z = c.safeAreaInsetTop,
    J = c.scene,
    module1065 = React.useContext(require('./1065').HeaderHeightContext),
    Q = module1105.default(
      React.useCallback(
        function () {
          var t = J.descriptor,
            n = t.options;
          return t.navigation.isFocused() && false !== n.keyboardHandlingEnabled;
        },
        [J.descriptor]
      )
    ),
    U = Q.onPageChangeStart,
    X = Q.onPageChangeCancel,
    Y = Q.onPageChangeConfirm,
    Z = {
      top: z,
      right: q,
      bottom: W,
      left: N,
    },
    module586 = require('./586').useTheme().colors,
    ee = React.useState('box-none'),
    te = module23.default(ee, 2),
    re = te[0],
    ne = te[1];

  React.useEffect(
    function () {
      var t,
        n =
          null == (t = J.progress.next)
            ? undefined
            : null == t.addListener
            ? undefined
            : t.addListener(function (t) {
                var n = t.value;
                ne(n <= p ? 'box-none' : 'none');
              });
      return function () {
        var t;
        if (n) null == (t = J.progress.next) || null == t.removeListener || t.removeListener(n);
      };
    },
    [re, J.progress.next]
  );
  var oe,
    ae = J.descriptor.options,
    ie = ae.presentation,
    se = ae.animationEnabled,
    ue = ae.cardOverlay,
    le = ae.cardOverlayEnabled,
    ce = ae.cardShadowEnabled,
    de = ae.cardStyle,
    pe = ae.cardStyleInterpolator,
    fe = ae.gestureDirection,
    ve = ae.gestureEnabled,
    ge = ae.gestureResponseDistance,
    ye = ae.gestureVelocityImpact,
    he = ae.headerMode,
    be = ae.headerShown,
    me = ae.transitionSpec,
    Se = x({
      route: J.descriptor.route,
    });

  if (Se) {
    var Ce = Se.descriptor,
      Ee = Ce.options,
      xe = Ce.route;
    oe = require('./1065').getHeaderTitle(Ee, xe.name);
  }

  var He = React.useMemo(
    function () {
      return undefined !== oe
        ? {
            title: oe,
          }
        : undefined;
    },
    [oe]
  );
  return (
    <module1106.default
      interpolationIndex={module1065}
      gestureDirection={fe}
      layout={T}
      insets={Z}
      gesture={S}
      current={J.progress.current}
      next={J.progress.next}
      closing={b}
      onOpen={function () {
        var t = J.descriptor.route;

        _(
          {
            route: t,
          },
          false
        );

        R({
          route: t,
        });
      }}
      onClose={function () {
        var t = J.descriptor.route;

        _(
          {
            route: t,
          },
          true
        );

        j({
          route: t,
        });
      }}
      overlay={ue}
      overlayEnabled={le}
      shadowEnabled={ce}
      onTransition={function (t) {
        var n = t.closing,
          o = t.gesture,
          s = J.descriptor.route;
        if (o) h && n ? null == Y || Y(false) : null == X || X();
        else if (!(null == Y)) Y(true);
        if (!(null == L))
          L(
            {
              route: s,
            },
            n
          );
      }}
      onGestureBegin={function () {
        var t = J.descriptor.route;
        U();
        G({
          route: t,
        });
      }}
      onGestureCanceled={function () {
        var t = J.descriptor.route;
        X();
        A({
          route: t,
        });
      }}
      onGestureEnd={function () {
        var t = J.descriptor.route;
        F({
          route: t,
        });
      }}
      gestureEnabled={0 !== y && ve}
      gestureResponseDistance={ge}
      gestureVelocityImpact={ye}
      transitionSpec={me}
      styleInterpolator={pe}
      accessibilityElementsHidden={!C}
      importantForAccessibility={C ? 'auto' : 'no-hide-descendants'}
      pointerEvents={h ? 'box-none' : re}
      pageOverflowEnabled={'float' !== he && 'modal' !== ie}
      headerDarkContent={P}
      containerStyle={
        w && 'screen' !== he
          ? {
              marginTop: O,
            }
          : null
      }
      contentStyle={[
        {
          backgroundColor: 'transparentModal' === ie ? 'transparent' : module586.background,
        },
        de,
      ]}
      style={[
        {
          overflow: h ? undefined : 'hidden',
          display: false !== se || false !== D || false === M || C ? 'flex' : 'none',
        },
        ReactNative.StyleSheet.absoluteFill,
      ]}
    >
      <ReactNative.View style={v.container}>
        {React.createElement(
          module1059.default.Provider,
          {
            value: E,
          },
          React.createElement(
            ReactNative.View,
            {
              style: v.scene,
            },
            React.createElement(
              require('./1065').HeaderBackContext.Provider,
              {
                value: He,
              },
              React.createElement(
                require('./1065').HeaderShownContext.Provider,
                {
                  value: I || false !== be,
                },
                React.createElement(
                  require('./1065').HeaderHeightContext.Provider,
                  {
                    value: be ? O : null != module1065 ? module1065 : 0,
                  },
                  B({
                    route: J.descriptor.route,
                  })
                )
              )
            )
          ),
          'float' !== he
            ? V({
                mode: 'screen',
                layout: T,
                scenes: [Se, J],
                getPreviousScene: x,
                getFocusedRoute: H,
                onContentHeightChange: k,
              })
            : null
        )}
      </ReactNative.View>
    </module1106.default>
  );
});
exports.default = module1065;
var v = ReactNative.StyleSheet.create({
  container: {
    flex: 1,
    flexDirection: 'column-reverse',
  },
  scene: {
    flex: 1,
  },
});
