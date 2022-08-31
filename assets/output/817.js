var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (e, t) {
    if (!t && e && e.__esModule) return e;
    if (null === e || ('object' != typeof e && 'function' != typeof e))
      return {
        default: e,
      };
    var n = c(t);
    if (n && n.has(e)) return n.get(e);
    var l = {},
      o = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var u in e)
      if ('default' !== u && Object.prototype.hasOwnProperty.call(e, u)) {
        var s = o ? Object.getOwnPropertyDescriptor(e, u) : null;
        if (s && (s.get || s.set)) Object.defineProperty(l, u, s);
        else l[u] = e[u];
      }

    l.default = e;
    if (n) n.set(e, l);
    return l;
  })(require('react')),
  ReactNative = require('react-native'),
  module681 = require('@babel/runtime/helpers/interopRequireDefault')(require('./681')),
  module768 = require('@babel/runtime/helpers/interopRequireDefault')(require('./768')),
  s = ['icon', 'size', 'theme', 'accessibilityLabel', 'disabled', 'style', 'value', 'status', 'onPress'];

function c(e) {
  if ('function' != typeof WeakMap) return null;
  var t = new WeakMap(),
    n = new WeakMap();
  return (c = function (e) {
    return e ? n : t;
  })(e);
}

var module691 = function (l) {
    var c = l.icon,
      module818 = l.size,
      p = l.theme,
      y = l.accessibilityLabel,
      h = l.disabled,
      v = l.style,
      w = l.value,
      O = l.status,
      P = l.onPress,
      k = module105.default(l, s),
      j = p.roundness;
    return React.createElement(require('./818').ToggleButtonGroupContext.Consumer, null, function (t) {
      var l,
        s = (t && t.value === w) || 'checked' === O;
      l = s ? (p.dark ? 'rgba(255, 255, 255, .12)' : 'rgba(0, 0, 0, .08)') : 'transparent';
      return React.createElement(
        module768.default,
        module29.default(
          {
            borderless: false,
            icon: c,
            onPress: function (e) {
              if (P) P(e);
              if (t) t.onValueChange(s ? null : w);
            },
            size: module818,
            accessibilityLabel: y,
            accessibilityState: {
              disabled: h,
              selected: s,
            },
            disabled: h,
            style: [
              b.content,
              {
                backgroundColor: l,
                borderRadius: j,
                borderColor: module681
                  .default(p.dark ? require('./691').white : require('./691').black)
                  .alpha(0.29)
                  .rgb()
                  .string(),
              },
              v,
            ],
          },
          k
        )
      );
    });
  },
  b = ReactNative.StyleSheet.create({
    content: {
      width: 42,
      height: 42,
      margin: 0,
    },
  }),
  module679 = require('./679').withTheme(module691);

exports.default = module679;

var module679 = require('./679').withTheme(module691);

exports.ToggleButton = module679;
