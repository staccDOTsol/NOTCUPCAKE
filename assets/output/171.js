var module58 = {
  showErrorDialog: function (module58) {
    var n,
      t = module58.componentStack,
      c = module58.error;
    n = c instanceof Error ? c : 'string' == typeof c ? new (require('./58').SyntheticError)(c) : new (require('./58').SyntheticError)('Unspecified error');

    try {
      n.componentStack = t;
      n.isComponentError = true;
    } catch (o) {}

    require('./58').handleException(n, false);

    return false;
  },
};
exports.default = module58;
