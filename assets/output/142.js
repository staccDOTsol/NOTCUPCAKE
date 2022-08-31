function n(n) {
  var module43 = require('./43').getConstants();

  if (module43.ViewManagerNames || module43.LazyViewManagersEnabled) n = t(n, require('./43').getDefaultEventTypes());
  else {
    n.bubblingEventTypes = t(n.bubblingEventTypes, module43.genericBubblingEventTypes);
    n.directEventTypes = t(n.directEventTypes, module43.genericDirectEventTypes);
  }
}

function t(n, s) {
  if (!s) return n;
  if (!n) return s;

  for (var u in s)
    if (s.hasOwnProperty(u)) {
      var o = s[u];

      if (n.hasOwnProperty(u)) {
        var c = n[u];
        if ('object' == typeof o && 'object' == typeof c) o = t(c, o);
      }

      n[u] = o;
    }

  return n;
}

function s(n) {
  switch (n) {
    case 'CATransform3D':
      return require('./151');

    case 'CGPoint':
      return require('./152');

    case 'CGSize':
      return require('./150');

    case 'UIEdgeInsets':
      return require('./153');

    case 'Point':
      return require('./152');

    case 'EdgeInsets':
      return require('./153');
  }

  return null;
}

function u(n) {
  switch (n) {
    case 'CGColor':
    case 'UIColor':
      return require('./144');

    case 'CGColorArray':
    case 'UIColorArray':
      return require('./154');

    case 'CGImage':
    case 'UIImage':
    case 'RCTImageSource':
      return require('./155');

    case 'Color':
      return require('./144');

    case 'ColorArray':
      return require('./154');

    case 'ImageSource':
      return require('./155');
  }

  return null;
}

module.exports = function (t) {
  var o,
    c,
    module43 = require('./43').getViewManagerConfig(t);

  require('./18')(null != module43 && null != module43.NativeProps, 'requireNativeComponent: "%s" was not found in the UIManager.', t);

  var v = module43.baseModuleName,
    f = module43.bubblingEventTypes,
    p = module43.directEventTypes,
    b = module43.NativeProps;

  for (f = null != (o = f) ? o : {}, p = null != (c = p) ? c : {}; v; ) {
    var module43 = require('./43').getViewManagerConfig(v);

    if (module43) {
      f = require('./29')({}, module43.bubblingEventTypes, f);
      p = require('./29')({}, module43.directEventTypes, p);
      b = require('./29')({}, module43.NativeProps, b);
      v = module43.baseModuleName;
    } else v = null;
  }

  var C = {};

  for (var E in b) {
    var T = b[E],
      I = s(T),
      w = u(T);
    C[E] =
      null == I
        ? null == w || {
            process: w,
          }
        : null == w
        ? {
            diff: I,
          }
        : {
            diff: I,
            process: w,
          };
  }

  C.style = require('./143');

  require('./29')(module43, {
    uiViewClassName: t,
    validAttributes: C,
    bubblingEventTypes: f,
    directEventTypes: p,
  });

  n(module43);
  return module43;
};
