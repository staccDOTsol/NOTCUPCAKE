exports.__esModule = true;

exports.default = function (f) {
  var c = React.createContext(f),
    l = module695.default(f, c),
    s = module696.default(l, c);
  return {
    ThemeContext: c,
    ThemeProvider: l,
    withTheme: s,
    useTheme: function (u) {
      var o = React.useContext(c),
        f = React.useMemo(
          function () {
            return o && u ? module694.default(o, u) : o || u;
          },
          [o, u]
        );
      return f;
    },
  };
};

var React = (function (t) {
    if (t && t.__esModule) return t;
    var n = {};
    if (null != t)
      for (var u in t)
        if (Object.prototype.hasOwnProperty.call(t, u)) {
          var o = Object.defineProperty && Object.getOwnPropertyDescriptor ? Object.getOwnPropertyDescriptor(t, u) : {};
          if (o.get || o.set) Object.defineProperty(n, u, o);
          else n[u] = t[u];
        }
    n.default = t;
    return n;
  })(require('react')),
  module694 = require('./694'),
  module695 = require('./695'),
  module696 = require('./696');
