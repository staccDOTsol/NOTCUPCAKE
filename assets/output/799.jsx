var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, l) {
    if (!l && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var n = c(l);
    if (n && n.has(t)) return n.get(t);
    var o = {},
      u = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var f in t)
      if ('default' !== f && Object.prototype.hasOwnProperty.call(t, f)) {
        var s = u ? Object.getOwnPropertyDescriptor(t, f) : null;
        if (s && (s.get || s.set)) Object.defineProperty(o, f, s);
        else o[f] = t[f];
      }

    o.default = t;
    if (n) n.set(t, o);
    return o;
  })(require('react')),
  ReactNative = require('react-native'),
  module681 = require('@babel/runtime/helpers/interopRequireDefault')(require('./681')),
  module719 = require('@babel/runtime/helpers/interopRequireDefault')(require('./719')),
  s = ['color', 'subtitle', 'subtitleStyle', 'onPress', 'style', 'titleRef', 'titleStyle', 'theme', 'title'];

function c(t) {
  if ('function' != typeof WeakMap) return null;
  var l = new WeakMap(),
    n = new WeakMap();
  return (c = function (t) {
    return t ? n : l;
  })(t);
}

var b = function (c) {
  var b = c.color,
    module691 = undefined === b ? require('./691').white : b,
    h = c.subtitle,
    O = c.subtitleStyle,
    v = c.onPress,
    P = c.style,
    S = c.titleRef,
    w = c.titleStyle,
    j = c.theme,
    _ = c.title,
    M = module105.default(c, s),
    k = j.fonts,
    E = module681.default(module691).alpha(0.7).rgb().string();
  return (
    <ReactNative.TouchableWithoutFeedback onPress={v} disabled={!v}>
      <ReactNative.View>
        <module719.default
          ref={S}
          style={[
            module29.default(
              {
                color: module691,
              },
              'ios' === ReactNative.Platform.OS ? k.regular : k.medium
            ),
            p.title,
            w,
          ]}
          numberOfLines={1}
          accessible
          accessibilityTraits="header"
          accessibilityRole={'web' === ReactNative.Platform.OS ? 'heading' : 'header'}
        >
          {_}
        </module719.default>
        {h ? (
          <module719.default
            style={[
              p.subtitle,
              {
                color: E,
              },
              O,
            ]}
            numberOfLines={1}
          >
            {h}
          </module719.default>
        ) : null}
      </ReactNative.View>
    </ReactNative.TouchableWithoutFeedback>
  );
};

b.displayName = 'Appbar.Content';

var p = ReactNative.StyleSheet.create({
    container: {
      flex: 1,
      paddingHorizontal: 12,
    },
    title: {
      fontSize: 'ios' === ReactNative.Platform.OS ? 17 : 20,
    },
    subtitle: {
      fontSize: 'ios' === ReactNative.Platform.OS ? 11 : 14,
    },
  }),
  module679 = require('./679').withTheme(b);

exports.default = module679;

var module679 = require('./679').withTheme(b);

exports.AppbarContent = module679;
