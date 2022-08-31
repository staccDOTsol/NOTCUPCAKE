function n() {
  if ('undefined' == typeof Reflect || !Reflect.construct) return false;
  if (Reflect.construct.sham) return false;
  if ('function' == typeof Proxy) return true;

  try {
    Boolean.prototype.valueOf.call(Reflect.construct(Boolean, [], function () {}));
    return true;
  } catch (n) {
    return false;
  }
}

var e,
  module59 = (function (e, ...args) {
    require('./10')(s, e);

    var module59 = s,
      o = n(),
      module12 = function () {
        var n,
          module15 = require('./15')(module59);

        if (o) {
          var module15 = require('./15')(this).constructor;

          n = Reflect.construct(module15, arguments, module15);
        } else n = module15.apply(this, arguments);

        return require('./12')(this, n);
      };

    function s() {
      var n;

      require('./7')(this, s);

      (n = module12.call(this, ...args)).name = '';
      return n;
    }

    return require('./8')(s);
  })(require('./59')(Error)),
  o = false;

function c(n) {
  if (e && !o) {
    o = true;

    try {
      return e(n);
    } catch (n) {
    } finally {
      o = false;
    }
  }

  return n;
}

var s = 0;

function l(n, e, t) {
  var module63 = require('./63')(null == n ? undefined : n.stack),
    l = ++s,
    u = n.message || '',
    f = u;

  if (null != n.componentStack) f += '\n\nThis error is located at:' + n.componentStack;
  var p = null == n.name || '' === n.name ? '' : n.name + ': ';
  if (!f.startsWith(p)) f = p + f;
  var v = c({
    message: (f = null == n.jsEngine ? f : f + ', js engine: ' + n.jsEngine),
    originalMessage: f === u ? null : u,
    name: null == n.name || '' === n.name ? null : n.name,
    componentStack: 'string' == typeof n.componentStack ? n.componentStack : null,
    stack: module63,
    id: l,
    isFatal: e,
    extraData: {
      jsEngine: n.jsEngine,
      rawStack: n.stack,
    },
  });

  if ((t && console.error(v.message), e || 'warn' !== n.type)) {
    var module66 = require('./66').default;

    if (module66) module66.reportException(v);
  }
}

var u = false;

function f() {
  if (((n = console)._errorOriginal.apply(n, args), console.reportErrorsAsExceptions && !u)) {
    var s,
      f = args[0];
    if (null != f && f.stack) s = f;
    else {
      var module34 = require('./34').default;

      if ('string' == typeof f && f.startsWith('Warning: ')) return;
      var v = args
        .map(function (n) {
          return 'string' == typeof n ? n : module34(n);
        })
        .join(' ');
      (s = new module59(v)).name = 'console.error';
    }
    l(s, false, false);
  }
}

module.exports = {
  handleException: function (n, e) {
    var o;
    o = n instanceof Error ? n : new module59(n);

    try {
      u = true;
      l(o, e, true);
    } finally {
      u = false;
    }
  },
  installConsoleErrorReporter: function () {
    if (!console._errorOriginal) {
      console._errorOriginal = console.error.bind(console);
      console.error = f;
      if (undefined === console.reportErrorsAsExceptions) console.reportErrorsAsExceptions = true;
    }
  },
  SyntheticError: module59,
  unstable_setExceptionDecorator: function (n) {
    e = n;
  },
};
