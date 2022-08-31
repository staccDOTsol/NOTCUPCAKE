var module20 = require('@babel/runtime/helpers/interopRequireDefault')(require('./20')),
  n = {
    __constants: null,
    OS: 'android',

    get Version() {
      return this.constants.Version;
    },

    get constants() {
      if (null == this.__constants) this.__constants = module20.default.getConstants();
      return this.__constants;
    },

    get isTesting() {
      return false;
    },

    get isTV() {
      return 'tv' === this.constants.uiMode;
    },

    select: function (t) {
      return 'android' in t ? t.android : 'native' in t ? t.native : t.default;
    },
  };

module.exports = n;
