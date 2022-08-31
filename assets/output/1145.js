exports.default = function (f) {
  var b = f.focused,
    y = f.route,
    v = f.label,
    p = f.icon,
    P = f.badge,
    S = f.badgeStyle,
    h = f.to,
    x = f.button,
    module586 =
      undefined === x
        ? function (l) {
            var c = l.children,
              f = l.style,
              b = l.onPress,
              y = l.to,
              v = l.accessibilityRole,
              p = module105.default(l, s);
            return 'web' === ReactNative.Platform.OS && y
              ? React.default.createElement(
                  require('./586').Link,
                  module29.default({}, p, {
                    to: y,
                    style: [u.button, f],
                    onPress: function (e) {
                      if (!(e.metaKey || e.altKey || e.ctrlKey || e.shiftKey || (null != e.button && 0 !== e.button))) {
                        e.preventDefault();
                        if (!(null == b)) b(e);
                      }
                    },
                  }),
                  c
                )
              : React.default.createElement(
                  ReactNative.Pressable,
                  module29.default({}, p, {
                    accessibilityRole: v,
                    onPress: b,
                    style: f,
                  }),
                  c
                );
          }
        : x,
    L = f.accessibilityLabel,
    T = f.testID,
    w = f.onPress,
    B = f.onLongPress,
    k = f.horizontal,
    D = f.activeTintColor,
    E = f.inactiveTintColor,
    O = f.activeBackgroundColor,
    z = undefined === O ? 'transparent' : O,
    I = f.inactiveBackgroundColor,
    K = undefined === I ? 'transparent' : I,
    R = f.showLabel,
    _ = undefined === R || R,
    j = f.allowFontScaling,
    F = f.labelStyle,
    A = f.iconStyle,
    M = f.style,
    module586 = require('./586').useTheme().colors,
    G = undefined === D ? module586.primary : D,
    H = undefined === E ? module1098.default(module586.text).mix(module1098.default(module586.card), 0.5).hex() : E,
    J = {
      route: y,
      focused: b,
    },
    N = b ? z : K;

  return module586({
    to: h,
    onPress: w,
    onLongPress: B,
    testID: T,
    accessibilityLabel: L,
    accessibilityRole: ReactNative.Platform.select({
      ios: 'button',
      default: 'tab',
    }),
    accessibilityState: {
      selected: b,
    },
    accessibilityStates: b ? ['selected'] : [],
    style: [
      u.tab,
      {
        backgroundColor: N,
      },
      k ? u.tabLandscape : u.tabPortrait,
      M,
    ],
    children: React.default.createElement(
      React.default.Fragment,
      null,
      (function (e) {
        var t = e.focused;
        if (undefined === p) return null;
        var l = t ? 1 : 0,
          o = t ? 0 : 1;
        return React.default.createElement(module1146.default, {
          route: y,
          horizontal: k,
          badge: P,
          badgeStyle: S,
          activeOpacity: l,
          inactiveOpacity: o,
          activeTintColor: G,
          inactiveTintColor: H,
          renderIcon: p,
          style: A,
        });
      })(J),
      (function (e) {
        var t = e.focused;
        if (false === _) return null;
        var l = t ? G : H;
        if ('string' == typeof v)
          return React.default.createElement(
            ReactNative.Text,
            {
              numberOfLines: 1,
              style: [
                u.label,
                {
                  color: l,
                },
                k ? u.labelBeside : u.labelBeneath,
                F,
              ],
              allowFontScaling: j,
            },
            v
          );
        return v({
          focused: t,
          color: l,
          position: k ? 'beside-icon' : 'below-icon',
        });
      })(J)
    ),
  });
};

var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  module1098 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1098')),
  React = require('@babel/runtime/helpers/interopRequireDefault')(require('react')),
  ReactNative = require('react-native'),
  module1146 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1146')),
  s = ['children', 'style', 'onPress', 'to', 'accessibilityRole'];

var u = ReactNative.StyleSheet.create({
  tab: {
    flex: 1,
    alignItems: 'center',
  },
  tabPortrait: {
    justifyContent: 'flex-end',
    flexDirection: 'column',
  },
  tabLandscape: {
    justifyContent: 'center',
    flexDirection: 'row',
  },
  label: {
    textAlign: 'center',
    backgroundColor: 'transparent',
  },
  labelBeneath: {
    fontSize: 10,
  },
  labelBeside: {
    fontSize: 13,
    marginLeft: 20,
    marginTop: 3,
  },
  button: {
    display: 'flex',
  },
});
