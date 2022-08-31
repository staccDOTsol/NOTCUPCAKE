exports.default = function (b) {
  var S;
  (S = (function (f) {
    module10.default(w, f);

    var P = w,
      S = h(),
      j = function () {
        var e,
          t = module15.default(P);

        if (S) {
          var n = module15.default(this).constructor;
          e = Reflect.construct(t, arguments, n);
        } else e = t.apply(this, arguments);

        return module12.default(this, e);
      };

    function w() {
      module7.default(this, w);
      return j.apply(this, arguments);
    }

    module8.default(w, [
      {
        key: 'render',
        value: function () {
          var n = this.props,
            o = n.style,
            l = n.iconStyle,
            c = n.children,
            u = module105.default(n, p),
            module704 = require('./704').pick(u, O, 'style', 'name', 'size', 'color'),
            module704 = require('./704').pick(u, k),
            module704 = require('./704').omit(u, Object.keys(module704), Object.keys(module704), 'iconStyle', 'borderRadius', 'backgroundColor');

          module704.style = l ? [v.icon, l] : v.icon;

          var module704 = require('./704').pick(this.props, 'color'),
            module704 = require('./704').pick(this.props, 'backgroundColor', 'borderRadius');

          return React.default.createElement(
            ReactNative.TouchableHighlight,
            module29.default(
              {
                style: [v.touchable, module704],
              },
              module704
            ),
            React.default.createElement(
              ReactNative.View,
              module29.default(
                {
                  style: [v.container, module704, o],
                },
                module704
              ),
              React.default.createElement(b, module704),
              'string' == typeof c
                ? React.default.createElement(
                    ReactNative.Text,
                    {
                      style: [v.text, module704],
                      selectable: false,
                    },
                    c
                  )
                : c
            )
          );
        },
      },
    ]);
    return w;
  })(React.PureComponent)).propTypes = {
    backgroundColor: PropTypes.default.oneOfType([PropTypes.default.string, PropTypes.default.number]),
    borderRadius: PropTypes.default.number,
    color: PropTypes.default.any,
    size: PropTypes.default.number,
    iconStyle: PropTypes.default.any,
    style: PropTypes.default.any,
    children: PropTypes.default.node,
  };
  S.defaultProps = {
    backgroundColor: P,
    borderRadius: 5,
    color: 'white',
    size: 20,
  };
  return S;
};

var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module10 = require('@babel/runtime/helpers/interopRequireDefault')(require('./10')),
  module12 = require('@babel/runtime/helpers/interopRequireDefault')(require('./12')),
  module15 = require('@babel/runtime/helpers/interopRequireDefault')(require('./15')),
  React = (function (e, t) {
    if (!t && e && e.__esModule) return e;
    if (null === e || ('object' != typeof e && 'function' != typeof e))
      return {
        default: e,
      };
    var n = b(t);
    if (n && n.has(e)) return n.get(e);
    var o = {},
      l = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in e)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(e, c)) {
        var u = l ? Object.getOwnPropertyDescriptor(e, c) : null;
        if (u && (u.get || u.set)) Object.defineProperty(o, c, u);
        else o[c] = e[c];
      }

    o.default = e;
    if (n) n.set(e, o);
    return o;
  })(require('react')),
  PropTypes = require('@babel/runtime/helpers/interopRequireDefault')(require('prop-types')),
  ReactNative = require('react-native'),
  p = ['style', 'iconStyle', 'children'];

function b(e) {
  if ('function' != typeof WeakMap) return null;
  var t = new WeakMap(),
    n = new WeakMap();
  return (b = function (e) {
    return e ? n : t;
  })(e);
}

function h() {
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

var v = ReactNative.StyleSheet.create({
    container: {
      flexDirection: 'row',
      justifyContent: 'flex-start',
      alignItems: 'center',
      padding: 8,
    },
    touchable: {
      overflow: 'hidden',
    },
    icon: {
      marginRight: 10,
    },
    text: {
      fontWeight: '600',
      backgroundColor: 'transparent',
    },
  }),
  P = '#007AFF',
  O = ['ellipsizeMode', 'numberOfLines', 'textBreakStrategy', 'selectable', 'suppressHighlighting', 'allowFontScaling', 'adjustsFontSizeToFit', 'minimumFontScale'],
  k = [
    'accessible',
    'accessibilityLabel',
    'accessibilityHint',
    'accessibilityComponentType',
    'accessibilityRole',
    'accessibilityStates',
    'accessibilityTraits',
    'onFocus',
    'onBlur',
    'disabled',
    'onPress',
    'onPressIn',
    'onPressOut',
    'onLayout',
    'onLongPress',
    'nativeID',
    'testID',
    'delayPressIn',
    'delayPressOut',
    'delayLongPress',
    'activeOpacity',
    'underlayColor',
    'selectionColor',
    'onShowUnderlay',
    'onHideUnderlay',
    'hasTVPreferredFocus',
    'tvParallaxProperties',
  ];
