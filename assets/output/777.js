exports.default = function (t) {
  var s = t.dismissable,
    y = undefined === s || s,
    E = t.visible,
    h = undefined !== E && E,
    k = t.overlayAccessibilityLabel,
    w = undefined === k ? 'Close modal' : k,
    j = t.onDismiss,
    O = t.children,
    S = t.contentContainerStyle,
    P = t.style,
    A = React.useRef(h);
  React.useEffect(function () {
    A.current = h;
  });

  var module679 = require('./679').useTheme(),
    C = module679.colors,
    M = module679.animation,
    V = module742.default(h ? 1 : 0),
    _ = React.useState(h),
    D = module23.default(_, 2),
    L = D[0],
    R = D[1];

  if (h && !L) R(true);

  var F = function () {
      if (y) x();
      return true;
    },
    W = React.useRef(undefined),
    module709 = function () {
      var t;
      if (!(null == (t = W.current))) t.remove();
      W.current = require('./709').addEventListener(ReactNative.BackHandler, 'hardwareBackPress', F);
      var n = M.scale;
      ReactNative.Animated.timing(V, {
        toValue: 1,
        duration: n * f,
        easing: ReactNative.Easing.out(ReactNative.Easing.cubic),
        useNativeDriver: true,
      }).start();
    },
    T = function () {
      var t, n;
      if (null != (t = W.current) && t.remove) {
        if (!(null == (n = W.current))) n.remove();
      } else ReactNative.BackHandler.removeEventListener('hardwareBackPress', F);
    },
    x = function () {
      T();
      var t = M.scale;
      ReactNative.Animated.timing(V, {
        toValue: 0,
        duration: t * f,
        easing: ReactNative.Easing.out(ReactNative.Easing.cubic),
        useNativeDriver: true,
      }).start(function (t) {
        var n = t.finished;

        if (n) {
          if (h && j) j();
          if (A.current) module709();
          else R(false);
        }
      });
    },
    N = React.useRef(null);

  React.useEffect(function () {
    if (N.current !== h) h ? module709() : x();
    N.current = h;
  });
  React.useEffect(function () {
    return T;
  }, []);
  return L
    ? React.createElement(
        ReactNative.Animated.View,
        {
          pointerEvents: h ? 'auto' : 'none',
          accessibilityViewIsModal: true,
          accessibilityLiveRegion: 'polite',
          style: ReactNative.StyleSheet.absoluteFill,
          onAccessibilityEscape: x,
        },
        React.createElement(
          ReactNative.TouchableWithoutFeedback,
          {
            accessibilityLabel: w,
            accessibilityRole: 'button',
            disabled: !y,
            onPress: y ? x : undefined,
            importantForAccessibility: 'no',
          },
          React.createElement(ReactNative.Animated.View, {
            style: [
              p.backdrop,
              {
                backgroundColor: C.backdrop,
                opacity: V,
              },
            ],
          })
        ),
        React.createElement(
          ReactNative.View,
          {
            style: [
              p.wrapper,
              {
                marginTop: module748,
                marginBottom: module748,
              },
              P,
            ],
            pointerEvents: 'box-none',
          },
          React.createElement(
            module734.default,
            {
              style: [
                {
                  opacity: V,
                },
                p.content,
                S,
              ],
            },
            O
          )
        )
      )
    : null;
};

var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = s(n);
    if (o && o.has(t)) return o.get(t);
    var c = {},
      u = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var l in t)
      if ('default' !== l && Object.prototype.hasOwnProperty.call(t, l)) {
        var f = u ? Object.getOwnPropertyDescriptor(t, l) : null;
        if (f && (f.get || f.set)) Object.defineProperty(c, l, f);
        else c[l] = t[l];
      }

    c.default = t;
    if (o) o.set(t, c);
    return c;
  })(require('react')),
  ReactNative = require('react-native'),
  module734 = require('@babel/runtime/helpers/interopRequireDefault')(require('./734')),
  module742 = require('@babel/runtime/helpers/interopRequireDefault')(require('./742'));

function s(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (s = function (t) {
    return t ? o : n;
  })(t);
}

var f = 220,
  module748 = require('./748').getStatusBarHeight(true),
  module748 = require('./748').getBottomSpace();

var p = ReactNative.StyleSheet.create({
  backdrop: {
    flex: 1,
  },
  wrapper: module29.default({}, ReactNative.StyleSheet.absoluteFillObject, {
    justifyContent: 'center',
  }),
  content: {
    backgroundColor: 'transparent',
    justifyContent: 'center',
  },
});
