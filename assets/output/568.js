module.exports = function (n) {
  return new Promise(function (t, o) {
    var s,
      u = n.data,
      l = n.headers,
      c = n.responseType;

    function p() {
      if (n.cancelToken) n.cancelToken.unsubscribe(s);
      if (n.signal) n.signal.removeEventListener('abort', s);
    }

    if (require('./558').isFormData(u) && require('./558').isStandardBrowserEnv()) delete l['Content-Type'];
    var f = new XMLHttpRequest();

    if (n.auth) {
      var E = n.auth.username || '',
        T = n.auth.password ? unescape(encodeURIComponent(n.auth.password)) : '';
      l.Authorization = 'Basic ' + btoa(E + ':' + T);
    }

    var module569 = require('./569')(n.baseURL, n.url);

    function R() {
      if (f) {
        var module573 = 'getAllResponseHeaders' in f ? require('./573')(f.getAllResponseHeaders()) : null,
          u = {
            data: c && 'text' !== c && 'json' !== c ? f.response : f.responseText,
            status: f.status,
            statusText: f.statusText,
            headers: module573,
            config: n,
            request: f,
          };

        require('./574')(
          function (n) {
            t(n);
            p();
          },
          function (n) {
            o(n);
            p();
          },
          u
        );

        f = null;
      }
    }

    if (
      (f.open(n.method.toUpperCase(), require('./572')(module569, n.params, n.paramsSerializer), true),
      (f.timeout = n.timeout),
      'onloadend' in f
        ? (f.onloadend = R)
        : (f.onreadystatechange = function () {
            if (f && 4 === f.readyState && (0 !== f.status || (f.responseURL && 0 === f.responseURL.indexOf('file:')))) setTimeout(R);
          }),
      (f.onabort = function () {
        if (f) {
          o(new (require('./563'))('Request aborted', require('./563').ECONNABORTED, n, f));
          f = null;
        }
      }),
      (f.onerror = function () {
        o(new (require('./563'))('Network Error', require('./563').ERR_NETWORK, n, f, f));
        f = null;
      }),
      (f.ontimeout = function () {
        var t = n.timeout ? 'timeout of ' + n.timeout + 'ms exceeded' : 'timeout exceeded',
          module575 = n.transitional || require('./575');

        if (n.timeoutErrorMessage) t = n.timeoutErrorMessage;
        o(new (require('./563'))(t, module575.clarifyTimeoutError ? require('./563').ETIMEDOUT : require('./563').ECONNABORTED, n, f));
        f = null;
      }),
      require('./558').isStandardBrowserEnv())
    ) {
      var module577 = (n.withCredentials || require('./576')(module569)) && n.xsrfCookieName ? require('./577').read(n.xsrfCookieName) : undefined;
      if (module577) l[n.xsrfHeaderName] = module577;
    }

    if ('setRequestHeader' in f)
      require('./558').forEach(l, function (n, t) {
        if (undefined === u && 'content-type' === t.toLowerCase()) delete l[t];
        else f.setRequestHeader(t, n);
      });
    if (!require('./558').isUndefined(n.withCredentials)) f.withCredentials = !!n.withCredentials;
    if (c && 'json' !== c) f.responseType = n.responseType;
    if ('function' == typeof n.onDownloadProgress) f.addEventListener('progress', n.onDownloadProgress);
    if ('function' == typeof n.onUploadProgress && f.upload) f.upload.addEventListener('progress', n.onUploadProgress);

    if (n.cancelToken || n.signal) {
      s = function (n) {
        if (f) {
          o(!n || (n && n.type) ? new (require('./565'))() : n);
          f.abort();
          f = null;
        }
      };

      if (n.cancelToken) n.cancelToken.subscribe(s);
      if (n.signal) n.signal.aborted ? s() : n.signal.addEventListener('abort', s);
    }

    if (!u) u = null;

    var module578 = require('./578')(module569);

    if (module578 && -1 === ['http', 'https', 'file'].indexOf(module578)) o(new (require('./563'))('Unsupported protocol ' + module578 + ':', require('./563').ERR_BAD_REQUEST, n));
    else f.send(u);
  });
};
