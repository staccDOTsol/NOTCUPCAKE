var module1129 = (function () {
  function module7(t) {
    require('./7')(this, module7);

    this.name = require('./1129').FileName[t];
  }

  require('./8')(module7, [
    {
      key: 'parseFileSettings',
      value: function (s) {
        if ('9100' !== s.slice(-4)) throw 'InvalidFileSettings';
        var t = s.slice(0, -4),
          n = parseInt(t.slice(0, 2), 16);
        this.type = require('./1129').FileType[n];
        t = t.slice(2);
        var o = parseInt(t.slice(0, 2), 16).toString(2);
        this.options = {
          sdmMirroring: '1' === o.slice(1, 2),
          commMode: require('./1129').CommMode[o.slice(6, 7)],
        };
        t = t.slice(2);

        var module1125 = require('./1125').swapEndianType(t.slice(0, 4));

        this.accessRights = {
          read: require('./1129').KeyType[parseInt(module1125.slice(0, 1), 16)],
          write: require('./1129').KeyType[parseInt(module1125.slice(1, 2), 16)],
          readWrite: require('./1129').KeyType[parseInt(module1125.slice(2, 3), 16)],
          change: require('./1129').KeyType[parseInt(module1125.slice(3, 4), 16)],
        };
        var p = (t = t.slice(4)).slice(0, 6);

        if (((this.fileSize = parseInt(p, 16)), (t = t.slice(6)), this.options.sdmMirroring)) {
          var l = parseInt(t.slice(0, 2), 16).toString(2);
          this.options.sdmOptions = {
            uidMirrored: '1' === l.slice(0, 1),
            counterMirrored: '1' === l.slice(1, 2),
            counterLimitEnabled: '1' === l.slice(2, 3),
            encFileDataMirrored: '1' === l.slice(3, 4),
            tamperStatusMirrored: '1' === l.slice(4, 5),
            encodingMode: require('./1129').EncodingMode[parseInt(l.slice(7, 8), 2).toString()],
          };
          var h = (t = t.slice(2)).slice(0, 4);

          if (
            ((this.options.sdmAccessRights = {
              metaRead: require('./1129').KeyType[h.slice(0, 1)],
              fileRead: require('./1129').KeyType[h.slice(1, 2)],
              counterRet: require('./1129').KeyType[h.slice(3, 4)],
            }),
            (t = t.slice(4)),
            this.options.sdmOptions.uidMirrored && this.options.sdmAccessRights.metaRead === require('./1129').KeyType.Any)
          ) {
            var f = t.slice(0, 6);
            this.options.uidOffset = parseInt(f, 16);
            t = t.slice(6);
          }

          if (this.options.sdmOptions.counterMirrored && this.options.sdmAccessRights.metaRead === require('./1129').KeyType.Any) {
            var y = t.slice(0, 6);
            this.options.counterOffset = parseInt(y, 16);
            t = t.slice(6);
          }

          if (this.options.sdmAccessRights.metaRead !== (require('./1129').KeyType.Any || require('./1129').KeyType.None)) {
            var u = t.slice(0, 6);
            this.options.piccDataOffset = parseInt(u, 16);
            t = t.slice(6);
          }

          if (this.options.sdmOptions.tamperStatusMirrored) {
            var v = t.slice(0, 6);
            this.options.tamperStatusOffset = parseInt(v, 16);
            t = t.slice(6);
          }

          if (this.options.sdmAccessRights.metaRead !== require('./1129').KeyType.None) {
            var I = t.slice(0, 6);

            if (((this.options.macInputOffset = parseInt(I, 16)), (t = t.slice(6)), this.options.sdmOptions.encFileDataMirrored)) {
              var M = t.slice(0, 6);
              this.options.encFileDataOffset = parseInt(M, 16);
              var O = (t = t.slice(6)).slice(0, 6);
              this.options.encFileDataLength = parseInt(O, 16);
              t = t.slice(6);
            }

            var T = t.slice(0, 6);
            this.options.macOffset = parseInt(T, 16);
            t = t.slice(6);
          }

          if (this.options.sdmOptions.counterLimitEnabled) {
            var R = t.slice(0, 6);
            this.options.macOffset = parseInt(R, 16);
            t = t.slice(6);
          }
        }
      },
    },
  ]);

  return module7;
})();

exports.File = module1129;
