var module35 = require('@babel/runtime/helpers/interopRequireDefault')(require('./35')),
  module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module10 = require('@babel/runtime/helpers/interopRequireDefault')(require('./10')),
  module12 = require('@babel/runtime/helpers/interopRequireDefault')(require('./12')),
  module15 = require('@babel/runtime/helpers/interopRequireDefault')(require('./15')),
  React = require('@babel/runtime/helpers/interopRequireDefault')(require('react')),
  module505 = require('@babel/runtime/helpers/interopRequireDefault')(require('./505')),
  module402 = require('@babel/runtime/helpers/interopRequireDefault')(require('./402'));

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

var v = ['minForce', 'maxForce', 'feedbackOnActivation'];
exports.forceTouchGestureHandlerProps = v;

var module493 = (function (e) {
  module10.default(v, e);

  var React = v,
    module505 = h(),
    s = function () {
      var e,
        o = module15.default(React);

      if (module505) {
        var t = module15.default(this).constructor;
        e = Reflect.construct(o, arguments, t);
      } else e = o.apply(this, arguments);

      return module12.default(this, e);
    };

  function v() {
    module7.default(this, v);
    return s.apply(this, arguments);
  }

  module8.default(v, [
    {
      key: 'componentDidMount',
      value: function () {
        console.warn(
          require('./493').tagMessage(
            'ForceTouchGestureHandler is not available on this platform. Please use ForceTouchGestureHandler.forceTouchAvailable to conditionally render other components that would provide a fallback behavior specific to your usecase'
          )
        );
      },
    },
    {
      key: 'render',
      value: function () {
        return this.props.children;
      },
    },
  ]);
  return v;
})(React.default.Component);

module493.forceTouchAvailable = false;
exports.forceTouchHandlerName = 'ForceTouchGestureHandler';
var module498 =
  null != module505.default && module505.default.forceTouchAvailable
    ? module402.default({
        name: 'ForceTouchGestureHandler',
        allowedProps: [].concat(module35.default(require('./498').baseGestureHandlerProps), v),
        config: {},
      })
    : module493;
exports.ForceTouchGestureHandler = module498;
module498.forceTouchAvailable = (null == module505.default ? undefined : module505.default.forceTouchAvailable) || false;
