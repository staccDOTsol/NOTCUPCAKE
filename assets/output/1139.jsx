var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = b(n);
    if (o && o.has(t)) return o.get(t);
    var l = {},
      c = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var s in t)
      if ('default' !== s && Object.prototype.hasOwnProperty.call(t, s)) {
        var u = c ? Object.getOwnPropertyDescriptor(t, s) : null;
        if (u && (u.get || u.set)) Object.defineProperty(l, s, u);
        else l[s] = t[s];
      }

    l.default = t;
    if (o) o.set(t, l);
    return l;
  })(require('react')),
  module1057 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1057')),
  module1140 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1140')),
  s = ['id', 'initialRouteName', 'backBehavior', 'children', 'screenListeners', 'screenOptions', 'sceneContainerStyle'],
  u = ['lazy', 'tabBarOptions'];

function b(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (b = function (t) {
    return t ? o : n;
  })(t);
}

var module586 = require('./586').createNavigatorFactory(function (b) {
  var f,
    p = b.id,
    v = b.initialRouteName,
    y = b.backBehavior,
    B = b.children,
    O = b.screenListeners,
    S = b.screenOptions,
    h = b.sceneContainerStyle,
    k = module105.default(b, s),
    C = k.lazy,
    w = k.tabBarOptions,
    N = module105.default(k, u),
    P = {};

  if (w) {
    module29.default(P, {
      tabBarHideOnKeyboard: w.keyboardHidesTabBar,
      tabBarActiveTintColor: w.activeTintColor,
      tabBarInactiveTintColor: w.inactiveTintColor,
      tabBarActiveBackgroundColor: w.activeBackgroundColor,
      tabBarInactiveBackgroundColor: w.inactiveBackgroundColor,
      tabBarAllowFontScaling: w.allowFontScaling,
      tabBarShowLabel: w.showLabel,
      tabBarLabelStyle: w.labelStyle,
      tabBarIconStyle: w.iconStyle,
      tabBarItemStyle: w.tabStyle,
      tabBarLabelPosition: null != (f = w.labelPosition) ? f : false === w.adaptive ? 'below-icon' : undefined,
      tabBarStyle: [
        {
          display: w.tabBarVisible ? 'none' : 'flex',
        },
        P.tabBarStyle,
      ],
    });
    Object.keys(P).forEach(function (t) {
      if (undefined === P[t]) delete P[t];
    });
    module1057.default(
      w,
      "Bottom Tab Navigator: 'tabBarOptions' is deprecated. Migrate the options to 'screenOptions' instead.\n\nPlace the following in 'screenOptions' in your code to keep current behavior:\n\n" +
        JSON.stringify(P, null, 2) +
        '\n\nSee https://reactnavigation.org/docs/bottom-tab-navigator#options for more details.'
    );
  }

  if ('boolean' == typeof C) {
    P.lazy = C;
    module1057.default(
      true,
      "Bottom Tab Navigator: 'lazy' in props is deprecated. Move it to 'screenOptions' instead.\n\nSee https://reactnavigation.org/docs/bottom-tab-navigator/#lazy for more details."
    );
  }

  var module586 = require('./586').useNavigationBuilder(require('./586').TabRouter, {
      id: p,
      initialRouteName: v,
      backBehavior: y,
      children: B,
      screenListeners: O,
      screenOptions: S,
      defaultScreenOptions: P,
    }),
    T = module586.state,
    L = module586.descriptors,
    M = module586.navigation,
    _ = module586.NavigationContent;

  return (
    <_>
      <module1140.default />
    </_>
  );
});

exports.default = module586;
