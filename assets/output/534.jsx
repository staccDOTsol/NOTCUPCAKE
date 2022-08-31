var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module10 = require('@babel/runtime/helpers/interopRequireDefault')(require('./10')),
  module12 = require('@babel/runtime/helpers/interopRequireDefault')(require('./12')),
  module15 = require('@babel/runtime/helpers/interopRequireDefault')(require('./15')),
  React = v(require('react')),
  module531 = v(require('./531')),
  ReactNative = require('react-native'),
  y = ['style'];

function h(e) {
  if ('function' != typeof WeakMap) return null;
  var t = new WeakMap(),
    n = new WeakMap();
  return (h = function (e) {
    return e ? n : t;
  })(e);
}

function v(e, t) {
  if (!t && e && e.__esModule) return e;
  if (null === e || ('object' != typeof e && 'function' != typeof e))
    return {
      default: e,
    };
  var n = h(t);
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
}

function S() {
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

var O = (function (h) {
  module10.default(U, h);

  var v = U,
    O = S(),
    C = function () {
      var e,
        t = module15.default(v);

      if (O) {
        var n = module15.default(this).constructor;
        e = Reflect.construct(t, arguments, n);
      } else e = t.apply(this, arguments);

      return module12.default(this, e);
    };

  function U(e) {
    var t;
    module7.default(this, U);

    (t = C.call(this, e)).showUnderlay = function () {
      if (t.hasPressHandler()) {
        t.setState({
          extraChildStyle: {
            opacity: t.props.activeOpacity,
          },
          extraUnderlayStyle: {
            backgroundColor: t.props.underlayColor,
          },
        });
        if (!(null == t.props.onShowUnderlay)) t.props.onShowUnderlay();
      }
    };

    t.hasPressHandler = function () {
      return t.props.onPress || t.props.onPressIn || t.props.onPressOut || t.props.onLongPress;
    };

    t.hideUnderlay = function () {
      t.setState({
        extraChildStyle: null,
        extraUnderlayStyle: null,
      });
      if (!(null == t.props.onHideUnderlay)) t.props.onHideUnderlay();
    };

    t.onStateChange = function (e, n) {
      if (n === module531.TOUCHABLE_STATE.BEGAN) t.showUnderlay();
      else if (!(n !== module531.TOUCHABLE_STATE.UNDETERMINED && n !== module531.TOUCHABLE_STATE.MOVED_OUTSIDE)) t.hideUnderlay();
    };

    t.state = {
      extraChildStyle: null,
      extraUnderlayStyle: null,
    };
    return t;
  }

  module8.default(U, [
    {
      key: 'renderChildren',
      value: function () {
        if (!this.props.children) return <ReactNative.View />;
        var e = React.Children.only(this.props.children);
        return React.cloneElement(e, {
          style: ReactNative.StyleSheet.compose(e.props.style, this.state.extraChildStyle),
        });
      },
    },
    {
      key: 'render',
      value: function () {
        var n = this.props,
          l = n.style,
          o = undefined === l ? {} : l,
          u = module105.default(n, y),
          s = this.state.extraUnderlayStyle;
        return React.createElement(
          module531.default,
          module29.default({}, u, {
            style: [o, s],
            onStateChange: this.onStateChange,
          }),
          this.renderChildren()
        );
      },
    },
  ]);
  return U;
})(React.Component);

exports.default = O;
O.defaultProps = module29.default({}, module531.default.defaultProps, {
  activeOpacity: 0.85,
  delayPressOut: 100,
  underlayColor: 'black',
});
