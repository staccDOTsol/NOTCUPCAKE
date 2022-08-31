Object.defineProperty(exports, 'TRANSLATIONS', {
  enumerable: true,
  get: function () {
    return module848.default;
  },
});

var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  ReactNative = require('react-native'),
  module848 = require('@babel/runtime/helpers/interopRequireDefault')(require('./848')),
  module835 = require('@babel/runtime/helpers/interopRequireDefault')(require('./835'));

exports.SCHEMA = {
  label: 'label',
  value: 'value',
  icon: 'icon',
  parent: 'parent',
  selectable: 'selectable',
  disabled: 'disabled',
  testID: 'testID',
  containerStyle: 'containerStyle',
  labelStyle: 'labelStyle',
};
exports.MODE = {
  DEFAULT: 'SIMPLE',
  SIMPLE: 'SIMPLE',
  BADGE: 'BADGE',
};
exports.LIST_MODE = {
  DEFAULT: 'FLATLIST',
  FLATLIST: 'FLATLIST',
  SCROLLVIEW: 'SCROLLVIEW',
  MODAL: 'MODAL',
};
var T = {
  DEFAULT: 'AUTO',
  TOP: 'TOP',
  BOTTOM: 'BOTTOM',
  AUTO: 'AUTO',
};
exports.DROPDOWN_DIRECTION = T;
var i = {
  DEFAULT: 'EN',
  FALLBACK: 'EN',
  ENGLISH: 'EN',
  ARABIC: 'AR',
  FARSI: 'FA',
  TURKISH: 'TR',
  RUSSIAN: 'RU',
  SPANISH: 'ES',
  INDONESIAN: 'ID',
  ITALIAN: 'IT',
};
exports.LANGUAGE = i;

exports.GET_DROPDOWN_DIRECTION = function (e) {
  switch (e) {
    case T.AUTO:
      return 'top';

    case T.TOP:
      return 'bottom';

    case T.BOTTOM:
    default:
      return 'top';
  }
};

var L = {
  marginStart: 'marginRight',
  marginEnd: 'marginLeft',
  paddingStart: 'paddingRight',
  paddingEnd: 'paddingLeft',
  marginLeft: 'marginRight',
  marginRight: 'marginLeft',
  paddingLeft: 'paddingRight',
  paddingRight: 'paddingLeft',
};

exports.RTL_DIRECTION = function (n, O) {
  var T = module29.default({}, O);
  if (n && !ReactNative.I18nManager.isRTL)
    T.hasOwnProperty('flexDirection') ? (T.flexDirection = 'row' === T.flexDirection ? 'row-reverse' : 'row') : (T.flexDirection = 'row-reverse');
  return T;
};

exports.RTL_STYLE = function (n, O) {
  var T = module29.default({}, O);
  if (n && !ReactNative.I18nManager.isRTL)
    Object.keys(O).map(function (e) {
      if (L.hasOwnProperty(e)) {
        T[L[e]] = T[e];
        delete T[e];
      } else T[e] = T[e];
    });
  return T;
};

exports.GET_TRANSLATION = function (t) {
  var O = arguments.length > 1 && undefined !== arguments[1] ? arguments[1] : i.DEFAULT,
    T = arguments.length > 2 && undefined !== arguments[2] ? arguments[2] : {};

  try {
    var L = module29.default({}, module848.default[O], T)[t];
    if (undefined === L) throw Error();
    return L;
  } catch (O) {
    return module29.default({}, module848.default[i.FALLBACK], T)[t];
  }
};

var A = [module835.default.ALTO];
exports.BADGE_COLORS = A;
var E = [module835.default.GREY];
exports.BADGE_DOT_COLORS = E;

exports.ASCII_CODE = function (e) {
  var t = 0;
  if (0 === e.length) return t;

  for (var n = 0; n < e.length; n++) t += e.charCodeAt(n);

  return t;
};
