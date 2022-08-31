var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module10 = require('@babel/runtime/helpers/interopRequireDefault')(require('./10')),
  module12 = require('@babel/runtime/helpers/interopRequireDefault')(require('./12')),
  module15 = require('@babel/runtime/helpers/interopRequireDefault')(require('./15')),
  ReactNative = require('react-native'),
  React = (function (e, t) {
    if (!t && e && e.__esModule) return e;
    if (null === e || ('object' != typeof e && 'function' != typeof e))
      return {
        default: e,
      };
    var n = b(t);
    if (n && n.has(e)) return n.get(e);
    var o = {},
      u = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var l in e)
      if ('default' !== l && Object.prototype.hasOwnProperty.call(e, l)) {
        var f = u ? Object.getOwnPropertyDescriptor(e, l) : null;
        if (f && (f.get || f.set)) Object.defineProperty(o, l, f);
        else o[l] = e[l];
      }

    o.default = e;
    if (n) n.set(e, o);
    return o;
  })(require('react')),
  module531 = require('@babel/runtime/helpers/interopRequireDefault')(require('./531')),
  y = ['style'];

function b(e) {
  if ('function' != typeof WeakMap) return null;
  var t = new WeakMap(),
    n = new WeakMap();
  return (b = function (e) {
    return e ? n : t;
  })(e);
}

function v() {
  if ('undefined' == typeof Reflect || !Reflect.construct) return false;
  if (Reflect.construct.sham) return false;
  if ('function' == typeof Proxy) return true;

  try {
    Boolean.prototype.valueOf.call(Reflect.construct(Boolean, [], function () {}));
    return true;
  } catch (e) {
    return false;
  }
}

var h = (function (p) {
  module10.default(P, p);

  var b = P,
    h = v(),
    B = function () {
      var e,
        t = module15.default(b);

      if (h) {
        var n = module15.default(this).constructor;
        e = Reflect.construct(t, arguments, n);
      } else e = t.apply(this, arguments);

      return module12.default(this, e);
    };

  function P() {
    module7.default(this, P);
    return B.apply(this, arguments);
  }

  module8.default(P, [
    {
      key: 'getExtraButtonProps',
      value: function () {
        var e = {},
          t = this.props.background;

        if (t) {
          if ('RippleAndroid' === t.type) {
            e.borderless = t.borderless;
            e.rippleColor = t.color;
          } else if ('ThemeAttrAndroid' === t.type) e.borderless = 'selectableItemBackgroundBorderless' === t.attribute;

          e.rippleRadius = t.rippleRadius;
        }

        e.foreground = this.props.useForeground;
        return e;
      },
    },
    {
      key: 'render',
      value: function () {
        var n = this.props,
          o = n.style,
          u = undefined === o ? {} : o,
          l = module105.default(n, y);
        return <module531.default />;
      },
    },
  ]);
  return P;
})(React.Component);

exports.default = h;
h.defaultProps = module29.default({}, module531.default.defaultProps, {
  useForeground: true,
  extraButtonProps: {
    rippleColor: null,
  },
});

h.SelectableBackground = function (e) {
  return {
    type: 'ThemeAttrAndroid',
    attribute: 'selectableItemBackground',
    rippleRadius: e,
  };
};

h.SelectableBackgroundBorderless = function (e) {
  return {
    type: 'ThemeAttrAndroid',
    attribute: 'selectableItemBackgroundBorderless',
    rippleRadius: e,
  };
};

h.Ripple = function (e, t, n) {
  return {
    type: 'RippleAndroid',
    color: e,
    borderless: t,
    rippleRadius: n,
  };
};

h.canUseNativeForeground = function () {
  return ReactNative.Platform.Version >= 23;
};
