var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = y(n);
    if (o && o.has(t)) return o.get(t);
    var u = {},
      l = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in t)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(t, c)) {
        var s = l ? Object.getOwnPropertyDescriptor(t, c) : null;
        if (s && (s.get || s.set)) Object.defineProperty(u, c, s);
        else u[c] = t[c];
      }

    u.default = t;
    if (o) o.set(t, u);
    return u;
  })(require('react')),
  ReactNative = require('react-native'),
  module740 = require('@babel/runtime/helpers/interopRequireDefault')(require('./740')),
  module734 = require('@babel/runtime/helpers/interopRequireDefault')(require('./734')),
  module719 = require('@babel/runtime/helpers/interopRequireDefault')(require('./719')),
  p = ['visible', 'action', 'duration', 'onDismiss', 'children', 'wrapperStyle', 'style', 'theme'],
  v = ['style', 'label', 'onPress'];

function y(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (y = function (t) {
    return t ? o : n;
  })(t);
}

var b = function (y) {
  var b = y.visible,
    O = y.action,
    I = y.duration,
    h = undefined === I ? 7e3 : I,
    N = y.onDismiss,
    T = y.children,
    E = y.wrapperStyle,
    R = y.style,
    D = y.theme,
    _ = module105.default(y, p),
    P = React.useRef(new ReactNative.Animated.Value(0)).current,
    S = React.useState(!b),
    j = module23.default(S, 2),
    A = j[0],
    V = j[1],
    M = React.useRef(undefined),
    x = D.animation.scale;

  React.useEffect(function () {
    return function () {
      if (M.current) clearTimeout(M.current);
    };
  }, []);
  React.useLayoutEffect(
    function () {
      if (b) {
        if (M.current) clearTimeout(M.current);
        V(false);
        ReactNative.Animated.timing(P, {
          toValue: 1,
          duration: 200 * x,
          useNativeDriver: true,
        }).start(function (t) {
          var n = t.finished;

          if (n) {
            var o = h === Number.POSITIVE_INFINITY || h === Number.NEGATIVE_INFINITY;
            if (n && !o) M.current = setTimeout(N, h);
          }
        });
      } else {
        if (M.current) clearTimeout(M.current);
        ReactNative.Animated.timing(P, {
          toValue: 0,
          duration: 100 * x,
          useNativeDriver: true,
        }).start(function (t) {
          if (t.finished) V(true);
        });
      }
    },
    [b, h, P, x, N]
  );
  var k = D.colors,
    L = D.roundness;
  if (A) return null;
  var U = O || {},
    W = U.style,
    C = U.label,
    F = U.onPress,
    G = module105.default(U, v);
  return (
    <ReactNative.SafeAreaView pointerEvents="box-none" style={[w.wrapper, E]}>
      <module734.default>
        <module719.default
          style={[
            w.content,
            {
              marginRight: O ? 0 : 16,
              color: k.surface,
            },
          ]}
        >
          {T}
        </module719.default>
        {O ? <module740.default>{C}</module740.default> : null}
      </module734.default>
    </ReactNative.SafeAreaView>
  );
};

b.DURATION_SHORT = 4e3;
b.DURATION_MEDIUM = 7e3;
b.DURATION_LONG = 1e4;

var w = ReactNative.StyleSheet.create({
    wrapper: {
      position: 'absolute',
      bottom: 0,
      width: '100%',
    },
    container: {
      elevation: 6,
      flexDirection: 'row',
      justifyContent: 'space-between',
      alignItems: 'center',
      margin: 8,
      borderRadius: 4,
    },
    content: {
      marginLeft: 16,
      marginVertical: 14,
      flexWrap: 'wrap',
      flex: 1,
    },
    button: {
      marginHorizontal: 8,
      marginVertical: 6,
    },
  }),
  module679 = require('./679').withTheme(b);

exports.default = module679;
