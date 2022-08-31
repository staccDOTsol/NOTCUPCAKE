var module76 = require('@babel/runtime/helpers/interopRequireDefault')(require('./76')),
  module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var o = u(n);
    if (o && o.has(t)) return o.get(t);
    var l = {},
      s = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var f in t)
      if ('default' !== f && Object.prototype.hasOwnProperty.call(t, f)) {
        var c = s ? Object.getOwnPropertyDescriptor(t, f) : null;
        if (c && (c.get || c.set)) Object.defineProperty(l, f, c);
        else l[f] = t[f];
      }

    l.default = t;
    if (o) o.set(t, l);
    return l;
  })(require('react'));

function u(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (u = function (t) {
    return t ? o : n;
  })(t);
}

exports.PROD_RPC_URL = 'https://trashpandas.rpcpool.com/896a4208af08c479e8cf62e109f1';
var l = React.default.createContext({
  company: undefined,
  companyId: undefined,
  password: undefined,
  companies: [],
  bakeryInfo: {},
  setCompany: function () {},
  setBakeryInfo: function () {},
});
exports.GlobalContext = l;

exports.GlobalProvider = function (u) {
  var s = u.children,
    f = React.useState({}),
    c = module23.default(f, 2),
    p = c[0],
    v = c[1],
    y = React.useState([]),
    b = module23.default(y, 2),
    P = b[0],
    w = b[1],
    O = React.useState(),
    _ = module23.default(O, 2),
    h = _[0],
    k = _[1];

  React.useEffect(
    function () {
      var n;
      module76.default.async(
        function (o) {
          for (;;)
            switch ((o.prev = o.next)) {
              case 0:
                o.next = 2;
                return module76.default.awrap(require('./553').listBakeries());

              case 2:
                n = o.sent;
                w(n);

              case 4:
              case 'end':
                return o.stop();
            }
        },
        null,
        null,
        null,
        Promise
      );
    },
    [w]
  );
  return React.default.createElement(
    l.Provider,
    {
      value: {
        companyId: p.id,
        company: p.name,
        password: p.password,
        companies: P,
        bakeryInfo: h,
        setCompany: v,
        setBakeryInfo: k,
      },
    },
    s
  );
};

exports.useGlobals = function () {
  var t = React.useContext(l);
  if (undefined === t) throw new Error('useGlobals must be used within a GlobalProvider');
  return t;
};
