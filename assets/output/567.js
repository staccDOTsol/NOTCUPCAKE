var t = {
  'Content-Type': 'application/x-www-form-urlencoded',
};

function e(t, e) {
  if (!require('./558').isUndefined(t) && require('./558').isUndefined(t['Content-Type'])) t['Content-Type'] = e;
}

function n(t, e, n) {
  if (require('./558').isString(t))
    try {
      (e || JSON.parse)(t);
      return require('./558').trim(t);
    } catch (t) {
      if ('SyntaxError' !== t.name) throw t;
    }
  return (n || JSON.stringify)(t);
}

var o,
  module581 = {
    transitional: require('./575'),
    adapter:
      ('undefined' != typeof XMLHttpRequest
        ? (o = require('./568'))
        : 'undefined' != typeof process && '[object process]' === Object.prototype.toString.call(process) && (o = require('./568')),
      o),
    transformRequest: [
      function (t, o) {
        if (
          (require('./579')(o, 'Accept'),
          require('./579')(o, 'Content-Type'),
          require('./558').isFormData(t) ||
            require('./558').isArrayBuffer(t) ||
            require('./558').isBuffer(t) ||
            require('./558').isStream(t) ||
            require('./558').isFile(t) ||
            require('./558').isBlob(t))
        )
          return t;
        if (require('./558').isArrayBufferView(t)) return t.buffer;

        if (require('./558').isURLSearchParams(t)) {
          e(o, 'application/x-www-form-urlencoded;charset=utf-8');
          return t.toString();
        }

        var s,
          module580 = require('./558').isObject(t),
          c = o && o['Content-Type'];

        if ((s = require('./558').isFileList(t)) || (module580 && 'multipart/form-data' === c)) {
          var p = this.env && this.env.FormData;
          return require('./580')(
            s
              ? {
                  'files[]': t,
                }
              : t,
            p && new p()
          );
        }

        if (module580 || 'application/json' === c) {
          e(o, 'application/json');
          return n(t);
        } else return t;
      },
    ],
    transformResponse: [
      function (t) {
        var e = this.transitional || module581.transitional,
          n = e && e.silentJSONParsing,
          o = e && e.forcedJSONParsing,
          f = !n && 'json' === this.responseType;
        if (f || (o && require('./558').isString(t) && t.length))
          try {
            return JSON.parse(t);
          } catch (t) {
            if (f) {
              if ('SyntaxError' === t.name) throw require('./563').from(t, require('./563').ERR_BAD_RESPONSE, this, null, this.response);
              throw t;
            }
          }
        return t;
      },
    ],
    timeout: 0,
    xsrfCookieName: 'XSRF-TOKEN',
    xsrfHeaderName: 'X-XSRF-TOKEN',
    maxContentLength: -1,
    maxBodyLength: -1,
    env: {
      FormData: require('./581'),
    },
    validateStatus: function (t) {
      return t >= 200 && t < 300;
    },
    headers: {
      common: {
        Accept: 'application/json, text/plain, */*',
      },
    },
  };

require('./558').forEach(['delete', 'get', 'head'], function (t) {
  module581.headers[t] = {};
});

require('./558').forEach(['post', 'put', 'patch'], function (e) {
  module581.headers[e] = require('./558').merge(t);
});

module.exports = module581;
