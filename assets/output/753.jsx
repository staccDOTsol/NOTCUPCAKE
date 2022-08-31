var React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var l = f(n);
    if (l && l.has(t)) return l.get(t);
    var u = {},
      o = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in t)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(t, c)) {
        var s = o ? Object.getOwnPropertyDescriptor(t, c) : null;
        if (s && (s.get || s.set)) Object.defineProperty(u, c, s);
        else u[c] = t[c];
      }

    u.default = t;
    if (l) l.set(t, u);
    return u;
  })(require('react')),
  ReactNative = require('react-native'),
  module754 = require('@babel/runtime/helpers/interopRequireDefault')(require('./754')),
  module756 = require('@babel/runtime/helpers/interopRequireDefault')(require('./756'));

function f(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    l = new WeakMap();
  return (f = function (t) {
    return t ? l : n;
  })(t);
}

var o = function (f) {
  var o = f.title,
    s = f.titleStyle,
    y = f.titleNumberOfLines,
    p = undefined === y ? 1 : y,
    b = f.subtitle,
    h = f.subtitleStyle,
    v = f.subtitleNumberOfLines,
    w = undefined === v ? 1 : v,
    O = f.left,
    j = f.leftStyle,
    C = f.right,
    E = f.rightStyle,
    P = f.style;
  return (
    <ReactNative.View
      style={[
        c.container,
        {
          minHeight: b || O || C ? 72 : 50,
        },
        P,
      ]}
    >
      {O ? (
        <ReactNative.View style={[c.left, j]}>
          {O({
            size: 40,
          })}
        </ReactNative.View>
      ) : null}
      <ReactNative.View style={[c.titles]}>
        {o ? (
          <module756.default
            style={[
              c.title,
              {
                marginBottom: b ? 0 : 2,
              },
              s,
            ]}
            numberOfLines={p}
          >
            {o}
          </module756.default>
        ) : null}
        {b ? (
          <module754.default style={[c.subtitle, h]} numberOfLines={w}>
            {b}
          </module754.default>
        ) : null}
      </ReactNative.View>
      <ReactNative.View style={E}>
        {C
          ? C({
              size: 24,
            })
          : null}
      </ReactNative.View>
    </ReactNative.View>
  );
};

exports.CardTitle = o;
o.displayName = 'Card.Title';

var c = ReactNative.StyleSheet.create({
    container: {
      flexDirection: 'row',
      alignItems: 'center',
      justifyContent: 'space-between',
      paddingLeft: 16,
    },
    left: {
      justifyContent: 'center',
      marginRight: 16,
      height: 40,
      width: 40,
    },
    titles: {
      flex: 1,
      flexDirection: 'column',
      justifyContent: 'center',
    },
    title: {
      minHeight: 30,
      paddingRight: 16,
    },
    subtitle: {
      minHeight: 20,
      marginVertical: 0,
      paddingRight: 16,
    },
  }),
  module679 = require('./679').withTheme(o);

exports.default = module679;
