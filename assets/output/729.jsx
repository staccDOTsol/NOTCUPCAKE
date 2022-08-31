var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  module681 = require('@babel/runtime/helpers/interopRequireDefault')(require('./681')),
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

    for (var s in t)
      if ('default' !== s && Object.prototype.hasOwnProperty.call(t, s)) {
        var u = c ? Object.getOwnPropertyDescriptor(t, s) : null;
        if (u && (u.get || u.set)) Object.defineProperty(o, s, u);
        else o[s] = t[s];
      }

    o.default = t;
    if (l) l.set(t, o);
    return o;
  })(require('react')),
  ReactNative = require('react-native'),
  module719 = require('@babel/runtime/helpers/interopRequireDefault')(require('./719')),
  module715 = require('@babel/runtime/helpers/interopRequireDefault')(require('./715')),
  module722 = require('@babel/runtime/helpers/interopRequireDefault')(require('./722')),
  b = ['icon', 'label', 'active', 'theme', 'style', 'onPress', 'accessibilityLabel', 'right'];

function p(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    l = new WeakMap();
  return (p = function (t) {
    return t ? l : n;
  })(t);
}

var y = function (p) {
  var y = p.icon,
    w = p.label,
    h = p.active,
    O = p.theme,
    P = p.style,
    j = p.onPress,
    E = p.accessibilityLabel,
    _ = p.right,
    D = module105.default(p, b),
    L = O.colors,
    M = O.roundness,
    k = h ? module681.default(L.primary).alpha(0.12).rgb().string() : 'transparent',
    x = h ? L.primary : module681.default(L.text).alpha(0.68).rgb().string(),
    I = O.fonts.medium,
    V = y ? 32 : 0;
  return (
    <ReactNative.View>
      <module722.default
        borderless
        delayPressIn={0}
        onPress={j}
        style={[
          v.container,
          {
            backgroundColor: k,
            borderRadius: M,
          },
          P,
        ]}
        accessibilityTraits={h ? ['button', 'selected'] : 'button'}
        accessibilityComponentType="button"
        accessibilityRole="button"
        accessibilityState={{
          selected: h,
        }}
        accessibilityLabel={E}
      >
        <ReactNative.View style={v.wrapper}>
          <ReactNative.View style={v.content}>
            {y ? <module715.default source={y} size={24} color={x} /> : null}
            <module719.default
              selectable={false}
              numberOfLines={1}
              style={[
                v.label,
                module29.default(
                  {
                    color: x,
                  },
                  I,
                  {
                    marginLeft: V,
                  }
                ),
              ]}
            >
              {w}
            </module719.default>
          </ReactNative.View>
          {null == _
            ? undefined
            : _({
                color: x,
              })}
        </ReactNative.View>
      </module722.default>
    </ReactNative.View>
  );
};

y.displayName = 'Drawer.Item';

var v = ReactNative.StyleSheet.create({
    container: {
      marginHorizontal: 10,
      marginVertical: 4,
    },
    wrapper: {
      flexDirection: 'row',
      alignItems: 'center',
      padding: 8,
    },
    content: {
      flex: 1,
      flexDirection: 'row',
      alignItems: 'center',
    },
    label: {
      marginRight: 32,
    },
  }),
  module679 = require('./679').withTheme(y);

exports.default = module679;
