var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module833 = require('@babel/runtime/helpers/interopRequireDefault')(require('./833')),
  module845 = require('@babel/runtime/helpers/interopRequireDefault')(require('./845'));

module845.default.MODE = require('./847').MODE;

module845.default.setMode = function (t) {
  module845.default.MODE.DEFAULT = t;
};

module845.default.LIST_MODE = require('./847').LIST_MODE;

module845.default.setListMode = function (t) {
  module845.default.LIST_MODE.DEFAULT = t;
};

module845.default.DROPDOWN_DIRECTION = require('./847').DROPDOWN_DIRECTION;

module845.default.setDropDownDirection = function (t) {
  module845.default.DROPDOWN_DIRECTION.DEFAULT = t;
};

module845.default.LANGUAGE = require('./847').LANGUAGE;

module845.default.setLanguage = function (t) {
  require('./847').LANGUAGE.DEFAULT = t;
};

module845.default.addTranslation = function (t, u) {
  require('./847').TRANSLATIONS[t] = u;
};

module845.default.modifyTranslation = function (u, f) {
  if (require('./847').TRANSLATIONS.hasOwnProperty(u)) require('./847').TRANSLATIONS[u] = module29.default({}, require('./847').TRANSLATIONS[u], f);
};

module845.default.THEMES = module833.default;

module845.default.setTheme = function (t) {
  module845.default.THEMES.DEFAULT = t;
};

module845.default.addTheme = function (t, u) {
  module845.default.THEMES[t] = u;
};

var l = module845.default;
exports.default = l;
