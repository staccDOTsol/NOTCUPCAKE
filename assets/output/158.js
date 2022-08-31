function t(t) {
  var module160 = require('./159').pickScale(t.scales, require('./160').get()),
    n = 1 === module160 ? '' : '@' + module160 + 'x';

  return require('./163').getBasePath(t) + '/' + t.name + n + '.' + t.type;
}

var module160 = (function () {
  function module7(t, n, u) {
    require('./7')(this, module7);

    this.serverUrl = t;
    this.jsbundleUrl = n;
    this.asset = u;
  }

  require('./8')(module7, [
    {
      key: 'isLoadedFromServer',
      value: function () {
        return !!this.serverUrl;
      },
    },
    {
      key: 'isLoadedFromFileSystem',
      value: function () {
        return !(!this.jsbundleUrl || !this.jsbundleUrl.startsWith('file://'));
      },
    },
    {
      key: 'defaultAsset',
      value: function () {
        return this.isLoadedFromServer() ? this.assetServerURL() : this.isLoadedFromFileSystem() ? this.drawableFolderInBundle() : this.resourceIdentifierWithoutScale();
      },
    },
    {
      key: 'assetServerURL',
      value: function () {
        require('./18')(!!this.serverUrl, 'need server to load from');

        return this.fromSource(this.serverUrl + t(this.asset) + '?platform=android&hash=' + this.asset.hash);
      },
    },
    {
      key: 'scaledAssetPath',
      value: function () {
        return this.fromSource(t(this.asset));
      },
    },
    {
      key: 'scaledAssetURLNearBundle',
      value: function () {
        var s = this.jsbundleUrl || 'file://';
        return this.fromSource(s + t(this.asset).replace(/\.\.\//g, '_'));
      },
    },
    {
      key: 'resourceIdentifierWithoutScale',
      value: function () {
        require('./18')(true, 'resource identifiers work on Android');

        return this.fromSource(require('./163').getAndroidResourceIdentifier(this.asset));
      },
    },
    {
      key: 'drawableFolderInBundle',
      value: function () {
        var t,
          s,
          n = this.jsbundleUrl || 'file://';
        return this.fromSource(
          n +
            ((t = this.asset),
            (s = require('./159').pickScale(t.scales, require('./160').get())),
            require('./163').getAndroidResourceFolderName(t, s) + '/' + require('./163').getAndroidResourceIdentifier(t) + '.' + t.type)
        );
      },
    },
    {
      key: 'fromSource',
      value: function (t) {
        return {
          __packager_asset: true,
          width: this.asset.width,
          height: this.asset.height,
          uri: t,
          scale: require('./159').pickScale(this.asset.scales, require('./160').get()),
        };
      },
    },
  ]);

  return module7;
})();

module160.pickScale = require('./159').pickScale;
module.exports = module160;
