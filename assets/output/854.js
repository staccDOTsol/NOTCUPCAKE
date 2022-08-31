var React = require('@babel/runtime/helpers/interopRequireDefault')(require('react')),
  ReactNative = require('react-native'),
  module852 = require('@babel/runtime/helpers/interopRequireDefault')(require('./852')),
  o = ReactNative.StyleSheet.create({
    badge: {
      position: 'absolute',
      top: 8,
      right: 12,
    },
    badgeText: {
      fontSize: 14,
      fontWeight: '600',
      textAlign: 'right',
    },
  }),
  u = function () {
    var u,
      s,
      f = 'dark' === ReactNative.useColorScheme(),
      c = null != (u = null == (s = globals.HermesInternal) ? undefined : null == s.getRuntimeProperties ? undefined : s.getRuntimeProperties()['OSS Release Version']) ? u : '';
    return globals.HermesInternal
      ? React.default.createElement(
          ReactNative.View,
          {
            style: o.badge,
          },
          React.default.createElement(
            ReactNative.Text,
            {
              style: [
                o.badgeText,
                {
                  color: f ? module852.default.light : module852.default.dark,
                },
              ],
            },
            'Engine: Hermes ' + c
          )
        )
      : null;
  };

exports.default = u;
