var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module105 = require('@babel/runtime/helpers/interopRequireDefault')(require('./105')),
  module256 = require('@babel/runtime/helpers/interopRequireDefault')(require('./256')),
  React = require('@babel/runtime/helpers/interopRequireDefault')(require('react')),
  ReactNative = require('react-native'),
  module768 = require('@babel/runtime/helpers/interopRequireDefault')(require('./768')),
  l = ['name', 'onPress', 'forceTextInputFocus', 'color'];

exports.ICON_SIZE = 24;
var f = React.default.createContext({
  style: {},
  isTextInputFocused: false,
  forceFocus: function () {},
});

exports.IconAdornment = function (t) {
  var o = t.icon,
    c = t.topPosition,
    s = t.side,
    l = t.isTextInputFocused,
    I = t.forceFocus,
    p = {
      style: module256.default(
        {
          top: c,
        },
        s,
        12
      ),
      isTextInputFocused: l,
      forceFocus: I,
    };
  return React.default.createElement(
    f.Provider,
    {
      value: p,
    },
    o
  );
};

var I = function (n) {
  var I = n.name,
    F = n.onPress,
    v = n.forceTextInputFocus,
    x = n.color,
    y = module105.default(n, l),
    T = React.default.useContext(f),
    P = T.style,
    C = T.isTextInputFocused,
    _ = T.forceFocus,
    E = React.default.useCallback(
      function () {
        if (v && !C) _();
        if (!(null == F)) F();
      },
      [v, _, C, F]
    );
  return React.default.createElement(
    ReactNative.View,
    {
      style: [p.container, P],
    },
    React.default.createElement(
      module768.default,
      module29.default(
        {
          icon: I,
          style: p.iconButton,
          size: 24,
          onPress: E,
          color: 'function' == typeof x ? x(C) : x,
        },
        y
      )
    )
  );
};

I.displayName = 'TextInput.Icon';
I.defaultProps = {
  forceTextInputFocus: true,
};
var p = ReactNative.StyleSheet.create({
    container: {
      position: 'absolute',
      width: 24,
      height: 24,
      justifyContent: 'center',
      alignItems: 'center',
    },
    iconButton: {
      margin: 0,
    },
  }),
  F = I;
exports.default = F;
