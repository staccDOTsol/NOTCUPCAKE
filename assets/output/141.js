exports.stringifyValidationResult = function (n, u) {
  var s = u.differences;
  return ["StaticViewConfigValidator: Invalid static view config for '" + n + "'.", '']
    .concat(
      module35.default(
        s.map(function (t) {
          var n = t.type,
            u = t.path;

          switch (n) {
            case 'missing':
              return "- '" + u.join('.') + "' is missing.";

            case 'unequal':
              return "- '" + u.join('.') + "' is the wrong value.";

            case 'unexpected':
              return "- '" + u.join('.') + "' is present but not expected to be.";
          }
        })
      ),
      ['']
    )
    .join('\n');
};

exports.validate = u;

exports.validateStaticViewConfigs = function (t) {
  var s = module142.default(t.default || t),
    l = t.__INTERNAL_VIEW_CONFIG,
    module164 = l && require('./164').createViewConfig(l),
    o = t.default || t,
    p = s && module164 && u(o, s, module164);

  return {
    componentName: o,
    nativeViewConfig: s,
    staticViewConfig: module164,
    validationResult: p,
  };
};

var module35 = require('@babel/runtime/helpers/interopRequireDefault')(require('./35')),
  module142 = require('@babel/runtime/helpers/interopRequireDefault')(require('./142'));

function u(t, n, u) {
  var l = [];
  s(
    l,
    [],
    {
      bubblingEventTypes: n.bubblingEventTypes,
      directEventTypes: n.directEventTypes,
      uiViewClassName: n.uiViewClassName,
      validAttributes: n.validAttributes,
    },
    {
      bubblingEventTypes: u.bubblingEventTypes,
      directEventTypes: u.directEventTypes,
      uiViewClassName: u.uiViewClassName,
      validAttributes: u.validAttributes,
    }
  );
  return 0 === l.length
    ? {
        type: 'valid',
      }
    : {
        type: 'invalid',
        differences: l,
      };
}

function s(n, u, c, o) {
  for (var p in c) {
    var v = c[p];

    if (o.hasOwnProperty(p)) {
      var f = o[p],
        y = l(v);

      if (null != y) {
        var b = l(f);

        if (null != b) {
          u.push(p);
          s(n, u, y, b);
          u.pop();
          continue;
        }
      }

      if (v !== f)
        n.push({
          path: [].concat(module35.default(u), [p]),
          type: 'unequal',
          nativeValue: v,
          staticValue: f,
        });
    } else
      n.push({
        path: [].concat(module35.default(u), [p]),
        type: 'missing',
        nativeValue: v,
      });
  }

  for (var V in o)
    c.hasOwnProperty(V) ||
      n.push({
        path: [].concat(module35.default(u), [V]),
        type: 'unexpected',
        staticValue: o[V],
      });
}

function l(t) {
  return 'object' != typeof t || Array.isArray(t) ? null : t;
}
