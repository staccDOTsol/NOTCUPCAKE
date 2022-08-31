var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = h(n);
    if (o && o.has(t)) return o.get(t);
    var l = {},
      u = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var s in t)
      if ('default' !== s && Object.prototype.hasOwnProperty.call(t, s)) {
        var c = u ? Object.getOwnPropertyDescriptor(t, s) : null;
        if (c && (c.get || c.set)) Object.defineProperty(l, s, c);
        else l[s] = t[s];
      }

    l.default = t;
    if (o) o.set(t, l);
    return l;
  })(require('react')),
  ReactNative = require('react-native'),
  module681 = require('@babel/runtime/helpers/interopRequireDefault')(require('./681')),
  module750 = require('@babel/runtime/helpers/interopRequireDefault')(require('./750')),
  module751 = require('@babel/runtime/helpers/interopRequireDefault')(require('./751')),
  module752 = require('@babel/runtime/helpers/interopRequireDefault')(require('./752')),
  module753 = require('@babel/runtime/helpers/interopRequireDefault')(require('./753')),
  module734 = require('@babel/runtime/helpers/interopRequireDefault')(require('./734')),
  b = ['elevation', 'onLongPress', 'onPress', 'mode', 'children', 'style', 'theme', 'testID', 'accessible'];

function h(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (h = function (t) {
    return t ? o : n;
  })(t);
}

var y = function (s) {
  var c = s.elevation,
    f = undefined === c ? 1 : c,
    v = s.onLongPress,
    h = s.onPress,
    y = s.mode,
    w = undefined === y ? 'elevated' : y,
    O = s.children,
    V = s.style,
    C = s.theme,
    E = s.testID,
    j = s.accessible,
    k = module105.default(s, b),
    D = React.useRef(new ReactNative.Animated.Value(f)).current,
    _ = React.useRef(new ReactNative.Animated.Value(f)).current,
    A = C.animation,
    I = C.dark,
    M = C.mode,
    W = C.roundness,
    R = React.useRef(I);
  React.useEffect(function () {
    R.current = I;
  });
  var x = R.current,
    L = 'adaptive' === M,
    N = 150 * A.scale;
  React.useEffect(
    function () {
      if (I && L && !x) {
        D.setValue(f);

        _.setValue(f);
      }
    },
    [x, I, L, f, D, _]
  );

  var S = function (t) {
      var n = 'in' === t;
      if (I && L)
        ReactNative.Animated.timing(_, {
          toValue: n ? 8 : f,
          duration: N,
          useNativeDriver: false,
        }).start();
      else
        ReactNative.Animated.timing(D, {
          toValue: n ? 8 : f,
          duration: N,
          useNativeDriver: true,
        }).start();
    },
    T = React.Children.count(O),
    F = React.Children.map(O, function (t) {
      return React.isValidElement(t) && t.type ? t.type.displayName : null;
    }),
    module691 = module681
      .default(I ? require('./691').white : require('./691').black)
      .alpha(0.12)
      .rgb()
      .string(),
    q = I && L ? _ : D;

  return (
    <module734.default>
      <ReactNative.TouchableWithoutFeedback
        delayPressIn={0}
        disabled={!(h || v)}
        onLongPress={v}
        onPress={h}
        onPressIn={
          h || v
            ? function () {
                S('in');
              }
            : undefined
        }
        onPressOut={
          h || v
            ? function () {
                S('out');
              }
            : undefined
        }
        testID={E}
        accessible={j}
      >
        <ReactNative.View style={P.innerContainer}>
          <O />
        </ReactNative.View>
      </ReactNative.TouchableWithoutFeedback>
    </module734.default>
  );
};

y.Content = module750.default;
y.Actions = module751.default;
y.Cover = module752.default;
y.Title = module753.default;

var P = ReactNative.StyleSheet.create({
    innerContainer: {
      flexGrow: 1,
      flexShrink: 1,
    },
    outlined: {
      elevation: 0,
      borderWidth: 1,
    },
  }),
  module679 = require('./679').withTheme(y);

exports.default = module679;
