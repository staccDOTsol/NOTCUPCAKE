var React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = c(n);
    if (o && o.has(t)) return o.get(t);
    var i = {},
      l = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var u in t)
      if ('default' !== u && Object.prototype.hasOwnProperty.call(t, u)) {
        var f = l ? Object.getOwnPropertyDescriptor(t, u) : null;
        if (f && (f.get || f.set)) Object.defineProperty(i, u, f);
        else i[u] = t[u];
      }

    i.default = t;
    if (o) o.set(t, i);
    return i;
  })(require('react')),
  ReactNative = require('react-native'),
  module777 = require('@babel/runtime/helpers/interopRequireDefault')(require('./777')),
  module778 = require('@babel/runtime/helpers/interopRequireDefault')(require('./778')),
  module779 = require('@babel/runtime/helpers/interopRequireDefault')(require('./779')),
  module780 = require('@babel/runtime/helpers/interopRequireDefault')(require('./780')),
  module781 = require('@babel/runtime/helpers/interopRequireDefault')(require('./781')),
  module712 = require('@babel/runtime/helpers/interopRequireDefault')(require('./712'));

function c(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (c = function (t) {
    return t ? o : n;
  })(t);
}

var p = function (n) {
  var l = n.children,
    u = n.dismissable,
    f = undefined === u || u,
    c = n.onDismiss,
    p = n.visible,
    v = undefined !== p && p,
    b = n.style,
    O = n.theme;
  return (
    <module777.default
      dismissable={f}
      onDismiss={c}
      visible={v}
      contentContainerStyle={[
        {
          borderRadius: O.roundness,
          backgroundColor: O.dark && 'adaptive' === O.mode ? module712.default(24, O.colors.surface) : O.colors.surface,
        },
        y.container,
        b,
      ]}
    >
      {React.Children.toArray(l)
        .filter(function (t) {
          return null != t && 'boolean' != typeof t;
        })
        .map(function (n, o) {
          return 0 === o && React.isValidElement(n) && n.type === module778.default
            ? React.cloneElement(n, {
                style: [
                  {
                    paddingTop: 24,
                  },
                  n.props.style,
                ],
              })
            : n;
        })}
    </module777.default>
  );
};

p.Content = module778.default;
p.Actions = module779.default;
p.Title = module780.default;
p.ScrollArea = module781.default;

var y = ReactNative.StyleSheet.create({
    container: {
      marginVertical: 'android' === ReactNative.Platform.OS ? 44 : 0,
      marginHorizontal: 26,
      elevation: 24,
      justifyContent: 'flex-start',
    },
  }),
  module679 = require('./679').withTheme(p);

exports.default = module679;
