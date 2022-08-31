exports.default = function (c) {
  c.route;
  var s = c.horizontal,
    u = c.badge,
    f = c.badgeStyle,
    y = c.activeOpacity,
    b = c.inactiveOpacity,
    p = c.activeTintColor,
    v = c.inactiveTintColor,
    h = c.renderIcon,
    z = c.style;
  return React.default.createElement(
    ReactNative.View,
    {
      style: [s ? n.iconHorizontal : n.iconVertical, z],
    },
    React.default.createElement(
      ReactNative.View,
      {
        style: [
          n.icon,
          {
            opacity: y,
          },
        ],
      },
      h({
        focused: true,
        size: 25,
        color: p,
      })
    ),
    React.default.createElement(
      ReactNative.View,
      {
        style: [
          n.icon,
          {
            opacity: b,
          },
        ],
      },
      h({
        focused: false,
        size: 25,
        color: v,
      })
    ),
    React.default.createElement(
      module1147.default,
      {
        visible: null != u,
        style: [n.badge, s ? n.badgeHorizontal : n.badgeVertical, f],
        size: 18.75,
      },
      u
    )
  );
};

var React = require('@babel/runtime/helpers/interopRequireDefault')(require('react')),
  ReactNative = require('react-native'),
  module1147 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1147'));

var n = ReactNative.StyleSheet.create({
  icon: {
    position: 'absolute',
    alignSelf: 'center',
    alignItems: 'center',
    justifyContent: 'center',
    height: '100%',
    width: '100%',
    minWidth: 25,
  },
  iconVertical: {
    flex: 1,
  },
  iconHorizontal: {
    height: '100%',
    marginTop: 3,
  },
  badge: {
    position: 'absolute',
    left: 3,
  },
  badgeVertical: {
    top: 3,
  },
  badgeHorizontal: {
    top: 7,
  },
});
