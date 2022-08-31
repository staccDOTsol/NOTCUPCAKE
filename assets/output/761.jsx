var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  React = (function (t, l) {
    if (!l && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var n = y(l);
    if (n && n.has(t)) return n.get(t);
    var o = {},
      s = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in t)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(t, c)) {
        var f = s ? Object.getOwnPropertyDescriptor(t, c) : null;
        if (f && (f.get || f.set)) Object.defineProperty(o, c, f);
        else o[c] = t[c];
      }

    o.default = t;
    if (n) n.set(t, o);
    return o;
  })(require('react')),
  ReactNative = require('react-native'),
  module758 = require('@babel/runtime/helpers/interopRequireDefault')(require('./758')),
  module760 = require('@babel/runtime/helpers/interopRequireDefault')(require('./760')),
  module759 = require('@babel/runtime/helpers/interopRequireDefault')(require('./759')),
  module719 = require('@babel/runtime/helpers/interopRequireDefault')(require('./719')),
  module722 = require('@babel/runtime/helpers/interopRequireDefault')(require('./722')),
  p = ['style', 'status', 'label', 'onPress', 'labelStyle', 'theme', 'testID', 'mode', 'position', 'disabled'];

function y(t) {
  if ('function' != typeof WeakMap) return null;
  var l = new WeakMap(),
    n = new WeakMap();
  return (y = function (t) {
    return t ? n : l;
  })(t);
}

var h = function (y) {
  var h,
    v = y.style,
    w = y.status,
    x = y.label,
    O = y.onPress,
    P = y.labelStyle,
    j = y.theme,
    E = y.testID,
    I = y.mode,
    S = y.position,
    D = undefined === S ? 'trailing' : S,
    _ = y.disabled,
    M = module105.default(y, p),
    C = module29.default({}, M, {
      status: w,
      theme: j,
      disabled: _,
    }),
    W = 'leading' === D;
  h = 'android' === I ? <module760.default /> : 'ios' === I ? <module759.default /> : <module758.default />;
  return (
    <module722.default
      accessibilityLabel={x}
      accessibilityRole="checkbox"
      accessibilityState={{
        checked: 'checked' === w,
        disabled: _,
      }}
      onPress={O}
      testID={E}
      disabled={_}
    >
      <ReactNative.View style={[k.container, v]} pointerEvents="none" importantForAccessibility="no-hide-descendants">
        {W && h}
        <module719.default
          style={[
            k.label,
            {
              color: _ ? j.colors.disabled : j.colors.text,
              textAlign: W ? 'right' : 'left',
            },
            P,
          ]}
        >
          {x}
        </module719.default>
        {!W && h}
      </ReactNative.View>
    </module722.default>
  );
};

h.displayName = 'Checkbox.Item';

var module679 = require('./679').withTheme(h);

exports.default = module679;

var module679 = require('./679').withTheme(h);

exports.CheckboxItem = module679;
var k = ReactNative.StyleSheet.create({
  container: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    paddingVertical: 8,
    paddingHorizontal: 16,
  },
  label: {
    fontSize: 16,
    flexShrink: 1,
    flexGrow: 1,
  },
});
