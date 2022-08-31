var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module35 = require('@babel/runtime/helpers/interopRequireDefault')(require('./35')),
  React = (function (t, l) {
    if (!l && t && t.__esModule) return t;
    if (null === t || ('object' != typeof t && 'function' != typeof t))
      return {
        default: t,
      };
    var n = o(l);
    if (n && n.has(t)) return n.get(t);
    var u = {},
      c = Object.defineProperty && Object.getOwnPropertyDescriptor;

    for (var f in t)
      if ('default' !== f && Object.prototype.hasOwnProperty.call(t, f)) {
        var s = c ? Object.getOwnPropertyDescriptor(t, f) : null;
        if (s && (s.get || s.set)) Object.defineProperty(u, f, s);
        else u[f] = t[f];
      }

    u.default = t;
    if (n) n.set(t, u);
    return u;
  })(require('react')),
  ReactNative = require('react-native');

function o(t) {
  if ('function' != typeof WeakMap) return null;
  var l = new WeakMap(),
    n = new WeakMap();
  return (o = function (t) {
    return t ? n : l;
  })(t);
}

var c = React.memo(
  function (o) {
    var c = o.rtl,
      f = o.item,
      s = o.label,
      b = o.value,
      y = o.parent,
      p = o.selectable,
      S = o.disabled,
      C = o.props,
      M = o.custom,
      v = o.isSelected,
      I = o.IconComponent,
      P = o.TickIconComponent,
      L = o.listItemContainerStyle,
      O = o.listItemLabelStyle,
      h = o.listChildContainerStyle,
      j = o.listParentContainerStyle,
      k = o.listChildLabelStyle,
      E = o.listParentLabelStyle,
      _ = o.customItemContainerStyle,
      w = o.customItemLabelStyle,
      D = o.selectedItemContainerStyle,
      T = o.selectedItemLabelStyle,
      W = o.disabledItemContainerStyle,
      x = o.disabledItemLabelStyle,
      H = o.containerStyle,
      q = o.labelStyle,
      z = o.categorySelectable,
      A = o.onPress,
      B = o.setPosition,
      F = o.THEME,
      G = React.useMemo(
        function () {
          return v && React.default.createElement(P, null);
        },
        [v, P]
      ),
      J = React.useMemo(
        function () {
          return null !== y ? [F.listChildContainer].concat(module35.default([h].flat())) : [F.listParentContainer].concat(module35.default([j].flat()));
        },
        [F, c, h, j, y]
      ),
      K = React.useMemo(
        function () {
          return v && D;
        },
        [v, D]
      ),
      N = React.useMemo(
        function () {
          return S && W;
        },
        [S, W]
      ),
      Q = React.useMemo(
        function () {
          return M && [F.customItemContainer].concat(module35.default([_].flat()));
        },
        [F, M, _]
      ),
      R = React.useMemo(
        function () {
          return [].concat(
            module35.default([L].flat()),
            module35.default([J].flat()),
            module35.default([H].flat()),
            module35.default([K].flat()),
            module35.default([Q].flat()),
            module35.default([N].flat())
          );
        },
        [L, J, K, Q, N, H]
      ),
      U = React.useMemo(
        function () {
          return null !== y ? [F.listChildLabel].concat(module35.default([k].flat())) : [F.listParentLabel].concat(module35.default([E].flat()));
        },
        [F, k, E, y]
      ),
      V = React.useMemo(
        function () {
          return v && T;
        },
        [v, T]
      ),
      X = React.useMemo(
        function () {
          return S && x;
        },
        [S, x]
      ),
      Y = React.useMemo(
        function () {
          return M && [F.customItemLabel].concat(module35.default([w].flat()));
        },
        [F, M, w]
      ),
      Z = React.useMemo(
        function () {
          return [].concat(
            module35.default([O].flat()),
            module35.default([U].flat()),
            module35.default([q].flat()),
            module35.default([V].flat()),
            module35.default([Y].flat()),
            module35.default([X].flat())
          );
        },
        [O, U, V, Y, X, q]
      ),
      $ = React.useCallback(
        function () {
          if (null !== y || z || true === p) A(f, M);
        },
        [A, y, z, M]
      ),
      ee = React.useCallback(
        function (t) {
          var l = t.nativeEvent.layout.y;
          B(b, l);
        },
        [b]
      );
    return React.default.createElement(
      ReactNative.TouchableOpacity,
      module29.default(
        {
          style: R,
          onPress: $,
          onLayout: ee,
        },
        C,
        {
          disabled: false === p || S,
          testID: f.testID,
        }
      ),
      I,
      React.default.createElement(
        ReactNative.Text,
        {
          style: Z,
        },
        s
      ),
      G
    );
  },
  function (t, l) {
    return (
      t.label === l.label &&
      t.value === l.value &&
      t.parent === l.parent &&
      t.selectable === l.selectable &&
      t.disabled === l.disabled &&
      t.custom === l.custom &&
      t.isSelected === l.isSelected &&
      t.categorySelectable === l.categorySelectable &&
      t.rtl === l.rtl &&
      t.theme === l.theme
    );
  }
);
exports.default = c;
