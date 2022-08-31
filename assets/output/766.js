var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var l = p(n);
    if (l && l.has(t)) return l.get(t);
    var o = {},
      c = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var u in t)
      if ('default' !== u && Object.prototype.hasOwnProperty.call(t, u)) {
        var f = c ? Object.getOwnPropertyDescriptor(t, u) : null;
        if (f && (f.get || f.set)) Object.defineProperty(o, u, f);
        else o[u] = t[u];
      }

    o.default = t;
    if (l) l.set(t, o);
    return o;
  })(require('react')),
  ReactNative = require('react-native'),
  module681 = require('@babel/runtime/helpers/interopRequireDefault')(require('./681')),
  module698 = require('@babel/runtime/helpers/interopRequireDefault')(require('./698')),
  module719 = require('@babel/runtime/helpers/interopRequireDefault')(require('./719')),
  s = ['numeric', 'children', 'onPress', 'sortDirection', 'theme', 'textStyle', 'style', 'numberOfLines'];

function p(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    l = new WeakMap();
  return (p = function (t) {
    return t ? l : n;
  })(t);
}

var h = function (p) {
  var h = p.numeric,
    b = p.children,
    x = p.onPress,
    T = p.sortDirection,
    v = p.theme,
    O = p.textStyle,
    w = p.style,
    j = p.numberOfLines,
    D = undefined === j ? 1 : j,
    P = module105.default(p, s),
    M = React.useRef(new ReactNative.Animated.Value('ascending' === T ? 0 : 1)).current;
  React.useEffect(
    function () {
      ReactNative.Animated.timing(M, {
        toValue: 'ascending' === T ? 0 : 1,
        duration: 150,
        useNativeDriver: true,
      }).start();
    },
    [T, M]
  );
  var A = module681.default(v.colors.text).alpha(0.6).rgb().string(),
    E = M.interpolate({
      inputRange: [0, 1],
      outputRange: ['0deg', '180deg'],
    }),
    L = T
      ? React.createElement(
          ReactNative.Animated.View,
          {
            style: [
              y.icon,
              {
                transform: [
                  {
                    rotate: E,
                  },
                ],
              },
            ],
          },
          React.createElement(module698.default, {
            name: 'arrow-up',
            size: 16,
            color: v.colors.text,
            direction: ReactNative.I18nManager.isRTL ? 'rtl' : 'ltr',
          })
        )
      : null;
  return React.createElement(
    ReactNative.TouchableWithoutFeedback,
    module29.default(
      {
        disabled: !x,
        onPress: x,
      },
      P
    ),
    React.createElement(
      ReactNative.View,
      {
        style: [y.container, h && y.right, w],
      },
      L,
      React.createElement(
        module719.default,
        {
          style: [
            y.cell,
            {
              maxHeight: 24 * D,
            },
            D > 1 ? (h ? (ReactNative.I18nManager.isRTL ? y.leftText : y.rightText) : y.centerText) : {},
            T
              ? y.sorted
              : {
                  color: A,
                },
            O,
          ],
          numberOfLines: D,
        },
        b
      )
    )
  );
};

exports.DataTableTitle = h;
h.displayName = 'DataTable.Title';

var y = ReactNative.StyleSheet.create({
    container: {
      flex: 1,
      flexDirection: 'row',
      alignContent: 'center',
      paddingVertical: 12,
    },
    rightText: {
      textAlign: 'right',
    },
    leftText: {
      textAlign: 'left',
    },
    centerText: {
      textAlign: 'center',
    },
    right: {
      justifyContent: 'flex-end',
    },
    cell: {
      lineHeight: 24,
      fontSize: 12,
      fontWeight: '500',
      alignItems: 'center',
    },
    sorted: {
      marginLeft: 8,
    },
    icon: {
      height: 24,
      justifyContent: 'center',
    },
  }),
  module679 = require('./679').withTheme(h);

exports.default = module679;
