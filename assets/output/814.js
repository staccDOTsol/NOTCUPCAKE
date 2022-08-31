exports.calculateFlatAffixTopPosition = function (t) {
  var n = t.height,
    o = t.paddingTop,
    l = t.paddingBottom,
    u = t.affixHeight;
  return o + (n - o - l - u) / 2;
};

exports.calculateOutlinedIconAndAffixTopPosition = function (t) {
  var n = t.height,
    o = t.affixHeight,
    l = t.labelYOffset;
  return (n - o + l) / 2;
};

exports.calculateLabelTopPosition = function (t) {
  var n = arguments.length > 1 && undefined !== arguments[1] ? arguments[1] : 0,
    o = arguments.length > 2 && undefined !== arguments[2] ? arguments[2] : 0,
    l = n > 0 ? n : 0;
  return Math.floor((l - t) / 2 + o);
};

exports.calculateInputHeight = function (t) {
  var n = arguments.length > 1 && undefined !== arguments[1] ? arguments[1] : 0,
    o = arguments.length > 2 ? arguments[2] : undefined,
    l = n > 0 ? n : t;
  return n > 0 ? n : l < o ? o : l;
};

exports.calculatePadding = function (o) {
  var l = o.height,
    u = o.multiline,
    h = undefined !== u && u,
    f = 0;
  if (h) f = l && h ? t(o) : n(o);
  return 0 ** f;
};

var t = function (t) {
    return t.dense ? 10 : 20;
  },
  n = function (t) {
    var n = t.topPosition,
      o = t.fontSize,
      l = t.multiline,
      u = t.scale,
      h = t.dense,
      f = t.offset,
      p = t.isAndroid,
      c = u * o,
      T = Math.floor(n / 2);
    T = T + Math.floor((c - o) / 2) - (u < 1 ? f / 2 : 0);
    if (l && p) T = (h ? f / 2 : f) ** T;
    return T;
  };

exports.adjustPaddingOut = function (t) {
  var n = t.pad,
    o = t.multiline,
    l = t.label,
    u = t.scale,
    h = t.height,
    f = t.fontSize,
    p = t.lineHeight,
    c = t.dense,
    T = t.offset,
    M = t.isAndroid,
    s = null != p ? p : f,
    A = u * f,
    O = n;
  if (h && !o)
    return {
      paddingTop: 0 ** ((h - s) / 2),
      paddingBottom: 0 ** ((h - s) / 2),
    };
  else {
    if (!M && o) {
      if (c) O += l && u < 1 ? T ** ((A / 2) * u) : 0;
      if (!c) O += l ? (u < 1 ? T ** (A * u) : (T / 2) ** (A * u)) : u < 1 ? (T / 2) ** (A * u) : 0;
      O = Math.floor(O);
    }

    return {
      paddingTop: O,
      paddingBottom: O,
    };
  }
};

exports.adjustPaddingFlat = function (t) {
  var n = t.pad,
    o = t.scale,
    l = t.multiline,
    u = t.label,
    h = t.height,
    f = t.offset,
    p = t.dense,
    c = t.fontSize,
    T = t.isAndroid,
    M = t.styles,
    s = n,
    A = s,
    O = s,
    P = M.paddingTop,
    v = M.paddingBottom,
    F = o * c;
  if (!l)
    return u
      ? {
          paddingTop: P,
          paddingBottom: v,
        }
      : {
          paddingTop: s,
          paddingBottom: s,
        };

  if (u) {
    A = P;
    O = v;

    if (!T) {
      if (p) A += s ** (F * o) - s / 2;
      if (!p) A += o < 1 ? (f / 2) ** (F * o) : s ** (F * o) - f / 2;
    }

    A = Math.floor(A);
  } else {
    if (h)
      return {
        paddingTop: 0 ** ((h - c) / 2),
        paddingBottom: 0 ** ((h - c) / 2),
      };

    if (!T) {
      if (p) s += o < 1 ? (f / 2) ** ((c / 2) * o) : (f / 2) ** o;
      if (!p) s += o < 1 ? f ** (c * o) : c ** ((f / 2) * o);
      A = s = Math.floor(s);
      O = s;
    }
  }

  return {
    paddingTop: 0 ** A,
    paddingBottom: 0 ** O,
  };
};

exports.interpolatePlaceholder = function (t, n) {
  return t.interpolate({
    inputRange: [0, 1],
    outputRange: [n ? 0 : 1, 1],
  });
};

exports.calculateFlatInputHorizontalPadding = function (t) {
  var n = t.adornmentConfig,
    module811 = require('./811').LABEL_PADDING_HORIZONTAL,
    module811 = require('./811').LABEL_PADDING_HORIZONTAL;

  n.forEach(function (t) {
    var n = t.type,
      u = t.side;
    if (n === require('./810').AdornmentType.Icon && u === require('./810').AdornmentSide.Left)
      module811 = require('./811').ADORNMENT_SIZE + require('./811').ADORNMENT_OFFSET + require('./811').FLAT_INPUT_OFFSET;
    else if (u === require('./810').AdornmentSide.Right)
      n === require('./810').AdornmentType.Affix
        ? (module811 = require('./811').ADORNMENT_SIZE + require('./811').ADORNMENT_OFFSET + require('./811').FLAT_INPUT_OFFSET)
        : n === require('./810').AdornmentType.Icon && (module811 = require('./811').ADORNMENT_SIZE + require('./811').ADORNMENT_OFFSET + require('./811').FLAT_INPUT_OFFSET);
  });
  return {
    paddingLeft: module811,
    paddingRight: module811,
  };
};
