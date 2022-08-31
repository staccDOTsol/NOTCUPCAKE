module.exports = require('./558').isStandardBrowserEnv()
  ? (function () {
      var t,
        o = /(msie|trident)/i.test(navigator.userAgent),
        n = document.createElement('a');

      function h(t) {
        var h = t;

        if (o) {
          n.setAttribute('href', h);
          h = n.href;
        }

        n.setAttribute('href', h);
        return {
          href: n.href,
          protocol: n.protocol ? n.protocol.replace(/:$/, '') : '',
          host: n.host,
          search: n.search ? n.search.replace(/^\?/, '') : '',
          hash: n.hash ? n.hash.replace(/^#/, '') : '',
          hostname: n.hostname,
          port: n.port,
          pathname: '/' === n.pathname.charAt(0) ? n.pathname : '/' + n.pathname,
        };
      }

      t = h(window.location.href);
      return function (o) {
        var module558 = require('./558').isString(o) ? h(o) : o;
        return module558.protocol === t.protocol && module558.host === t.host;
      };
    })()
  : function () {
      return true;
    };
