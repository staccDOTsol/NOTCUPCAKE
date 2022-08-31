var module76 = require('@babel/runtime/helpers/interopRequireDefault')(require('./76')),
  module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module10 = require('@babel/runtime/helpers/interopRequireDefault')(require('./10')),
  module12 = require('@babel/runtime/helpers/interopRequireDefault')(require('./12')),
  module15 = require('@babel/runtime/helpers/interopRequireDefault')(require('./15')),
  module256 = require('@babel/runtime/helpers/interopRequireDefault')(require('./256')),
  module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  React = require('@babel/runtime/helpers/interopRequireDefault')(require('react')),
  PropTypes = require('@babel/runtime/helpers/interopRequireDefault')(require('prop-types')),
  ReactNative = require('react-native');

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

var module748 = require('./748').isIphoneX() ? 83 : 49,
  v = ['keyboardWillShow', 'keyboardDidShow', 'keyboardWillHide', 'keyboardDidHide', 'keyboardWillChangeFrame', 'keyboardDidChangeFrame'],
  T = function (e) {
    return 'on' + e[0].toUpperCase() + e.substring(1);
  },
  k = v.reduce(function (e, o) {
    return module29.default({}, e, module256.default({}, T(o), PropTypes.default.func));
  }, {});

v.reduce(function (e, o) {
  return module29.default({}, e, module256.default({}, T(o), Function));
}, {});
var I = {
  enableOnAndroid: false,
  contentContainerStyle: undefined,
  enableAutomaticScroll: true,
  extraHeight: 75,
  extraScrollHeight: 0,
  enableResetScrollToCoords: true,
  keyboardOpeningTime: 250,
  viewIsInsideTabBar: false,
  refPropName: 'ref',
  extractNativeRef: function (e) {
    var o = !ReactNative.Platform.constants || (0 === ReactNative.Platform.constants.reactNativeVersion.major && ReactNative.Platform.constants.reactNativeVersion.minor < 62);
    return e.getNode && o ? e.getNode() : e;
  },
};

