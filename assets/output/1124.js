var module1129 = (function () {
  function module7(n) {
    require('./7')(this, module7);

    this.keys = [undefined, undefined, undefined, undefined, undefined];
    if (undefined !== n) this.keys = n;
  }

  require('./8')(module7, [
    {
      key: 'setKey',
      value: function (t, n) {
        if (t >= 5) throw 'InvalidKeyNum';
        if (32 !== n.length) throw 'InvalidKey';
        this.keys[t] = n;
      },
    },
    {
      key: 'wrapCommand',
      value: function (t, n, o) {
        var u = arguments.length > 3 && undefined !== arguments[3] ? arguments[3] : '90',
          s = arguments.length > 4 && undefined !== arguments[4] ? arguments[4] : ['00', '00'],
          module1125 = undefined === o ? '' : require('./1125').numBytesAsHex(o);
        return '' + u + t + s.join('') + module1125 + o + '00';
      },
    },
    {
      key: 'authenticateEv2P1',
      value: function (t) {
        if (undefined === this.keys[t]) throw 'KeyNotSet';
        return this.wrapCommand(require('./1129').CommandCode.AuthEv2First, require('./1125').asHexString(t, 'big', 4));
      },
    },
    {
      key: 'authenticateEv2P2',
      value: function (t, n) {
        var o = n.slice(-4);
        if (36 !== n.length || '91AF' !== o) throw 'AuthenticationError';

        var module1129 = require('./1125').randomHexString(32),
          module1129 = require('./1125').decryptAES(t, require('./1129').ZERO_KEY, n.slice(0, 32)),
          module1129 = require('./1125').encryptAES(t, require('./1129').ZERO_KEY, '' + module1129 + require('./1125').leftShiftHex(module1129));

        return this.wrapCommand(require('./1129').CommandCode.AdditionalFrame, module1129);
      },
    },
    {
      key: 'setConnection',
      value: function (t, n, o) {
        o.slice(-4);
        this.connection = new (require('./1130').Connection)(t, n, o);
      },
    },
    {
      key: 'selectFile',
      value: function (t, n) {
        return this.wrapCommand(require('./1129').CommandCode.SelectFile, undefined, n, '00', [t, '0C']);
      },
    },
    {
      key: 'readBinary',
      value: function () {
        return this.wrapCommand(require('./1129').CommandCode.ReadBinary, undefined, '00');
      },
    },
    {
      key: 'updateBinary',
      value: function () {},
    },
    {
      key: 'readData',
      value: function (t, n) {
        if (undefined === this.connection) throw 'NotAuthenticated';
        return this.wrapCommand(require('./1129').CommandCode.ReadData, '' + require('./1125').asHexString(t, 'big', 6) + require('./1125').asHexString(n, 'big', 6));
      },
    },
    {
      key: 'writeData',
      value: function (t, n, o, u) {
        if (undefined === this.connection) throw 'NotAuthenticated';
        return this.wrapCommand(
          require('./1129').CommandCode.WriteData,
          '' + require('./1125').asHexString(t, 'big', 2) + require('./1125').asHexString(o, 'big', 6) + require('./1125').asHexString(u, 'big', 6),
          n
        );
      },
    },
    {
      key: 'getUid',
      value: function () {
        if (undefined === this.connection) throw 'NotAuthenticated';
        return this.wrapCommand(require('./1129').CommandCode.GetUid, require('./1129').CommandCode.GetUid);
      },
    },
    {
      key: 'getFileSettings',
      value: function (t) {
        return this.wrapCommand(require('./1129').CommandCode.GetFileSettings, require('./1125').asHexString(t, 'big', 2));
      },
    },
    {
      key: 'getTamperStatus',
      value: function () {
        if (undefined === this.connection) throw 'NotAuthenticated';
        return this.wrapCommand(require('./1129').CommandCode.GetTamperStatus);
      },
    },
    {
      key: 'changeFileSettings',
      value: function (t, n) {
        if (undefined === this.connection) throw 'NotAuthenticated';
        return this.wrapCommand(require('./1129').CommandCode.ChangeFileSettings, require('./1125').asHexString(t, 'big', 2), n);
      },
    },
    {
      key: 'changeKey',
      value: function (t, n) {
        if (undefined === this.connection) throw 'NotAuthenticated';
        if (undefined === this.keys[t]) throw 'KeyNotSet';
        return this.wrapCommand(require('./1129').CommandCode.ChangeKey, require('./1125').asHexString(t, 'big', 4), require('./1125').xorHex(n, this.keys[t]));
      },
    },
    {
      key: 'setConfiguration',
      value: function (t, n) {
        if (undefined === this.connection) throw 'NotAuthenticated';
        return this.wrapCommand(require('./1129').CommandCode.SetConfiguration, t, n);
      },
    },
  ]);

  return module7;
})();

exports.Tag = module1129;
