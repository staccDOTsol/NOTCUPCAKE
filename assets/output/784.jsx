var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module35 = require('@babel/runtime/helpers/interopRequireDefault')(require('./35')),
  module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var i = f(n);
    if (i && i.has(t)) return i.get(t);
    var l = {},
      o = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var s in t)
      if ('default' !== s && Object.prototype.hasOwnProperty.call(t, s)) {
        var c = o ? Object.getOwnPropertyDescriptor(t, s) : null;
        if (c && (c.get || c.set)) Object.defineProperty(l, s, c);
        else l[s] = t[s];
      }

    l.default = t;
    if (i) i.set(t, l);
    return l;
  })(require('react')),
  ReactNative = require('react-native'),
  module681 = require('@babel/runtime/helpers/interopRequireDefault')(require('./681')),
  module783 = require('@babel/runtime/helpers/interopRequireDefault')(require('./783')),
  module719 = require('@babel/runtime/helpers/interopRequireDefault')(require('./719')),
  module749 = require('@babel/runtime/helpers/interopRequireDefault')(require('./749'));

function f(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    i = new WeakMap();
  return (f = function (t) {
    return t ? i : n;
  })(t);
}

var p = function (t) {
  var f = t.actions,
    p = t.icon,
    y = t.open,
    v = t.onPress,
    A = t.accessibilityLabel,
    E = t.theme,
    h = t.style,
    V = t.fabStyle,
    P = t.visible,
    x = t.testID,
    S = t.onStateChange,
    j = t.color,
    k = React.useRef(new ReactNative.Animated.Value(0)).current,
    D = React.useRef(
      f.map(function () {
        return new ReactNative.Animated.Value(y ? 1 : 0);
      })
    ),
    O = React.useState(null),
    T = module23.default(O, 2),
    R = T[0],
    C = T[1],
    L = E.animation.scale;
  React.useEffect(
    function () {
      if (y)
        ReactNative.Animated.parallel([
          ReactNative.Animated.timing(k, {
            toValue: 1,
            duration: 250 * L,
            useNativeDriver: true,
          }),
          ReactNative.Animated.stagger(
            50 * L,
            D.current
              .map(function (t) {
                return ReactNative.Animated.timing(t, {
                  toValue: 1,
                  duration: 150 * L,
                  useNativeDriver: true,
                });
              })
              .reverse()
          ),
        ]).start();
      else
        ReactNative.Animated.parallel(
          [
            ReactNative.Animated.timing(k, {
              toValue: 0,
              duration: 200 * L,
              useNativeDriver: true,
            }),
          ].concat(
            module35.default(
              D.current.map(function (t) {
                return ReactNative.Animated.timing(t, {
                  toValue: 0,
                  duration: 150 * L,
                  useNativeDriver: true,
                });
              })
            )
          )
        ).start();
    },
    [y, f, k, L]
  );

  var F = function () {
      return S({
        open: false,
      });
    },
    I = E.colors,
    _ = E.dark ? I.text : module681.default(I.text).fade(0.54).rgb().string(),
    B = y
      ? k.interpolate({
          inputRange: [0, 0.5, 1],
          outputRange: [0, 1, 1],
        })
      : k,
    M = D.current,
    N = M.map(function (t) {
      return y
        ? t.interpolate({
            inputRange: [0, 1],
            outputRange: [0.8, 1],
          })
        : 1;
    });

  if (f.length !== (null == R ? undefined : R.length)) {
    D.current = f.map(function (t, n) {
      return D.current[n] || new ReactNative.Animated.Value(y ? 1 : 0);
    });
    C(f);
  }

  return (
    <ReactNative.View pointerEvents="box-none" style={[w.container, h]}>
      <ReactNative.TouchableWithoutFeedback onPress={F}>
        {React.createElement(ReactNative.Animated.View, {
          pointerEvents: y ? 'auto' : 'none',
          style: [
            w.backdrop,
            {
              opacity: B,
              backgroundColor: I.backdrop,
            },
          ],
        })}
      </ReactNative.TouchableWithoutFeedback>
      <ReactNative.SafeAreaView pointerEvents="box-none" style={w.safeArea}>
        <ReactNative.View pointerEvents={y ? 'box-none' : 'none'}>
          {f.map(function (t, n) {
            var i;
            return React.createElement(
              ReactNative.View,
              {
                key: n,
                style: [
                  w.item,
                  {
                    marginHorizontal: undefined === t.small || t.small ? 24 : 16,
                  },
                ],
                pointerEvents: y ? 'box-none' : 'none',
              },
              t.label &&
                React.createElement(
                  ReactNative.View,
                  null,
                  React.createElement(
                    module749.default,
                    {
                      style: [
                        w.label,
                        {
                          transform: [
                            {
                              scale: N[n],
                            },
                          ],
                          opacity: M[n],
                        },
                        t.labelStyle,
                      ],
                      onPress: function () {
                        t.onPress();
                        F();
                      },
                      accessibilityLabel: 'undefined' !== t.accessibilityLabel ? t.accessibilityLabel : t.label,
                      accessibilityTraits: 'button',
                      accessibilityComponentType: 'button',
                      accessibilityRole: 'button',
                    },
                    React.createElement(
                      module719.default,
                      {
                        style: {
                          color: null != (i = t.labelTextColor) ? i : _,
                        },
                      },
                      t.label
                    )
                  )
                ),
              React.createElement(module783.default, {
                small: undefined === t.small || t.small,
                icon: t.icon,
                color: t.color,
                style: [
                  {
                    transform: [
                      {
                        scale: N[n],
                      },
                    ],
                    opacity: M[n],
                    backgroundColor: E.colors.surface,
                  },
                  t.style,
                ],
                onPress: function () {
                  t.onPress();
                  F();
                },
                accessibilityLabel: undefined !== t.accessibilityLabel ? t.accessibilityLabel : t.label,
                accessibilityTraits: 'button',
                accessibilityComponentType: 'button',
                accessibilityRole: 'button',
                testID: t.testID,
                visible: y,
              })
            );
          })}
        </ReactNative.View>
        <module783.default
          onPress={function () {
            if (!(null == v)) v();
            S({
              open: !y,
            });
          }}
          icon={p}
          color={j}
          accessibilityLabel={A}
          accessibilityTraits="button"
          accessibilityComponentType="button"
          accessibilityRole="button"
          accessibilityState={{
            expanded: y,
          }}
          style={[w.fab, V]}
          visible={P}
          testID={x}
        />
      </ReactNative.SafeAreaView>
    </ReactNative.View>
  );
};

p.displayName = 'FAB.Group';

var module679 = require('./679').withTheme(p);

exports.default = module679;

var module679 = require('./679').withTheme(p);

exports.FABGroup = module679;
var w = ReactNative.StyleSheet.create({
  safeArea: {
    alignItems: 'flex-end',
  },
  container: module29.default({}, ReactNative.StyleSheet.absoluteFillObject, {
    justifyContent: 'flex-end',
  }),
  fab: {
    marginHorizontal: 16,
    marginBottom: 16,
    marginTop: 0,
  },
  backdrop: module29.default({}, ReactNative.StyleSheet.absoluteFillObject),
  label: {
    borderRadius: 5,
    paddingHorizontal: 12,
    paddingVertical: 6,
    marginVertical: 8,
    marginHorizontal: 16,
    elevation: 2,
  },
  item: {
    marginBottom: 16,
    flexDirection: 'row',
    justifyContent: 'flex-end',
    alignItems: 'center',
  },
});
