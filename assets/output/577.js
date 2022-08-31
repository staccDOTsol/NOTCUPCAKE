module.exports = require('./558').isStandardBrowserEnv()
  ? {
      write: function (n, t, o, u, s, c) {
        var p = [];
        p.push(n + '=' + encodeURIComponent(t));
        if (require('./558').isNumber(o)) p.push('expires=' + new Date(o).toGMTString());
        if (require('./558').isString(u)) p.push('path=' + u);
        if (require('./558').isString(s)) p.push('domain=' + s);
        if (true === c) p.push('secure');
        document.cookie = p.join('; ');
      },
      read: function (n) {
        var t = document.cookie.match(new RegExp('(^|;\\s*)(' + n + ')=([^;]*)'));
        return t ? decodeURIComponent(t[3]) : null;
      },
      remove: function (n) {
        this.write(n, '', Date.now() - 864e5);
      },
    }
  : {
      write: function () {},
      read: function () {
        return null;
      },
      remove: function () {},
    };
