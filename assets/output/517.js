var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module10 = require('@babel/runtime/helpers/interopRequireDefault')(require('./10')),
  module12 = require('@babel/runtime/helpers/interopRequireDefault')(require('./12')),
  module15 = require('@babel/runtime/helpers/interopRequireDefault')(require('./15')),
  module35 = require('@babel/runtime/helpers/interopRequireDefault')(require('./35'));

function l(e, t) {
  var u = ('undefined' != typeof Symbol && e[Symbol.iterator]) || e['@@iterator'];
  if (u) return (u = u.call(e)).next.bind(u);

  if (Array.isArray(e) || (u = f(e)) || (t && e && 'number' == typeof e.length)) {
    if (u) e = u;
    var n = 0;
    return function () {
      return n >= e.length
        ? {
            done: true,
          }
        : {
            done: false,
            value: e[n++],
          };
    };
  }

  throw new TypeError('Invalid attempt to iterate non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.');
}

function f(e, t) {
  if (e) {
    if ('string' == typeof e) return c(e, t);
    var u = Object.prototype.toString.call(e).slice(8, -1);
    if ('Object' === u && e.constructor) u = e.constructor.name;
    return 'Map' === u || 'Set' === u ? Array.from(e) : 'Arguments' === u || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(u) ? c(e, t) : undefined;
  }
}

function c(e, t) {
  if (null == t || t > e.length) t = e.length;

  for (var u = 0, n = new Array(t); u < t; u++) n[u] = e[u];

  return n;
}

function v(e) {
  var t = p();
  return function () {
    var u,
      n = module15.default(e);

    if (t) {
      var o = module15.default(this).constructor;
      u = Reflect.construct(n, arguments, o);
    } else u = n.apply(this, arguments);

    return module12.default(this, u);
  };
}

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

function h(e, t) {
  return undefined === e ? module35.default(t) : [].concat(module35.default(e), module35.default(t));
}

var module508 = (function (i, ...args) {
  module10.default(o, i);
  var s = v(o);

  function o() {
    var e;
    module7.default(this, o);
    (e = s.call(this)).gestures = [];
    e.simultaneousGestures = [];
    e.requireGesturesToFail = [];
    e.gestures = args;
    return e;
  }

  module8.default(o, [
    {
      key: 'prepareSingleGesture',
      value: function (t, u, n) {
        if (t instanceof require('./508').BaseGesture) {
          var i = module29.default({}, t.config);
          i.simultaneousWith = h(i.simultaneousWith, u);
          i.requireToFail = h(i.requireToFail, n);
          t.config = i;
        } else t instanceof o && ((t.simultaneousGestures = u), (t.requireGesturesToFail = n), t.prepare());
      },
    },
    {
      key: 'prepare',
      value: function () {
        for (var e, t = l(this.gestures); !(e = t()).done; ) {
          var u = e.value;
          this.prepareSingleGesture(u, this.simultaneousGestures, this.requireGesturesToFail);
        }
      },
    },
    {
      key: 'initialize',
      value: function () {
        for (var e, t = l(this.gestures); !(e = t()).done; ) {
          e.value.initialize();
        }
      },
    },
    {
      key: 'toGestureArray',
      value: function () {
        return this.gestures.flatMap(function (e) {
          return e.toGestureArray();
        });
      },
    },
  ]);
  return o;
})(require('./508').Gesture);

exports.ComposedGesture = module508;

var G = (function (e) {
  module10.default(s, e);
  var i = v(s);

  function s() {
    module7.default(this, s);
    return i.apply(this, arguments);
  }

  module8.default(s, [
    {
      key: 'prepare',
      value: function () {
        for (
          var e,
            t = this.gestures
              .flatMap(function (e) {
                return e.toGestureArray();
              })
              .concat(this.simultaneousGestures),
            u = l(this.gestures);
          !(e = u()).done;

        ) {
          var n = e.value;
          this.prepareSingleGesture(n, t, this.requireGesturesToFail);
        }
      },
    },
  ]);
  return s;
})(module508);

exports.SimultaneousGesture = G;

var b = (function (e) {
  module10.default(s, e);
  var i = v(s);

  function s() {
    module7.default(this, s);
    return i.apply(this, arguments);
  }

  module8.default(s, [
    {
      key: 'prepare',
      value: function () {
        for (
          var e = this.gestures.map(function (e) {
              return e.toGestureArray();
            }),
            t = [],
            u = 0;
          u < this.gestures.length;
          u++
        ) {
          this.prepareSingleGesture(this.gestures[u], this.simultaneousGestures, this.requireGesturesToFail.concat(t));
          t = t.concat(e[u]);
        }
      },
    },
  ]);
  return s;
})(module508);

exports.ExclusiveGesture = b;
