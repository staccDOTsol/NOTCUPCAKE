var module76 = require('@babel/runtime/helpers/interopRequireDefault')(require('./76')),
  module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8')),
  module10 = require('@babel/runtime/helpers/interopRequireDefault')(require('./10')),
  module12 = require('@babel/runtime/helpers/interopRequireDefault')(require('./12')),
  module15 = require('@babel/runtime/helpers/interopRequireDefault')(require('./15'));

function l(e) {
  if ('function' != typeof WeakMap) return null;
  var t = new WeakMap(),
    n = new WeakMap();
  return (l = function (e) {
    return e ? n : t;
  })(e);
}

function f() {
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

var React = (function (l) {
  module10.default(y, l);

  var React = y,
    p = f(),
    h = function () {
      var e,
        t = module15.default(React);

      if (p) {
        var n = module15.default(this).constructor;
        e = Reflect.construct(t, arguments, n);
      } else e = t.apply(this, arguments);

      return module12.default(this, e);
    };

  function y() {
    module7.default(this, y);
    return h.apply(this, arguments);
  }

  module8.default(y, [
    {
      key: 'componentDidMount',
      value: function () {
        return module76.default.async(
          function (t) {
            for (;;)
              switch ((t.prev = t.next)) {
                case 0:
                  this.checkManager();
                  t.next = 3;
                  return module76.default.awrap(Promise.resolve());

                case 3:
                  this.key = this.props.manager.mount(this.props.children);

                case 4:
                case 'end':
                  return t.stop();
              }
          },
          null,
          this,
          null,
          Promise
        );
      },
    },
    {
      key: 'componentDidUpdate',
      value: function () {
        this.checkManager();
        this.props.manager.update(this.key, this.props.children);
      },
    },
    {
      key: 'componentWillUnmount',
      value: function () {
        this.checkManager();
        this.props.manager.unmount(this.key);
      },
    },
    {
      key: 'checkManager',
      value: function () {
        if (!this.props.manager)
          throw new Error(
            "Looks like you forgot to wrap your root component with `Provider` component from `react-native-paper`.\n\nPlease read our getting-started guide and make sure you've followed all the required steps.\n\nhttps://callstack.github.io/react-native-paper/getting-started.html"
          );
      },
    },
    {
      key: 'render',
      value: function () {
        return null;
      },
    },
  ]);
  return y;
})(
  (function (e, t) {
    if (!t && e && e.__esModule) return e;
    if (null === e || ('object' != typeof e && 'function' != typeof e))
      return {
        default: e,
      };
    var n = l(t);
    if (n && n.has(e)) return n.get(e);
    var o = {},
      u = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in e)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(e, c)) {
        var f = u ? Object.getOwnPropertyDescriptor(e, c) : null;
        if (f && (f.get || f.set)) Object.defineProperty(o, c, f);
        else o[c] = e[c];
      }

    o.default = e;
    if (n) n.set(e, o);
    return o;
  })(require('react')).Component
);

exports.default = React;
