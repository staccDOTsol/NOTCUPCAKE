exports.useAsyncStorage = function (n) {
  return {
    getItem: function (...args) {
      return module548.default.getItem.apply(module548.default, [n].concat(args));
    },
    setItem: function (...args) {
      return module548.default.setItem.apply(module548.default, [n].concat(args));
    },
    mergeItem: function (...args) {
      return null != (u = null == module548.default.mergeItem ? undefined : module548.default.mergeItem.apply(module548.default, [n].concat(args)))
        ? u
        : Promise.reject('Not implemented');
    },
    removeItem: function (...args) {
      return module548.default.removeItem.apply(module548.default, [n].concat(args));
    },
  };
};

var module548 = require('@babel/runtime/helpers/interopRequireDefault')(require('./548'));
