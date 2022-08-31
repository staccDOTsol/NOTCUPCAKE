var t =
    (this && this.__assign) ||
    function () {
      return (t =
        Object.assign ||
        function (t) {
          for (var u, n = 1, o = arguments.length; n < o; n++) for (var l in (u = arguments[n])) Object.prototype.hasOwnProperty.call(u, l) && (t[l] = u[l]);

          return t;
        }).apply(this, arguments);
    },
  u =
    (this && this.__createBinding) ||
    (Object.create
      ? function (t, u, n, o) {
          if (undefined === o) o = n;
          Object.defineProperty(t, o, {
            enumerable: true,
            get: function () {
              return u[n];
            },
          });
        }
      : function (t, u, n, o) {
          if (undefined === o) o = n;
          t[o] = u[n];
        }),
  n =
    (this && this.__setModuleDefault) ||
    (Object.create
      ? function (t, u) {
          Object.defineProperty(t, 'default', {
            enumerable: true,
            value: u,
          });
        }
      : function (t, u) {
          t.default = u;
        }),
  o =
    (this && this.__importStar) ||
    function (t) {
      if (t && t.__esModule) return t;
      var o = {};
      if (null != t) for (var l in t) 'default' !== l && Object.prototype.hasOwnProperty.call(t, l) && u(o, t, l);
      n(o, t);
      return o;
    },
  l =
    (this && this.__importDefault) ||
    function (t) {
      return t && t.__esModule
        ? t
        : {
            default: t,
          };
    };

var React = l(require('react')),
  module888 = l(require('./888')),
  module889 = o(require('./889')),
  f = new Map(),
  h = {
    autoDelete: true,
  },
  p = {
    register: function (t) {
      console.error(
        "[reconnect.js]: NullOutlet.register() shouldn't be called.\nNormally it's because your outlets have been updated with hot-reload. You might need to reload your app."
      );
      return function () {
        return 0;
      };
    },
    update: function (t) {
      console.error(
        "[reconnect.js]: NullOutlet.update() shouldn't be called.\nNormally it's because your outlets have been updated with hot-reload. You might need to reload your app."
      );
    },
    getValue: function () {
      console.error(
        "[reconnect.js]: NullOutlet.getValue() shouldn't be called.\nNormally it's because your outlets have been updated with hot-reload. You might need to reload your app."
      );
    },
    getRefCnt: function () {
      console.error(
        "[reconnect.js]: NullOutlet.getRefCnt() shouldn't be called.\nNormally it's because your outlets have been updated with hot-reload. You might need to reload your app."
      );
      return 0;
    },
  };

function O(u, n, o, l) {
  var React,
    c = {
      update: 'update',
    },
    p = 0;
  React = o instanceof Function ? o() : o;
  l = undefined === l ? h : t(t({}, h), l);
  return {
    register: function (t) {
      function o(u) {
        t(u);
      }

      p++;
      u.on(c.update, o);
      return function () {
        p--;
        u.off(c.update, o);
        if (0 === p && (null === l || undefined === l ? undefined : l.autoDelete)) f.delete(n);
      };
    },
    update: function (t) {
      if (t instanceof Function) {
        var n = t(React);
        if (module889.isPromise(n))
          n.then(function (t) {
            React = t;
            u.emit(c.update, React);
          });
        else {
          React = n;
          u.emit(c.update, React);
        }
      } else {
        React = t;
        u.emit(c.update, React);
      }
    },
    getValue: function () {
      return React;
    },
    getRefCnt: function () {
      return p;
    },
  };
}

function v(t, u, n) {
  if (f.has(t)) return f.get(t);
  var o = O(new module888.default(), t, u, n);
  f.set(t, o);
  return o;
}

function b(t) {
  return f.has(t) ? f.get(t) : p;
}

function y(t, u) {
  var n = f.get(t);
  if (n) 0 === n.getRefCnt() ? f.delete(t) : u && f.delete(t);
}

function m(t, u) {
  var n = React.default.useRef(false);

  if (!n.current) {
    v(t, u, {
      autoDelete: false,
    });
    n.current = true;
  }

  React.default.useEffect(function () {
    return function () {
      y(t, true);
    };
  }, []);
}

exports.isNull = function (t) {
  return Object.is(p, t);
};

exports.getNewOutlet = v;

exports.createOutlet = function (t, u) {
  if (f.has(t)) return f.get(t);
  var n = O(new module888.default(), t, u, {
    autoDelete: false,
  });
  f.set(t, n);
  return n;
};

exports.getOutlet = b;

exports.hasOutlet = function (t) {
  return f.has(t);
};

exports.removeOutlet = y;

exports.useOutlet = function (t, u, n) {
  var o = React.default.useRef(undefined === u ? b(t) : v(t, u, n)).current,
    l = React.default.useState(o.getValue()),
    c = l[0],
    s = l[1];
  React.default.useEffect(
    function () {
      return o.register(s);
    },
    [o]
  );
  return [c, o.update];
};

exports.useOutletSetter = function (t) {
  return React.default.useCallback(function (u) {
    b(t).update(u);
  }, []);
};

exports.useOutletDeclaration = m;

exports.useOutletSelector = function (t, u) {
  var n = React.default.useRef(b(t)).current,
    o = React.default.useState(u(n.getValue())),
    l = o[0],
    c = o[1];
  React.default.useEffect(
    function () {
      return n.register(function (t) {
        var n = u(t);
        if (n !== l) c(n);
      });
    },
    [n, l, u]
  );
  return l;
};

var _ = m;
exports.useNewOutlet = _;

exports.getGlobalRegistry = function () {
  return f;
};
