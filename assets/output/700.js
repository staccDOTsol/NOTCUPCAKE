exports.default = function (P, N, S, x) {
  var C = S ? S.replace(/\.(otf|ttf)$/, '') : N,
    k = ReactNative.Platform.select({
      windows: '/Assets/' + S + '#' + N,
      android: C,
      web: C,
      default: N,
    }),
    E = PropTypes.default.oneOf(Object.keys(P)),
    M = (function (e, ...args) {
      module10.default(b, e);

      var module35 = b,
        PropTypes = I(),
        h = function () {
          var e,
            n = module15.default(module35);

          if (PropTypes) {
            var o = module15.default(this).constructor;
            e = Reflect.construct(n, arguments, o);
          } else e = n.apply(this, arguments);

          return module12.default(this, e);
        };

      function b() {
        var e;
        module7.default(this, b);
        (e = h.call(this, ...args)).root = null;

        e.handleRef = function (t) {
          e.root = t;
        };

        return e;
      }

      module8.default(b, [
        {
          key: 'setNativeProps',
          value: function (e) {
            if (this.root) this.root.setNativeProps(e);
          },
        },
        {
          key: 'render',
          value: function () {
            var e = this.props,
              t = e.name,
              l = e.size,
              u = e.color,
              c = e.style,
              f = e.children,
              s = module105.default(e, w),
              v = t ? P[t] || '?' : '';
            if ('number' == typeof v) v = String.fromCodePoint(v);
            var h = {
                fontSize: l,
                color: u,
              },
              b = {
                fontFamily: k,
                fontWeight: 'normal',
                fontStyle: 'normal',
              };
            s.style = [h, c, b, x || {}];
            s.ref = this.handleRef;
            return React.default.createElement(
              ReactNative.Text,
              module29.default(
                {
                  selectable: false,
                },
                s
              ),
              v,
              f
            );
          },
        },
      ]);
      return b;
    })(React.PureComponent);

  M.propTypes = {
    allowFontScaling: PropTypes.default.bool,
    name: E,
    size: PropTypes.default.number,
    color: PropTypes.default.any,
    children: PropTypes.default.node,
    style: PropTypes.default.any,
  };
  M.defaultProps = {
    size: R,
    allowFontScaling: false,
  };
  var j = module702.default();

  function A(e) {
    var t = P[e] || '?';
    return 'number' == typeof t ? String.fromCodePoint(t) : t;
  }

  M.Button = module703.default(M);

  M.getImageSource = function (t) {
    var n,
      o,
      l,
      u,
      c,
      module12,
      module15,
      p = arguments;
    return module76.default.async(
      function (v) {
        for (;;)
          switch ((v.prev = v.next)) {
            case 0:
              if (
                ((n = p.length > 1 && undefined !== p[1] ? p[1] : R),
                (o = p.length > 2 && undefined !== p[2] ? p[2] : _),
                module701.default(),
                (l = A(t)),
                (u = ReactNative.processColor(o)),
                (c = l + ':' + n + ':' + u),
                !j.has(c))
              ) {
                v.next = 8;
                break;
              }

              return v.abrupt('return', j.get(c));

            case 8:
              v.prev = 8;
              v.next = 11;
              return module76.default.awrap(F.getImageForFont(k, l, n, u));

            case 11:
              module12 = v.sent;
              module15 = {
                uri: module12,
                scale: ReactNative.PixelRatio.get(),
              };
              j.setValue(c, module15);
              return v.abrupt('return', module15);

            case 17:
              throw ((v.prev = 17), (v.t0 = v.catch(8)), j.setError(c, v.t0), v.t0);

            case 21:
            case 'end':
              return v.stop();
          }
      },
      null,
      null,
      [[8, 17]],
      Promise
    );
  };

  M.getImageSourceSync = function (e) {
    var t = arguments.length > 1 && undefined !== arguments[1] ? arguments[1] : R,
      n = arguments.length > 2 && undefined !== arguments[2] ? arguments[2] : _;
    module701.default();
    var o = A(e),
      l = ReactNative.processColor(n),
      u = o + ':' + t + ':' + l;
    if (j.has(u)) return j.get(u);

    try {
      var c = F.getImageForFontSync(k, o, t, l),
        f = {
          uri: c,
          scale: ReactNative.PixelRatio.get(),
        };
      j.setValue(u, f);
      return f;
    } catch (e) {
      throw (j.setError(u, e), e);
    }
  };

  M.loadFont = function () {
    var n,
      o = arguments;
    return module76.default.async(
      function (l) {
        for (;;)
          switch ((l.prev = l.next)) {
            case 0:
              if (((n = o.length > 0 && undefined !== o[0] ? o[0] : S), 'ios' !== ReactNative.Platform.OS)) {
                l.next = 7;
                break;
              }

              if ((module701.default(), n)) {
                l.next = 5;
                break;
              }

              throw new Error('Unable to load font, because no file was specified. ');

            case 5:
              l.next = 7;
              return module76.default.awrap(F.loadFontWithFileName.apply(F, module35.default(n.split('.'))));

            case 7:
            case 'end':
              return l.stop();
          }
      },
      null,
      null,
      null,
      Promise
    );
  };

  M.hasIcon = function (e) {
    return Object.prototype.hasOwnProperty.call(P, e);
  };

  M.getRawGlyphMap = function () {
    return P;
  };

  M.getFontFamily = function () {
    return k;
  };

  return M;
};

var module76 = require('@babel/runtime/helpers/interopRequireDefault')(require('./76')),
  module35 = require('@babel/runtime/helpers/interopRequireDefault')(require('./35')),
  module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
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
    var n = P(t);
    if (n && n.has(e)) return n.get(e);
    var o = {},
      l = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var u in e)
      if ('default' !== u && Object.prototype.hasOwnProperty.call(e, u)) {
        var c = l ? Object.getOwnPropertyDescriptor(e, u) : null;
        if (c && (c.get || c.set)) Object.defineProperty(o, u, c);
        else o[u] = e[u];
      }

    o.default = e;
    if (n) n.set(e, o);
    return o;
  })(require('react')),
  PropTypes = require('@babel/runtime/helpers/interopRequireDefault')(require('prop-types')),
  ReactNative = require('react-native'),
  module701 = require('@babel/runtime/helpers/interopRequireDefault')(require('./701')),
  module702 = require('@babel/runtime/helpers/interopRequireDefault')(require('./702')),
  module703 = require('@babel/runtime/helpers/interopRequireDefault')(require('./703')),
  w = ['name', 'size', 'color', 'style', 'children'];

function P(e) {
  if ('function' != typeof WeakMap) return null;
  var t = new WeakMap(),
    n = new WeakMap();
  return (P = function (e) {
    return e ? n : t;
  })(e);
}

function I() {
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

var F = ReactNative.NativeModules.RNVectorIconsManager || ReactNative.NativeModules.RNVectorIconsModule;
exports.NativeIconAPI = F;
var R = 12;
exports.DEFAULT_ICON_SIZE = R;
var _ = 'black';
exports.DEFAULT_ICON_COLOR = _;
