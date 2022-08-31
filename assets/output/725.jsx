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

    for (var f in t)
      if ('default' !== f && Object.prototype.hasOwnProperty.call(t, f)) {
        var s = c ? Object.getOwnPropertyDescriptor(t, f) : null;
        if (s && (s.get || s.set)) Object.defineProperty(o, f, s);
        else o[f] = t[f];
      }

    o.default = t;
    if (l) l.set(t, o);
    return o;
  })(require('react')),
  ReactNative = require('react-native'),
  module722 = require('@babel/runtime/helpers/interopRequireDefault')(require('./722')),
  module719 = require('@babel/runtime/helpers/interopRequireDefault')(require('./719')),
  u = [
    'left',
    'right',
    'title',
    'description',
    'onPress',
    'theme',
    'style',
    'titleStyle',
    'titleNumberOfLines',
    'descriptionNumberOfLines',
    'titleEllipsizeMode',
    'descriptionEllipsizeMode',
    'descriptionStyle',
  ];

function p(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    l = new WeakMap();
  return (p = function (t) {
    return t ? l : n;
  })(t);
}

var y = function (p) {
  var y,
    M = p.left,
    h = p.right,
    O = p.title,
    z = p.description,
    v = p.onPress,
    L = p.theme,
    S = p.style,
    w = p.titleStyle,
    E = p.titleNumberOfLines,
    P = undefined === E ? 1 : E,
    j = p.descriptionNumberOfLines,
    N = undefined === j ? 2 : j,
    V = p.titleEllipsizeMode,
    _ = p.descriptionEllipsizeMode,
    R = p.descriptionStyle,
    x = module105.default(p, u),
    k = module681.default(L.colors.text).alpha(0.54).rgb().string();
  return (
    <module722.default>
      <ReactNative.View style={b.row}>
        {M
          ? M({
              color: k,
              style: z ? b.iconMarginLeft : module29.default({}, b.iconMarginLeft, b.marginVerticalNone),
            })
          : null}
        <ReactNative.View style={[b.item, b.content]}>
          {
            ((y = module681.default(L.colors.text).alpha(0.87).rgb().string()),
            'function' == typeof O ? (
              O({
                selectable: false,
                ellipsizeMode: V,
                color: y,
                fontSize: b.title.fontSize,
              })
            ) : (
              <module719.default
                selectable={false}
                ellipsizeMode={V}
                numberOfLines={P}
                style={[
                  b.title,
                  {
                    color: y,
                  },
                  w,
                ]}
              >
                {O}
              </module719.default>
            ))
          }
          {z
            ? (function (t, n) {
                return 'function' == typeof n ? (
                  n({
                    selectable: false,
                    ellipsizeMode: _,
                    color: t,
                    fontSize: b.description.fontSize,
                  })
                ) : (
                  <module719.default
                    selectable={false}
                    numberOfLines={N}
                    ellipsizeMode={_}
                    style={[
                      b.description,
                      {
                        color: t,
                      },
                      R,
                    ]}
                  >
                    {n}
                  </module719.default>
                );
              })(k, z)
            : null}
        </ReactNative.View>
        {h
          ? h({
              color: k,
              style: z ? b.iconMarginRight : module29.default({}, b.iconMarginRight, b.marginVerticalNone),
            })
          : null}
      </ReactNative.View>
    </module722.default>
  );
};

y.displayName = 'List.Item';

var b = ReactNative.StyleSheet.create({
    container: {
      padding: 8,
    },
    row: {
      flexDirection: 'row',
    },
    title: {
      fontSize: 16,
    },
    description: {
      fontSize: 14,
    },
    marginVerticalNone: {
      marginVertical: 0,
    },
    iconMarginLeft: {
      marginLeft: 0,
      marginRight: 16,
    },
    iconMarginRight: {
      marginRight: 0,
    },
    item: {
      marginVertical: 6,
      paddingLeft: 8,
    },
    content: {
      flex: 1,
      justifyContent: 'center',
    },
  }),
  module679 = require('./679').withTheme(y);

exports.default = module679;
