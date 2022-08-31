var module43 = require('@babel/runtime/helpers/interopRequireDefault')(require('./43'));

module.exports = function (s, c) {
  if ('focus' === c) module43.default.sendAccessibilityEvent(s, module43.default.getConstants().AccessibilityEventTypes.typeViewFocused);
  if ('click' === c) module43.default.sendAccessibilityEvent(s, module43.default.getConstants().AccessibilityEventTypes.typeViewClicked);
};