function R(R) {
  var x,
    w,
    _ = arguments.length > 1 && undefined !== arguments[1] ? arguments[1] : {},
    H = module29.default({}, I, _);

  (x = (function (b) {
    module10.default(w, b);

    var k = w,
      I = S(),
      x = function () {
        var e,
          o = module15.default(k);

        if (I) {
          var t = module15.default(this).constructor;
          e = Reflect.construct(o, arguments, t);
        } else e = o.apply(this, arguments);

        return module12.default(this, e);
      };

    function w(n) {
      var l;
      module7.default(this, w);

      (l = x.call(this, n)).getScrollResponder = function () {
        return l._rnkasv_keyboardView && l._rnkasv_keyboardView.getScrollResponder && l._rnkasv_keyboardView.getScrollResponder();
      };

      l.scrollToPosition = function (e, o) {
        var t = !(arguments.length > 2 && undefined !== arguments[2]) || arguments[2],
          n = l.getScrollResponder();
        if (n)
          n.scrollResponderScrollTo
            ? n.scrollResponderScrollTo({
                x: e,
                y: o,
                animated: t,
              })
            : n.scrollTo &&
              n.scrollTo({
                x: e,
                y: o,
                animated: t,
              });
      };

      l.scrollToEnd = function () {
        var e = !(arguments.length > 0 && undefined !== arguments[0]) || arguments[0],
          o = l.getScrollResponder();
        if (o)
          o.scrollResponderScrollToEnd
            ? o.scrollResponderScrollToEnd({
                animated: e,
              })
            : o.scrollToEnd &&
              o.scrollToEnd({
                animated: e,
              });
      };

      l.scrollForExtraHeightOnAndroid = function (e) {
        l.scrollToPosition(0, l.position.y + e, true);
      };

      l.scrollToFocusedInput = function (e, o, t) {
        if (undefined === o) o = l.props.extraHeight || 0;
        if (undefined === t) t = l.props.keyboardOpeningTime || 0;
        setTimeout(function () {
          if (l.mountedComponent) {
            var t = l.getScrollResponder();
            if (t) t.scrollResponderScrollNativeHandleToKeyboard(e, o, true);
          }
        }, t);
      };

      l.scrollIntoView = function (t) {
        var n,
          s,
          c,
          u,
          p,
          f,
          b,
          y,
          S,
          h,
          v = arguments;
        return module76.default.async(
          function (T) {
            for (;;)
              switch ((T.prev = T.next)) {
                case 0:
                  if (((n = v.length > 1 && undefined !== v[1] ? v[1] : {}), l._rnkasv_keyboardView && t)) {
                    T.next = 3;
                    break;
                  }

                  return T.abrupt('return');

                case 3:
                  T.next = 5;
                  return module76.default.awrap(Promise.all([l._measureElement(l._rnkasv_keyboardView), l._measureElement(t)]));

                case 5:
                  s = T.sent;
                  c = module23.default(s, 2);
                  u = c[0];
                  p = c[1];
                  f = n.getScrollPosition || l._defaultGetScrollPosition;
                  b = f(u, p, l.position);
                  y = b.x;
                  S = b.y;
                  h = b.animated;
                  l.scrollToPosition(y, S, h);

                case 12:
                case 'end':
                  return T.stop();
              }
          },
          null,
          null,
          null,
          Promise
        );
      };

      l._defaultGetScrollPosition = function (e, o, t) {
        return {
          x: 0,
          y: 0 ** (o.y - e.y + t.y),
          animated: true,
        };
      };

      l._measureElement = function (e) {
        var o = ReactNative.findNodeHandle(e);
        return new Promise(function (e) {
          ReactNative.UIManager.measureInWindow(o, function (o, t, n, l) {
            e({
              x: o,
              y: t,
              width: n,
              height: l,
            });
          });
        });
      };

      l._updateKeyboardSpace = function (e) {
        if (l.props.enableAutomaticScroll) {
          var o = e.endCoordinates.height + l.props.extraScrollHeight;
          if (l.props.viewIsInsideTabBar) o -= module748;
          l.setState({
            keyboardSpace: o,
          });
          var t = ReactNative.TextInput.State.currentlyFocusedInput
              ? ReactNative.findNodeHandle(ReactNative.TextInput.State.currentlyFocusedInput())
              : ReactNative.TextInput.State.currentlyFocusedField(),
            n = l.getScrollResponder();
          if (!t || !n) return;
          ReactNative.UIManager.viewIsDescendantOf(t, n.getInnerViewNode(), function (n) {
            if (n)
              ReactNative.UIManager.measureInWindow(t, function (n, s, c, u) {
                var p = s + u,
                  f = e.endCoordinates.screenY,
                  b = l.props.extraScrollHeight + l.props.extraHeight;
                if ('ios' === ReactNative.Platform.OS) {
                  if (p > f - b) l._scrollToFocusedInputWithNodeHandle(t);
                } else if (p > f) {
                  o -= p - f;
                  l.setState({
                    keyboardSpace: o,
                  });
                  l.scrollForExtraHeightOnAndroid(b);
                } else if (p > f - b) l.scrollForExtraHeightOnAndroid(b - (f - p));
              });
          });
        }

        if (!(l.props.resetScrollToCoords || l.defaultResetScrollToCoords)) l.defaultResetScrollToCoords = l.position;
      };

      l._resetKeyboardSpace = function () {
        var e = l.props.viewIsInsideTabBar ? module748 : 0;
        l.setState({
          keyboardSpace: e,
        });
        if (false !== l.props.enableResetScrollToCoords)
          l.props.resetScrollToCoords
            ? l.scrollToPosition(l.props.resetScrollToCoords.x, l.props.resetScrollToCoords.y, true)
            : l.defaultResetScrollToCoords
            ? (l.scrollToPosition(l.defaultResetScrollToCoords.x, l.defaultResetScrollToCoords.y, true), (l.defaultResetScrollToCoords = null))
            : l.scrollToPosition(0, 0, true);
        else l.defaultResetScrollToCoords = null;
      };

      l._scrollToFocusedInputWithNodeHandle = function (e, o, t) {
        if (undefined === o) o = l.props.extraHeight;
        var n = ReactNative.findNodeHandle(e);
        l.scrollToFocusedInput(n, o + l.props.extraScrollHeight, undefined !== t ? t : l.props.keyboardOpeningTime || 0);
      };

      l._handleOnScroll = function (e) {
        l.position = e.nativeEvent.contentOffset;
      };

      l._handleRef = function (e) {
        l._rnkasv_keyboardView = e ? H.extractNativeRef(e) : e;
        if (l.props.innerRef) l.props.innerRef(l._rnkasv_keyboardView);
      };

      l.update = function () {
        var e = ReactNative.TextInput.State.currentlyFocusedInput
            ? ReactNative.findNodeHandle(ReactNative.TextInput.State.currentlyFocusedInput())
            : ReactNative.TextInput.State.currentlyFocusedField(),
          o = l.getScrollResponder();
        if (e && o) l._scrollToFocusedInputWithNodeHandle(e);
      };

      l.keyboardWillShowEvent = undefined;
      l.keyboardWillHideEvent = undefined;
      l.callbacks = {};
      l.position = {
        x: 0,
        y: 0,
      };
      l.defaultResetScrollToCoords = null;
      var s = n.viewIsInsideTabBar ? module748 : 0;
      l.state = {
        keyboardSpace: s,
      };
      return l;
    }

    module8.default(w, [
      {
        key: 'componentDidMount',
        value: function () {
          var e = this;
          this.mountedComponent = true;

          if ('ios' === ReactNative.Platform.OS) {
            this.keyboardWillShowEvent = ReactNative.Keyboard.addListener('keyboardWillShow', this._updateKeyboardSpace);
            this.keyboardWillHideEvent = ReactNative.Keyboard.addListener('keyboardWillHide', this._resetKeyboardSpace);
          } else if ('android' === ReactNative.Platform.OS && this.props.enableOnAndroid) {
            this.keyboardWillShowEvent = ReactNative.Keyboard.addListener('keyboardDidShow', this._updateKeyboardSpace);
            this.keyboardWillHideEvent = ReactNative.Keyboard.addListener('keyboardDidHide', this._resetKeyboardSpace);
          }

          v.forEach(function (o) {
            var t = T(o);
            if (e.props[t]) e.callbacks[o] = ReactNative.Keyboard.addListener(o, e.props[t]);
          });
        },
      },
      {
        key: 'componentDidUpdate',
        value: function (e) {
          if (this.props.viewIsInsideTabBar !== e.viewIsInsideTabBar) {
            var o = this.props.viewIsInsideTabBar ? module748 : 0;
            if (this.state.keyboardSpace !== o)
              this.setState({
                keyboardSpace: o,
              });
          }
        },
      },
      {
        key: 'componentWillUnmount',
        value: function () {
          this.mountedComponent = false;
          if (this.keyboardWillShowEvent) this.keyboardWillShowEvent.remove();
          if (this.keyboardWillHideEvent) this.keyboardWillHideEvent.remove();
          Object.values(this.callbacks).forEach(function (e) {
            return e.remove();
          });
        },
      },
      {
        key: 'render',
        value: function () {
          var e,
            o = this.props,
            t = o.enableOnAndroid,
            n = o.contentContainerStyle,
            l = o.onScroll;
          if ('android' === ReactNative.Platform.OS && t)
            e = [].concat(n).concat({
              paddingBottom: ((n || {}).paddingBottom || 0) + this.state.keyboardSpace,
            });
          var s = module256.default({}, H.refPropName, this._handleRef);
          return React.default.createElement(
            R,
            module29.default(
              {},
              s,
              {
                keyboardDismissMode: 'interactive',
                contentInset: {
                  bottom: this.state.keyboardSpace,
                },
                automaticallyAdjustContentInsets: false,
                showsVerticalScrollIndicator: true,
                scrollEventThrottle: 1,
              },
              this.props,
              {
                contentContainerStyle: e || n,
                keyboardSpace: this.state.keyboardSpace,
                getScrollResponder: this.getScrollResponder,
                scrollToPosition: this.scrollToPosition,
                scrollToEnd: this.scrollToEnd,
                scrollForExtraHeightOnAndroid: this.scrollForExtraHeightOnAndroid,
                scrollToFocusedInput: this.scrollToFocusedInput,
                scrollIntoView: this.scrollIntoView,
                resetKeyboardSpace: this._resetKeyboardSpace,
                handleOnScroll: this._handleOnScroll,
                update: this.update,
                onScroll: ReactNative.Animated.forkEvent(l, this._handleOnScroll),
              }
            )
          );
        },
      },
    ]);
    return w;
  })(React.default.Component)).displayName = 'KeyboardAware' + (((w = R) && (w.displayName || w.name)) || 'Component');
  x.propTypes = module29.default(
    {
      viewIsInsideTabBar: PropTypes.default.bool,
      resetScrollToCoords: PropTypes.default.shape({
        x: PropTypes.default.number.isRequired,
        y: PropTypes.default.number.isRequired,
      }),
      enableResetScrollToCoords: PropTypes.default.bool,
      enableAutomaticScroll: PropTypes.default.bool,
      extraHeight: PropTypes.default.number,
      extraScrollHeight: PropTypes.default.number,
      keyboardOpeningTime: PropTypes.default.number,
      onScroll: PropTypes.default.oneOfType([PropTypes.default.func, PropTypes.default.object]),
      update: PropTypes.default.func,
      contentContainerStyle: PropTypes.default.any,
      enableOnAndroid: PropTypes.default.bool,
      innerRef: PropTypes.default.func,
    },
    k
  );
  x.defaultProps = {
    enableAutomaticScroll: H.enableAutomaticScroll,
    extraHeight: H.extraHeight,
    extraScrollHeight: H.extraScrollHeight,
    enableResetScrollToCoords: H.enableResetScrollToCoords,
    keyboardOpeningTime: H.keyboardOpeningTime,
    viewIsInsideTabBar: H.viewIsInsideTabBar,
    enableOnAndroid: H.enableOnAndroid,
  };
  return x;
}

var x = function (e) {
  return 'object' != typeof e || e.displayName
    ? R(e)
    : function (o) {
        return R(o, e);
      };
};

exports.default = x;
