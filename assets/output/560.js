module.exports = function (n, t) {
  t = t || {};
  var o = {};

  function s(n, t) {
    return require('./558').isPlainObject(n) && require('./558').isPlainObject(t)
      ? require('./558').merge(n, t)
      : require('./558').isPlainObject(t)
      ? require('./558').merge({}, t)
      : require('./558').isArray(t)
      ? t.slice()
      : t;
  }

  function c(o) {
    return require('./558').isUndefined(t[o]) ? (require('./558').isUndefined(n[o]) ? undefined : s(undefined, n[o])) : s(n[o], t[o]);
  }

  function f(n) {
    if (!require('./558').isUndefined(t[n])) return s(undefined, t[n]);
  }

  function u(o) {
    return require('./558').isUndefined(t[o]) ? (require('./558').isUndefined(n[o]) ? undefined : s(undefined, n[o])) : s(undefined, t[o]);
  }

  function p(o) {
    return o in t ? s(n[o], t[o]) : o in n ? s(undefined, n[o]) : undefined;
  }

  var v = {
    url: f,
    method: f,
    data: f,
    baseURL: u,
    transformRequest: u,
    transformResponse: u,
    paramsSerializer: u,
    timeout: u,
    timeoutMessage: u,
    withCredentials: u,
    adapter: u,
    responseType: u,
    xsrfCookieName: u,
    xsrfHeaderName: u,
    onUploadProgress: u,
    onDownloadProgress: u,
    decompress: u,
    maxContentLength: u,
    maxBodyLength: u,
    beforeRedirect: u,
    transport: u,
    httpAgent: u,
    httpsAgent: u,
    cancelToken: u,
    socketPath: u,
    responseEncoding: u,
    validateStatus: p,
  };

  require('./558').forEach(Object.keys(n).concat(Object.keys(t)), function (n) {
    var t = v[n] || c,
      s = t(n);
    if (!(require('./558').isUndefined(s) && t !== p)) o[n] = s;
  });

  return o;
};
