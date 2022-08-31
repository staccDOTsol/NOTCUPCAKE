var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module10 = require('@babel/runtime/helpers/interopRequireDefault')(require('./10')),
  module12 = require('@babel/runtime/helpers/interopRequireDefault')(require('./12')),
  module15 = require('@babel/runtime/helpers/interopRequireDefault')(require('./15')),
  ReactNative = require('react-native'),
  module531 = v(require('./531')),
  React = v(require('react')),
  y = ['style'];

function h(t) {
  if ('function' != typeof WeakMap) return null;
  var e = new WeakMap(),
    n = new WeakMap();
  return (h = function (t) {
    return t ? n : e;
  })(t);
}

function v(t, e) {
  if (!e && t && t.__esModule) return t;
  if (null === t || ('object' != typeof t && 'function' != typeof t))
    return {
      default: t,
    };
  var n = h(e);
  if (n && n.has(t)) return n.get(t);
  var u = {},
    o = Object.defineProperty && Object.getOwnPropertyDescriptor;

  for (var l in t)
    if ('default' !== l && Object.prototype.hasOwnProperty.call(t, l)) {
      var c = o ? Object.getOwnPropertyDescriptor(t, l) : null;
      if (c && (c.get || c.set)) Object.defineProperty(u, l, c);
      else u[l] = t[l];
    }

  u.default = t;
  if (n) n.set(t, u);
  return u;
}

function O() {
  if ('undefined' == typeof Reflect || !Reflect.construct) return false;
  if (Reflect.construct.sham) return false;
  if ('function' == typeof Proxy) return true;

  try {
    Boolean.prototype.valueOf.call(Reflect.construct(Boolean, [], function () {}));
    return true;
  } catch (t) {
    return false;
  }
}

var E = (function (h, ...args) {
  module10.default(S, h);

  var v = S,
    E = O(),
    T = function () {
      var t,
        e = module15.default(v);

      if (E) {
        var n = module15.default(this).constructor;
        t = Reflect.construct(e, arguments, n);
      } else t = e.apply(this, arguments);

      return module12.default(this, t);
    };

  function S() {
    var t;
    module7.default(this, S);

    (t = T.call(this, ...args)).getChildStyleOpacityWithDefault = function () {
      var e = ReactNative.StyleSheet.flatten(t.props.style) || {};
      return null == e.opacity ? 1 : e.opacity;
    };

    t.opacity = new ReactNative.Animated.Value(t.getChildStyleOpacityWithDefault());

    t.setOpacityTo = function (e, n) {
      var u;
      ReactNative.Animated.timing(t.opacity, {
        toValue: e,
        duration: n,
        easing: ReactNative.Easing.inOut(ReactNative.Easing.quad),
        useNativeDriver: null == (u = t.props.useNativeAnimations) || u,
      }).start();
    };

    t.onStateChange = function (e, n) {
      if (n === module531.TOUCHABLE_STATE.BEGAN) t.setOpacityTo(t.props.activeOpacity, 0);
      else if (!(n !== module531.TOUCHABLE_STATE.UNDETERMINED && n !== module531.TOUCHABLE_STATE.MOVED_OUTSIDE)) t.setOpacityTo(t.getChildStyleOpacityWithDefault(), 150);
    };

    return t;
  }

  module8.default(S, [
    {
      key: 'render',
      value: function () {
        var n = this.props,
          u = n.style,
          o = undefined === u ? {} : u,
          l = module105.default(n, y);
        return <module531.default>{this.props.children ? this.props.children : <ReactNative.View />}</module531.default>;
      },
    },
  ]);
  return S;
})(React.Component);

exports.default = E;
E.defaultProps = module29.default({}, module531.default.defaultProps, {
  activeOpacity: 0.2,
});
