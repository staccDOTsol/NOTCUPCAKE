Object.defineProperty(exports, 'CardAnimationContext', {
  enumerable: true,
  get: function () {
    return module1107.default;
  },
});
Object.defineProperty(exports, 'GestureHandlerRefContext', {
  enumerable: true,
  get: function () {
    return module1112.default;
  },
});
Object.defineProperty(exports, 'Header', {
  enumerable: true,
  get: function () {
    return module1061.default;
  },
});
Object.defineProperty(exports, 'StackView', {
  enumerable: true,
  get: function () {
    return module1058.default;
  },
});
Object.defineProperty(exports, 'createStackNavigator', {
  enumerable: true,
  get: function () {
    return module1056.default;
  },
});
Object.defineProperty(exports, 'useCardAnimation', {
  enumerable: true,
  get: function () {
    return module1119.default;
  },
});
Object.defineProperty(exports, 'useGestureHandlerRef', {
  enumerable: true,
  get: function () {
    return module1120.default;
  },
});
var module1051 = v(require('./1051'));
exports.CardStyleInterpolators = module1051;
var module1053 = v(require('./1053'));
exports.HeaderStyleInterpolators = module1053;
var module1054 = v(require('./1054'));
exports.TransitionPresets = module1054;
var module1055 = v(require('./1055'));
exports.TransitionSpecs = module1055;

var module1056 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1056')),
  module1061 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1061')),
  module1058 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1058')),
  module1107 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1107')),
  module1112 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1112')),
  module1119 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1119')),
  module1120 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1120'));

function O(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (O = function (t) {
    return t ? o : n;
  })(t);
}

function v(t, n) {
  if (!n && t && t.__esModule) return t;
  if (null === t || ('object' != typeof t && 'function' != typeof t))
    return {
      default: t,
    };
  var o = O(n);
  if (o && o.has(t)) return o.get(t);
  var u = {},
    f = Object.defineProperty && Object.getOwnPropertyDescriptor;

  for (var l in t)
    if ('default' !== l && Object.prototype.hasOwnProperty.call(t, l)) {
      var c = f ? Object.getOwnPropertyDescriptor(t, l) : null;
      if (c && (c.get || c.set)) Object.defineProperty(u, l, c);
      else u[l] = t[l];
    }

  u.default = t;
  if (o) o.set(t, u);
  return u;
}
