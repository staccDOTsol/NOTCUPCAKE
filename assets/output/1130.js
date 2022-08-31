var module1125 = (function () {
  function module7(n, c, o) {
    require('./7')(this, module7);

    this.keyNum = n;
    this.key = c;
    this.counter = 0;
  }

  require('./8')(module7, [
    {
      key: 'encodeCommand',
      value: function (t, n, c) {
        var module1125 = require('./1125').encryptAES(
            this.encryptionKey,
            require('./1129').ZERO_KEY,
            '' + require('./1129').ENC_IV + this.ti + require('./1125').asHexString(this.counter, 'little', 4) + '0000000000000000'
          ),
          module1125 = require('./1125').encryptAES(this.encryptionKey, module1125, c ? c.padEnd(16, '0') : '');

        return this.macCommand(t, n, module1125);
      },
    },
    {
      key: 'macCommand',
      value: function (t, n, c) {
        var module1125 = require('./1125').getCmac(this.macKey, '' + t + require('./1125').asHexString(this.counter, 'little', 4) + this.ti + n + c);

        return '' + n + c + require('./1125').truncateMac(module1125);
      },
    },
    {
      key: 'decodeResponse',
      value: function () {},
    },
  ]);

  return module7;
})();

exports.Connection = module1125;
