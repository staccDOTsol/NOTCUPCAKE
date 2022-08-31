var module681 = require('@babel/runtime/helpers/interopRequireDefault')(require('./681')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var l = u(n);
    if (l && l.has(t)) return l.get(t);
    var o = {},
      c = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var s in t)
      if ('default' !== s && Object.prototype.hasOwnProperty.call(t, s)) {
        var f = c ? Object.getOwnPropertyDescriptor(t, s) : null;
        if (f && (f.get || f.set)) Object.defineProperty(o, s, f);
        else o[s] = t[s];
      }

    o.default = t;
    if (l) l.set(t, o);
    return o;
  })(require('react')),
  ReactNative = require('react-native'),
  module715 = require('@babel/runtime/helpers/interopRequireDefault')(require('./715')),
  module722 = require('@babel/runtime/helpers/interopRequireDefault')(require('./722')),
  module719 = require('@babel/runtime/helpers/interopRequireDefault')(require('./719'));

function u(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    l = new WeakMap();
  return (u = function (t) {
    return t ? l : n;
  })(t);
}

var f = function (u) {
  var f = u.icon,
    b = u.title,
    p = u.disabled,
    h = u.onPress,
    w = u.style,
    v = u.contentStyle,
    O = u.testID,
    W = u.titleStyle,
    j = u.accessibilityLabel,
    E = u.theme,
    module691 = module681
      .default(E.dark ? require('./691').white : require('./691').black)
      .alpha(0.32)
      .rgb()
      .string(),
    x = p ? module691 : module681.default(E.colors.text).alpha(0.87).rgb().string(),
    M = p ? module691 : module681.default(E.colors.text).alpha(0.54).rgb().string();
  return (
    <module722.default
      style={[y.container, w]}
      onPress={h}
      disabled={p}
      testID={O}
      accessibilityLabel={j}
      accessibilityRole="menuitem"
      accessibilityState={{
        disabled: p,
      }}
    >
      <ReactNative.View style={y.row}>
        {f ? (
          <ReactNative.View style={[y.item, y.icon]} pointerEvents="box-none">
            <module715.default source={f} size={24} color={M} />
          </ReactNative.View>
        ) : null}
        <ReactNative.View style={[y.item, y.content, f ? y.widthWithIcon : null, v]} pointerEvents="none">
          <module719.default
            selectable={false}
            numberOfLines={1}
            style={[
              y.title,
              {
                color: x,
              },
              W,
            ]}
          >
            {b}
          </module719.default>
        </ReactNative.View>
      </ReactNative.View>
    </module722.default>
  );
};

f.displayName = 'Menu.Item';

var y = ReactNative.StyleSheet.create({
    container: {
      paddingHorizontal: 8,
      minWidth: 112,
      maxWidth: 280,
      height: 48,
      justifyContent: 'center',
    },
    row: {
      flexDirection: 'row',
    },
    icon: {
      width: 40,
    },
    title: {
      fontSize: 16,
    },
    item: {
      marginHorizontal: 8,
    },
    content: {
      justifyContent: 'center',
      minWidth: 96,
      maxWidth: 264,
    },
    widthWithIcon: {
      maxWidth: 192,
    },
  }),
  module679 = require('./679').withTheme(f);

exports.default = module679;
