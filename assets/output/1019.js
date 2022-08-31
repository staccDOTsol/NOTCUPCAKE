exports.implementation = (function () {
  function t(s, n) {
    require('./7')(this, t);

    var u = n[0],
      l = n[1],
      h = null;
    if (undefined !== l && null === (h = require('./1020').basicURLParse(l))) throw new TypeError('Invalid base URL: ' + l);

    var module1020 = require('./1020').basicURLParse(u, {
      baseURL: h,
    });

    if (null === module1020) throw new TypeError('Invalid URL: ' + u);

    var _ = null !== module1020.query ? module1020.query : '';

    this._url = module1020;
    this._query = require('./1025').createImpl(s, [_], {
      doNotStripQMark: true,
    });
    this._query._url = this;
  }

  require('./8')(t, [
    {
      key: 'href',
      get: function () {
        return require('./1020').serializeURL(this._url);
      },
      set: function (t) {
        var module1020 = require('./1020').basicURLParse(t);

        if (null === module1020) throw new TypeError('Invalid URL: ' + t);
        this._url = module1020;

        this._query._list.splice(0);

        var n = module1020.query;
        if (null !== n) this._query._list = require('./1024').parseUrlencoded(n);
      },
    },
    {
      key: 'origin',
      get: function () {
        return require('./1020').serializeURLOrigin(this._url);
      },
    },
    {
      key: 'protocol',
      get: function () {
        return this._url.scheme + ':';
      },
      set: function (t) {
        require('./1020').basicURLParse(t + ':', {
          url: this._url,
          stateOverride: 'scheme start',
        });
      },
    },
    {
      key: 'username',
      get: function () {
        return this._url.username;
      },
      set: function (t) {
        if (!require('./1020').cannotHaveAUsernamePasswordPort(this._url)) require('./1020').setTheUsername(this._url, t);
      },
    },
    {
      key: 'password',
      get: function () {
        return this._url.password;
      },
      set: function (t) {
        if (!require('./1020').cannotHaveAUsernamePasswordPort(this._url)) require('./1020').setThePassword(this._url, t);
      },
    },
    {
      key: 'host',
      get: function () {
        var t = this._url;
        return null === t.host
          ? ''
          : null === t.port
          ? require('./1020').serializeHost(t.host)
          : require('./1020').serializeHost(t.host) + ':' + require('./1020').serializeInteger(t.port);
      },
      set: function (t) {
        if (!this._url.cannotBeABaseURL)
          require('./1020').basicURLParse(t, {
            url: this._url,
            stateOverride: 'host',
          });
      },
    },
    {
      key: 'hostname',
      get: function () {
        return null === this._url.host ? '' : require('./1020').serializeHost(this._url.host);
      },
      set: function (t) {
        if (!this._url.cannotBeABaseURL)
          require('./1020').basicURLParse(t, {
            url: this._url,
            stateOverride: 'hostname',
          });
      },
    },
    {
      key: 'port',
      get: function () {
        return null === this._url.port ? '' : require('./1020').serializeInteger(this._url.port);
      },
      set: function (t) {
        if (!require('./1020').cannotHaveAUsernamePasswordPort(this._url))
          '' === t
            ? (this._url.port = null)
            : require('./1020').basicURLParse(t, {
                url: this._url,
                stateOverride: 'port',
              });
      },
    },
    {
      key: 'pathname',
      get: function () {
        return this._url.cannotBeABaseURL ? this._url.path[0] : 0 === this._url.path.length ? '' : '/' + this._url.path.join('/');
      },
      set: function (t) {
        if (!this._url.cannotBeABaseURL) {
          this._url.path = [];

          require('./1020').basicURLParse(t, {
            url: this._url,
            stateOverride: 'path start',
          });
        }
      },
    },
    {
      key: 'search',
      get: function () {
        return null === this._url.query || '' === this._url.query ? '' : '?' + this._url.query;
      },
      set: function (t) {
        var s = this._url;

        if ('' === t) {
          s.query = null;
          return void (this._query._list = []);
        }

        var n = '?' === t[0] ? t.substring(1) : t;
        s.query = '';

        require('./1020').basicURLParse(n, {
          url: s,
          stateOverride: 'query',
        });

        this._query._list = require('./1024').parseUrlencoded(n);
      },
    },
    {
      key: 'searchParams',
      get: function () {
        return this._query;
      },
    },
    {
      key: 'hash',
      get: function () {
        return null === this._url.fragment || '' === this._url.fragment ? '' : '#' + this._url.fragment;
      },
      set: function (t) {
        if ('' !== t) {
          var s = '#' === t[0] ? t.substring(1) : t;
          this._url.fragment = '';

          require('./1020').basicURLParse(s, {
            url: this._url,
            stateOverride: 'fragment',
          });
        } else this._url.fragment = null;
      },
    },
    {
      key: 'toJSON',
      value: function () {
        return this.href;
      },
    },
  ]);

  return t;
})();
