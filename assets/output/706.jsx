var module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
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
    var n = p(t);
    if (n && n.has(e)) return n.get(e);
    var u = {},
      o = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var c in e)
      if ('default' !== c && Object.prototype.hasOwnProperty.call(e, c)) {
        var l = o ? Object.getOwnPropertyDescriptor(e, c) : null;
        if (l && (l.get || l.set)) Object.defineProperty(u, c, l);
        else u[c] = e[c];
      }

    u.default = e;
    if (n) n.set(e, u);
    return u;
  })(require('react')),
  ReactNative = require('react-native'),
  module707 = require('@babel/runtime/helpers/interopRequireDefault')(require('./707'));

function p(e) {
  if ('function' != typeof WeakMap) return null;
  var t = new WeakMap(),
    n = new WeakMap();
  return (p = function (e) {
    return e ? n : t;
  })(e);
}

function s() {
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

var y = React.createContext(null);
exports.PortalContext = y;

var h = (function (p, ...args) {
  module10.default(P, p);

  var h = P,
    k = s(),
    b = function () {
      var e,
        t = module15.default(h);

      if (k) {
        var n = module15.default(this).constructor;
        e = Reflect.construct(t, arguments, n);
      } else e = t.apply(this, arguments);

      return module12.default(this, e);
    };

  function P() {
    var t;
    module7.default(this, P);

    (t = b.call(this, ...args)).setManager = function (e) {
      t.manager = e;
    };

    t.mount = function (e) {
      var n = t.nextKey++;
      if (t.manager) t.manager.mount(n, e);
      else
        t.queue.push({
          type: 'mount',
          key: n,
          children: e,
        });
      return n;
    };

    t.update = function (e, n) {
      if (t.manager) t.manager.update(e, n);
      else {
        var u = {
            type: 'mount',
            key: e,
            children: n,
          },
          o = t.queue.findIndex(function (t) {
            return 'mount' === t.type || ('update' === t.type && t.key === e);
          });
        if (o > -1) t.queue[o] = u;
        else t.queue.push(u);
      }
    };

    t.unmount = function (e) {
      if (t.manager) t.manager.unmount(e);
      else
        t.queue.push({
          type: 'unmount',
          key: e,
        });
    };

    t.nextKey = 0;
    t.queue = [];
    return t;
  }

  module8.default(P, [
    {
      key: 'componentDidMount',
      value: function () {
        for (var e = this.manager, t = this.queue; t.length && e; ) {
          var n = t.pop();
          if (n)
            switch (n.type) {
              case 'mount':
                e.mount(n.key, n.children);
                break;

              case 'update':
                e.update(n.key, n.children);
                break;

              case 'unmount':
                e.unmount(n.key);
            }
        }
      },
    },
    {
      key: 'render',
      value: function () {
        return (
          <y.Provider
            value={{
              mount: this.mount,
              update: this.update,
              unmount: this.unmount,
            }}
          >
            <ReactNative.View style={v.container} collapsable={false} pointerEvents="box-none">
              {this.props.children}
            </ReactNative.View>
            <module707.default ref={this.setManager} />
          </y.Provider>
        );
      },
    },
  ]);
  return P;
})(React.Component);

exports.default = h;
h.displayName = 'Portal.Host';
var v = ReactNative.StyleSheet.create({
  container: {
    flex: 1,
  },
});
