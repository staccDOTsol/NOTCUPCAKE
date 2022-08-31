var module23 = require('@babel/runtime/helpers/interopRequireDefault')(require('./23')),
  React = (function (t, n) {
    if (!n && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var u = o(n);
    if (u && u.has(t)) return u.get(t);
    var c = {},
      f = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var l in t)
      if ('default' !== l && Object.prototype.hasOwnProperty.call(t, l)) {
        var p = f ? Object.getOwnPropertyDescriptor(t, l) : null;
        if (p && (p.get || p.set)) Object.defineProperty(c, l, p);
        else c[l] = t[l];
      }

    c.default = t;
    if (u) u.set(t, c);
    return c;
  })(require('react'));

function o(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    u = new WeakMap();
  return (o = function (t) {
    return t ? u : n;
  })(t);
}

var u = React.createContext(null);
exports.ListAccordionGroupContext = u;

var c = function (o) {
  var c = o.expandedId,
    f = o.onAccordionPress,
    l = o.children,
    p = React.useState(undefined),
    s = module23.default(p, 2),
    v = s[0],
    y = s[1];
  return (
    <u.Provider
      value={{
        expandedId: c || v,
        onAccordionPress:
          f ||
          function (t) {
            y(function (n) {
              return n === t ? undefined : t;
            });
          },
      }}
    >
      {l}
    </u.Provider>
  );
};

c.displayName = 'List.AccordionGroup';
var f = c;
exports.default = f;
