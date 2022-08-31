Object.defineProperty(exports, 'PureNativeButton', {
  enumerable: true,
  get: function () {
    return module499.default;
  },
});

var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module10 = require('@babel/runtime/helpers/interopRequireDefault')(require('./10')),
  module12 = require('@babel/runtime/helpers/interopRequireDefault')(require('./12')),
  module15 = require('@babel/runtime/helpers/interopRequireDefault')(require('./15')),
  React = (function (t, e) {
    if (!e && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var n = S(e);
    if (n && n.has(t)) return n.get(t);
    var o = {},
      u = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var l in t)
      if ('default' !== l && Object.prototype.hasOwnProperty.call(t, l)) {
        var c = u ? Object.getOwnPropertyDescriptor(t, l) : null;
        if (c && (c.get || c.set)) Object.defineProperty(o, l, c);
        else o[l] = t[l];
      }

    o.default = t;
    if (n) n.set(t, o);
    return o;
  })(require('react')),
  ReactNative = require('react-native'),
  module400 = require('@babel/runtime/helpers/interopRequireDefault')(require('./400')),
  module499 = require('@babel/runtime/helpers/interopRequireDefault')(require('./499')),
  h = ['rippleColor'],
  y = ['children', 'style'],
  C = ['children', 'style'];

function S(t) {
  if ('function' != typeof WeakMap) return null;
  var e = new WeakMap(),
    n = new WeakMap();
  return (S = function (t) {
    return t ? n : e;
  })(t);
}

function A(t) {
  var e = b();
  return function () {
    var n,
      o = module15.default(t);

    if (e) {
      var u = module15.default(this).constructor;
      n = Reflect.construct(o, arguments, u);
    } else n = o.apply(this, arguments);

    return module12.default(this, n);
  };
}

function b() {
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

var R = module400.default(module499.default, {
  shouldCancelWhenOutside: false,
  shouldActivateOnStart: false,
});
exports.RawButton = R;

var module495 = (function (l) {
  module10.default(f, l);
  var c = A(f);

  function f(t) {
    var e;
    module7.default(this, f);

    (e = c.call(this, t)).handleEvent = function (t) {
      var n = t.nativeEvent,
        o = n.state,
        u = n.oldState,
        module495 = n.pointerInside && o === require('./495').State.ACTIVE;

      if (module495 !== e.lastActive && e.props.onActiveStateChange) e.props.onActiveStateChange(module495);
      if (u === require('./495').State.ACTIVE && o !== require('./495').State.CANCELLED && e.lastActive && e.props.onPress) e.props.onPress(module495);
      e.lastActive = module495;
    };

    e.onHandlerStateChange = function (t) {
      if (!(null == e.props.onHandlerStateChange)) e.props.onHandlerStateChange(t);
      e.handleEvent(t);
    };

    e.onGestureEvent = function (t) {
      if (!(null == e.props.onGestureEvent)) e.props.onGestureEvent(t);
      e.handleEvent(t);
    };

    e.lastActive = false;
    return e;
  }

  module8.default(f, [
    {
      key: 'render',
      value: function () {
        var n = this.props,
          o = n.rippleColor,
          u = module105.default(n, h);
        return <R />;
      },
    },
  ]);
  return f;
})(React.Component);

exports.BaseButton = module495;

var B = ReactNative.Animated.createAnimatedComponent(module495),
  E = ReactNative.StyleSheet.create({
    underlay: {
      position: 'absolute',
      left: 0,
      right: 0,
      bottom: 0,
      top: 0,
    },
  }),
  P = (function (l) {
    module10.default(f, l);
    var c = A(f);

    function f(t) {
      var e;
      module7.default(this, f);

      (e = c.call(this, t)).onActiveStateChange = function (t) {
        if ('android' !== ReactNative.Platform.OS) e.opacity.setValue(t ? e.props.activeOpacity : 0);
        if (!(null == e.props.onActiveStateChange)) e.props.onActiveStateChange(t);
      };

      e.opacity = new ReactNative.Animated.Value(0);
      return e;
    }

    module8.default(f, [
      {
        key: 'render',
        value: function () {
          var n = this.props,
            o = n.children,
            u = n.style,
            l = module105.default(n, y),
            c = ReactNative.StyleSheet.flatten(null != u ? u : {});
          return (
            <module495>
              {React.createElement(ReactNative.Animated.View, {
                style: [
                  E.underlay,
                  {
                    opacity: this.opacity,
                    backgroundColor: this.props.underlayColor,
                    borderRadius: c.borderRadius,
                    borderTopLeftRadius: c.borderTopLeftRadius,
                    borderTopRightRadius: c.borderTopRightRadius,
                    borderBottomLeftRadius: c.borderBottomLeftRadius,
                    borderBottomRightRadius: c.borderBottomRightRadius,
                  },
                ],
              })}
              {o}
            </module495>
          );
        },
      },
    ]);
    return f;
  })(React.Component);

exports.RectButton = P;
P.defaultProps = {
  activeOpacity: 0.105,
  underlayColor: 'black',
};

var w = (function (l) {
  module10.default(f, l);
  var c = A(f);

  function f(t) {
    var e;
    module7.default(this, f);

    (e = c.call(this, t)).onActiveStateChange = function (t) {
      if ('android' !== ReactNative.Platform.OS) e.opacity.setValue(t ? e.props.activeOpacity : 1);
      if (!(null == e.props.onActiveStateChange)) e.props.onActiveStateChange(t);
    };

    e.opacity = new ReactNative.Animated.Value(1);
    return e;
  }

  module8.default(f, [
    {
      key: 'render',
      value: function () {
        var n = this.props,
          o = n.children,
          u = n.style,
          l = module105.default(n, C);
        return React.createElement(
          B,
          module29.default({}, l, {
            onActiveStateChange: this.onActiveStateChange,
            style: [
              u,
              'ios' === ReactNative.Platform.OS && {
                opacity: this.opacity,
              },
            ],
          }),
          o
        );
      },
    },
  ]);
  return f;
})(React.Component);

exports.BorderlessButton = w;
w.defaultProps = {
  activeOpacity: 0.3,
  borderless: true,
};
