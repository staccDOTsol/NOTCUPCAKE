var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (e, t) {
    if (!t && e && e.__esModule) return e;
    if (null === e || ('object' != typeof e && 'function' != typeof e))
      return {
        default: e,
      };
    var n = h(t);
    if (n && n.has(e)) return n.get(e);
    var u = {},
      o = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var l in e)
      if ('default' !== l && Object.prototype.hasOwnProperty.call(e, l)) {
        var f = o ? Object.getOwnPropertyDescriptor(e, l) : null;
        if (f && (f.get || f.set)) Object.defineProperty(u, l, f);
        else u[l] = e[l];
      }

    u.default = e;
    if (n) n.set(e, u);
    return u;
  })(require('react')),
  ReactNative = require('react-native'),
  module806 = require('@babel/runtime/helpers/interopRequireDefault')(require('./806')),
  module815 = require('@babel/runtime/helpers/interopRequireDefault')(require('./815')),
  module808 = require('@babel/runtime/helpers/interopRequireDefault')(require('./808')),
  module809 = require('@babel/runtime/helpers/interopRequireDefault')(require('./809')),
  s = ['mode', 'dense', 'disabled', 'error', 'multiline', 'editable', 'render'];

function h(e) {
  if ('function' != typeof WeakMap) return null;
  var t = new WeakMap(),
    n = new WeakMap();
  return (h = function (e) {
    return e ? n : t;
  })(e);
}

var p = React.forwardRef(function (c, v) {
  var h = c.mode,
    p = undefined === h ? 'flat' : h,
    y = c.dense,
    b = undefined !== y && y,
    w = c.disabled,
    x = undefined !== w && w,
    L = c.error,
    A = undefined !== L && L,
    E = c.multiline,
    F = undefined !== E && E,
    S = c.editable,
    T = undefined === S || S,
    O = c.render,
    R =
      undefined === O
        ? function (e) {
            return <ReactNative.TextInput />;
          }
        : O,
    C = module105.default(c, s),
    M = undefined !== C.value,
    P = M ? C.value : C.defaultValue,
    j = React.useRef(new ReactNative.Animated.Value(P ? 0 : 1)).current,
    V = React.useRef(new ReactNative.Animated.Value(A ? 1 : 0)).current,
    D = React.useState(false),
    N = module23.default(D, 2),
    _ = N[0],
    B = N[1],
    k = React.useState(''),
    z = module23.default(k, 2),
    I = z[0],
    W = z[1],
    H = React.useState(P),
    q = module23.default(H, 2),
    G = q[0],
    J = q[1],
    K = M ? C.value : G,
    Q = React.useState({
      measured: false,
      width: 0,
      height: 0,
    }),
    U = module23.default(Q, 2),
    X = U[0],
    Y = U[1],
    Z = React.useState({
      width: null,
      height: null,
    }),
    $ = module23.default(Z, 2),
    ee = $[0],
    te = $[1],
    ne = React.useState({
      width: null,
      height: null,
    }),
    ue = module23.default(ne, 2),
    re = ue[0],
    ae = ue[1],
    ie = React.useRef(),
    oe = React.useRef(),
    le = C.theme.animation.scale;
  React.useImperativeHandle(v, function () {
    return {
      focus: function () {
        var e;
        return null == (e = oe.current) ? undefined : e.focus();
      },
      clear: function () {
        var e;
        return null == (e = oe.current) ? undefined : e.clear();
      },
      setNativeProps: function (e) {
        var t;
        return null == (t = oe.current) ? undefined : t.setNativeProps(e);
      },
      isFocused: function () {
        var e;
        return (null == (e = oe.current) ? undefined : e.isFocused()) || false;
      },
      blur: function () {
        var e;
        return null == (e = oe.current) ? undefined : e.blur();
      },
      forceFocus: function () {
        var e;
        return null == (e = oe.current) ? undefined : e.focus();
      },
    };
  });
  React.useEffect(
    function () {
      if (A)
        ReactNative.Animated.timing(V, {
          toValue: 1,
          duration: 150 * le,
          useNativeDriver: true,
        }).start();
      else
        ReactNative.Animated.timing(V, {
          toValue: 0,
          duration: 180 * le,
          useNativeDriver: true,
        }).start();
    },
    [A, le, V]
  );
  React.useEffect(
    function () {
      if (_ || !C.label)
        ie.current = setTimeout(function () {
          return W(C.placeholder);
        }, 50);
      else W('');
      return function () {
        if (ie.current) clearTimeout(ie.current);
      };
    },
    [_, C.label, C.placeholder]
  );
  React.useEffect(
    function () {
      if (K || _)
        ReactNative.Animated.timing(j, {
          toValue: 0,
          duration: 180 * le,
          useNativeDriver: true,
        }).start();
      else
        ReactNative.Animated.timing(j, {
          toValue: 1,
          duration: 150 * le,
          useNativeDriver: true,
        }).start();
    },
    [_, K, j, le]
  );

  var de = function (e) {
      te({
        height: e.nativeEvent.layout.height,
        width: e.nativeEvent.layout.width,
      });
    },
    fe = function (e) {
      ae({
        width: e.nativeEvent.layout.width,
        height: e.nativeEvent.layout.height,
      });
    },
    ce = function (e) {
      if (!x && T) {
        B(true);
        if (!(null == C.onFocus)) C.onFocus(e);
      }
    },
    ve = function (e) {
      if (T) {
        B(false);
        if (!(null == C.onBlur)) C.onBlur(e);
      }
    },
    se = function (e) {
      if (T && !x) {
        if (!M) J(e);
        if (!(null == C.onChangeText)) C.onChangeText(e);
      }
    },
    he = function (e) {
      Y({
        width: e.nativeEvent.layout.width,
        height: e.nativeEvent.layout.height,
        measured: true,
      });
    },
    me = function () {
      var e;
      return null == (e = oe.current) ? undefined : e.focus();
    },
    ge = C.maxFontSizeMultiplier,
    pe = undefined === ge ? 1.5 : ge;

  return 'outlined' === p ? <module806.default /> : <module815.default />;
});
p.Icon = module808.default;
p.Affix = module809.default;

var module679 = require('./679').withTheme(p);

exports.default = module679;
