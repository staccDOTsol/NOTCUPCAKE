require('react');

var n = null,
  u = new Set();

function t(u) {
  if (n !== u && null != u) n = u;
}

function o(u) {
  if (n === u && null != u) n = null;
}

module.exports = {
  currentlyFocusedInput: function () {
    return n;
  },
  focusInput: t,
  blurInput: o,
  currentlyFocusedField: function () {
    return require('./50').findNodeHandle(n);
  },
  focusField: function (n) {},
  blurField: function (n) {},
  focusTextInput: function (u) {
    if ('number' != typeof u && n !== u && null != u) {
      t(u);

      require('./138').Commands.focus(u);
    }
  },
  blurTextInput: function (u) {
    if ('number' != typeof u && n === u && null != u) {
      o(u);

      require('./138').Commands.blur(u);
    }
  },
  registerInput: function (n) {
    if ('number' != typeof n) u.add(n);
  },
  unregisterInput: function (n) {
    if ('number' != typeof n) u.delete(n);
  },
  isTextInput: function (n) {
    return 'number' != typeof n && u.has(n);
  },
};
