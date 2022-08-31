var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module10 = require('@babel/runtime/helpers/interopRequireDefault')(require('./10')),
  module12 = require('@babel/runtime/helpers/interopRequireDefault')(require('./12')),
  module15 = require('@babel/runtime/helpers/interopRequireDefault')(require('./15')),
  React = require('@babel/runtime/helpers/interopRequireDefault')(require('react')),
  ReactNative = require('react-native'),
  y = ['style', 'index', 'children', 'visibility'];

function p() {
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

var v = (function (v) {
    module10.default(_, v);

    var h = _,
      R = p(),
      x = function () {
        var e,
          t = module15.default(h);

        if (R) {
          var n = module15.default(this).constructor;
          e = Reflect.construct(t, arguments, n);
        } else e = t.apply(this, arguments);

        return module12.default(this, e);
      };

    function _() {
      module7.default(this, _);
      return x.apply(this, arguments);
    }

    module8.default(_, [
      {
        key: 'render',
        value: function () {
          var n = this.props,
            u = n.style,
            l = n.index,
            f = n.children,
            o = n.visibility,
            p = module105.default(n, y),
            v = 0 === o ? 'none' : 'flex';
          return React.default.createElement(
            ReactNative.View,
            module29.default(
              {
                testID: 'RouteScreen: ' + l,
                style: [
                  u,
                  {
                    display: v,
                  },
                ],
              },
              p
            ),
            f
          );
        },
      },
    ]);
    return _;
  })(React.default.Component),
  h = ReactNative.Animated.createAnimatedComponent(v);

exports.default = h;
