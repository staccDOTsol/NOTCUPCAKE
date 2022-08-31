exports.filterConfig = function (t, o) {
  for (var l, u = arguments.length > 2 && undefined !== arguments[2] ? arguments[2] : {}, s = module29.default({}, u), c = i(o); !(l = c()).done; ) {
    var f = l.value,
      h = t[f];
    p = f;

    if (!(undefined === (b = h) || (b === Object(b) && '__isNative' in b) || 'onHandlerStateChange' === p || 'onGestureEvent' === p)) {
      if ('simultaneousHandlers' === f || 'waitFor' === f) h = v(t[f]);
      else if ('hitSlop' === f && 'object' != typeof h)
        h = {
          top: h,
          left: h,
          bottom: h,
          right: h,
        };
      s[f] = h;
    }
  }

  var b, p;
  return s;
};

exports.findNodeHandle = function (n) {
  return 'web' === ReactNative.Platform.OS ? n : ReactNative.findNodeHandle(n);
};

exports.scheduleFlushOperations = function () {
  if (null === h)
    h = requestAnimationFrame(function () {
      module492.default.flushOperations();
      h = null;
    });
};

var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  ReactNative = require('react-native'),
  module492 = require('@babel/runtime/helpers/interopRequireDefault')(require('./492'));

function i(n, t) {
  var o = ('undefined' != typeof Symbol && n[Symbol.iterator]) || n['@@iterator'];
  if (o) return (o = o.call(n)).next.bind(o);

  if (Array.isArray(n) || (o = l(n)) || (t && n && 'number' == typeof n.length)) {
    if (o) n = o;
    var i = 0;
    return function () {
      return i >= n.length
        ? {
            done: true,
          }
        : {
            done: false,
            value: n[i++],
          };
    };
  }

  throw new TypeError('Invalid attempt to iterate non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.');
}

function l(n, t) {
  if (n) {
    if ('string' == typeof n) return u(n, t);
    var o = Object.prototype.toString.call(n).slice(8, -1);
    if ('Object' === o && n.constructor) o = n.constructor.name;
    return 'Map' === o || 'Set' === o ? Array.from(n) : 'Arguments' === o || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(o) ? u(n, t) : undefined;
  }
}

function u(n, t) {
  if (null == t || t > n.length) t = n.length;

  for (var o = 0, i = new Array(t); o < t; o++) i[o] = n[o];

  return i;
}

var s = ['id', 'enabled', 'shouldCancelWhenOutside', 'hitSlop', 'cancelsTouchesInView'],
  c = [].concat(s, ['waitFor', 'simultaneousHandlers'], ['onBegan', 'onFailed', 'onCancelled', 'onActivated', 'onEnded', 'onGestureEvent', 'onHandlerStateChange']);
exports.baseGestureHandlerProps = c;
var f = [].concat(s, ['needsPointerData', 'manualActivation']);

function v(n) {
  module29 = require('./493').toArray(module29);
  return 'web' === ReactNative.Platform.OS
    ? module29
        .map(function (n) {
          return n.current;
        })
        .filter(function (n) {
          return n;
        })
    : module29
        .map(function (n) {
          var t;
          return require('./497').handlerIDToTag[n] || (null == (t = n.current) ? undefined : t.handlerTag) || -1;
        })
        .filter(function (n) {
          return n > 0;
        });
}

exports.baseGestureHandlerWithMonitorProps = f;
var h = null;
