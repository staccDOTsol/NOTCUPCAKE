function t(t) {
  this.defaults = t;
  this.interceptors = {
    request: new (require('./557'))(),
    response: new (require('./557'))(),
  };
}

t.prototype.request = function (t, o) {
  if ('string' == typeof t) (o = o || {}).url = t;
  else o = t || {};
  if ((o = require('./560')(this.defaults, o)).method) o.method = o.method.toLowerCase();
  else if (this.defaults.method) o.method = this.defaults.method.toLowerCase();
  else o.method = 'get';
  var n = o.transitional;
  if (undefined !== n)
    require('./561').assertOptions(
      n,
      {
        silentJSONParsing: require('./561').validators.transitional(require('./561').validators.boolean),
        forcedJSONParsing: require('./561').validators.transitional(require('./561').validators.boolean),
        clarifyTimeoutError: require('./561').validators.transitional(require('./561').validators.boolean),
      },
      false
    );
  var s = [],
    h = true;
  this.interceptors.request.forEach(function (t) {
    if (!('function' == typeof t.runWhen && false === t.runWhen(o))) {
      h = h && t.synchronous;
      s.unshift(t.fulfilled, t.rejected);
    }
  });
  var u,
    f = [];

  if (
    (this.interceptors.response.forEach(function (t) {
      f.push(t.fulfilled, t.rejected);
    }),
    !h)
  ) {
    var module564 = [require('./564'), undefined];

    for (Array.prototype.unshift.apply(module564, s), module564 = module564.concat(f), u = Promise.resolve(o); module564.length; ) u = u.then(module564.shift(), module564.shift());

    return u;
  }

  for (var c = o; s.length; ) {
    var p = s.shift(),
      v = s.shift();

    try {
      c = p(c);
    } catch (t) {
      v(t);
      break;
    }
  }

  try {
    u = require('./564')(c);
  } catch (t) {
    return Promise.reject(t);
  }

  for (; f.length; ) u = u.then(f.shift(), f.shift());

  return u;
};

t.prototype.getUri = function (t) {
  t = require('./560')(this.defaults, t);

  var module569 = require('./569')(t.baseURL, t.url);

  return require('./572')(module569, t.params, t.paramsSerializer);
};

require('./558').forEach(['delete', 'get', 'head', 'options'], function (o) {
  t.prototype[o] = function (t, n) {
    return this.request(
      require('./560')(n || {}, {
        method: o,
        url: t,
        data: (n || {}).data,
      })
    );
  };
});

require('./558').forEach(['post', 'put', 'patch'], function (o) {
  function n(t) {
    return function (n, s, h) {
      return this.request(
        require('./560')(h || {}, {
          method: o,
          headers: t
            ? {
                'Content-Type': 'multipart/form-data',
              }
            : {},
          url: n,
          data: s,
        })
      );
    };
  }

  t.prototype[o] = n();
  t.prototype[o + 'Form'] = n(true);
});

module.exports = t;
