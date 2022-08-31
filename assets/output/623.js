exports.default = function (t) {
  var n,
    u,
    module624 = null != (n = t[require('./624').CHILD_STATE]) ? n : t.state,
    o = t.params;
  return module624
    ? module624.routes[null != (u = module624.index) ? u : 'string' == typeof module624.type && 'stack' !== module624.type ? 0 : module624.routes.length - 1].name
    : 'string' == typeof (null == o ? undefined : o.screen)
    ? o.screen
    : undefined;
};
