exports.getAdornmentConfig = function (t) {
  var n = t.left,
    l = t.right,
    p = [];
  if (n || l)
    [
      {
        side: require('./810').AdornmentSide.Left,
        adornment: n,
      },
      {
        side: require('./810').AdornmentSide.Right,
        adornment: l,
      },
    ].forEach(function (t) {
      var n,
        l = t.side,
        c = t.adornment;

      if (c && React.default.isValidElement(c)) {
        if (c.type === module809.default) n = require('./810').AdornmentType.Affix;
        else if (c.type === module808.default) n = require('./810').AdornmentType.Icon;
        p.push({
          side: l,
          type: n,
        });
      }
    });
  return p;
};

exports.getAdornmentStyleAdjustmentForNativeInput = function (o) {
  var f = o.adornmentConfig,
    u = o.leftAffixWidth,
    l = o.rightAffixWidth,
    p = o.paddingHorizontal,
    s = o.inputOffset,
    y = undefined === s ? 0 : s,
    A = o.mode;

  if (f.length) {
    var v = f.map(function (t) {
        var o,
          f = t.type,
          s = t.side,
          module811 = s === require('./810').AdornmentSide.Left,
          module811 = A === require('./810').InputMode.Outlined ? require('./811').ADORNMENT_OFFSET + require('./811').OUTLINED_INPUT_OFFSET : require('./811').ADORNMENT_OFFSET,
          T = 'padding' + c(s),
          h = module811 ? u : l,
          x = 'number' == typeof p ? p : module811,
          F = h + x,
          module810 = f === require('./810').AdornmentType.Affix,
          E = 'margin' + c(s);

        o = {};
        module256.default(o, E, module810 ? 0 : F);
        module256.default(o, T, module810 ? F : y);
        return o;
      }),
      O = v.reduce(function (n, o) {
        return module29.default({}, n, o);
      }, {});
    return O;
  }

  return [{}];
};

var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module256 = require('@babel/runtime/helpers/interopRequireDefault')(require('./256')),
  React = require('@babel/runtime/helpers/interopRequireDefault')(require('react')),
  module808 = p(require('./808')),
  module809 = p(require('./809'));

function l(t) {
  if ('function' != typeof WeakMap) return null;
  var n = new WeakMap(),
    o = new WeakMap();
  return (l = function (t) {
    return t ? o : n;
  })(t);
}

function p(t, n) {
  if (!n && t && t.__esModule) return t;
  if (null === t || ('object' != typeof t && 'function' != typeof t))
    return {
      default: t,
    };
  var o = l(n);
  if (o && o.has(t)) return o.get(t);
  var f = {},
    u = Object.defineProperty && Object.getOwnPropertyDescriptor;

  for (var p in t)
    if ('default' !== p && Object.prototype.hasOwnProperty.call(t, p)) {
      var c = u ? Object.getOwnPropertyDescriptor(t, p) : null;
      if (c && (c.get || c.set)) Object.defineProperty(f, p, c);
      else f[p] = t[p];
    }

  f.default = t;
  if (o) o.set(t, f);
  return f;
}

var c = function (t) {
    return t.charAt(0).toUpperCase() + t.slice(1);
  },
  module810 = function (n) {
    var l = n.adornmentConfig,
      p = n.left,
      c = n.right,
      module810 = n.onAffixChange,
      y = n.textStyle,
      A = n.visible,
      v = n.topPosition,
      O = n.isTextInputFocused,
      T = n.forceFocus,
      h = n.paddingHorizontal,
      x = n.maxFontSizeMultiplier;
    return l.length
      ? React.default.createElement(
          React.default.Fragment,
          null,
          l.map(function (n) {
            var l,
              F = n.type,
              S = n.side;
            if (S === require('./810').AdornmentSide.Left) l = p;
            else if (S === require('./810').AdornmentSide.Right) l = c;
            var E = {
              key: S,
              side: S,
              testID: S + '-' + F + '-adornment',
              isTextInputFocused: O,
              paddingHorizontal: h,
            };
            return F === require('./810').AdornmentType.Icon
              ? React.default.createElement(
                  module808.IconAdornment,
                  module29.default({}, E, {
                    icon: l,
                    topPosition: v[require('./810').AdornmentType.Icon],
                    forceFocus: T,
                  })
                )
              : F === require('./810').AdornmentType.Affix
              ? React.default.createElement(
                  module809.AffixAdornment,
                  module29.default({}, E, {
                    topPosition: v[require('./810').AdornmentType.Affix][S],
                    affix: l,
                    textStyle: y,
                    onLayout: module810[S],
                    visible: A,
                    maxFontSizeMultiplier: x,
                  })
                )
              : null;
          })
        )
      : null;
  };

exports.default = module810;
