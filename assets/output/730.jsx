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
      u = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var f in t)
      if ('default' !== f && Object.prototype.hasOwnProperty.call(t, f)) {
        var c = u ? Object.getOwnPropertyDescriptor(t, f) : null;
        if (c && (c.get || c.set)) Object.defineProperty(o, f, c);
        else o[f] = t[f];
      }

    o.default = t;
    if (l) l.set(t, o);
    return o;
  })(require('react')),
  ReactNative = require('react-native'),
  module719 = require('@babel/runtime/helpers/interopRequireDefault')(require('./719')),
  module731 = require('@babel/runtime/helpers/interopRequireDefault')(require('./731')),
  s = ['children', 'title', 'theme', 'style'];

function p(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    l = new WeakMap();
  return (p = function (t) {
    return t ? l : n;
  })(t);
}

var y = function (p) {
  var y = p.children,
    h = p.title,
    O = p.theme,
    b = p.style,
    w = module105.default(p, s),
    j = O.colors,
    P = O.fonts,
    _ = module681.default(j.text).alpha(0.54).rgb().string(),
    M = P.medium;

  return (
    <ReactNative.View>
      {h && (
        <ReactNative.View style={v.titleContainer}>
          <module719.default
            numberOfLines={1}
            style={[
              module29.default(
                {
                  color: _,
                },
                M
              ),
              v.title,
            ]}
          >
            {h}
          </module719.default>
        </ReactNative.View>
      )}
      {y}
      <module731.default style={v.divider} />
    </ReactNative.View>
  );
};

y.displayName = 'Drawer.Section';

var v = ReactNative.StyleSheet.create({
    container: {
      marginBottom: 4,
    },
    titleContainer: {
      height: 40,
      justifyContent: 'center',
    },
    title: {
      marginLeft: 16,
    },
    divider: {
      marginTop: 4,
    },
  }),
  module679 = require('./679').withTheme(y);

exports.default = module679;
