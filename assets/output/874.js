var module7 = require('@babel/runtime/helpers/interopRequireDefault')(require('./7')),
  module8 = require('@babel/runtime/helpers/interopRequireDefault')(require('./8'));

exports.Nfc15693RequestFlagIOS = {
  DualSubCarriers: 1,
  HighDataRate: 2,
  ProtocolExtension: 8,
  Select: 16,
  Address: 32,
  Option: 64,
  CommandSpecificBit8: 128,
};
exports.Nfc15693ResponseFlagIOS = {
  Error: 1,
  ResponseBufferValid: 2,
  FinalResponse: 4,
  ProtocolExtension: 8,
  BlockSecurityStatusBit5: 16,
  BlockSecurityStatusBit6: 32,
  WaitTimeExtension: 64,
};

var module867 = (function () {
  function module868() {
    module7.default(this, module868);
  }

  module8.default(module868, [
    {
      key: 'getSystemInfo',
      value: function (l) {
        return require('./867').handleNativeException(require('./868').callNative('iso15693_getSystemInfo', [l]));
      },
    },
    {
      key: 'readSingleBlock',
      value: function (l) {
        var t = l.flags,
          o = l.blockNumber;
        return require('./867').handleNativeException(
          require('./868').callNative('iso15693_readSingleBlock', [
            {
              flags: t,
              blockNumber: o,
            },
          ])
        );
      },
    },
    {
      key: 'readMultipleBlocks',
      value: function (l) {
        var t = l.flags,
          o = l.blockNumber,
          n = l.blockCount;
        return require('./867').handleNativeException(
          require('./868').callNative('iso15693_readMultipleBlocks', [
            {
              flags: t,
              blockNumber: o,
              blockCount: n,
            },
          ])
        );
      },
    },
    {
      key: 'writeSingleBlock',
      value: function (l) {
        var t = l.flags,
          o = l.blockNumber,
          n = l.dataBlock;
        return require('./867').handleNativeException(
          require('./868').callNative('iso15693_writeSingleBlock', [
            {
              flags: t,
              blockNumber: o,
              dataBlock: n,
            },
          ])
        );
      },
    },
    {
      key: 'lockBlock',
      value: function (l) {
        var t = l.flags,
          o = l.blockNumber;
        return require('./867').handleNativeException(
          require('./868').callNative('iso15693_lockBlock', [
            {
              flags: t,
              blockNumber: o,
            },
          ])
        );
      },
    },
    {
      key: 'writeAFI',
      value: function (l) {
        var t = l.flags,
          o = l.afi;
        return require('./867').handleNativeException(
          require('./868').callNative('iso15693_writeAFI', [
            {
              flags: t,
              afi: o,
            },
          ])
        );
      },
    },
    {
      key: 'lockAFI',
      value: function (l) {
        var t = l.flags;
        return require('./867').handleNativeException(
          require('./868').callNative('iso15693_lockAFI', [
            {
              flags: t,
            },
          ])
        );
      },
    },
    {
      key: 'writeDSFID',
      value: function (l) {
        var t = l.flags,
          o = l.dsfid;
        return require('./867').handleNativeException(
          require('./868').callNative('iso15693_writeDSFID', [
            {
              flags: t,
              dsfid: o,
            },
          ])
        );
      },
    },
    {
      key: 'lockDSFID',
      value: function (l) {
        var t = l.flags;
        return require('./867').handleNativeException(
          require('./868').callNative('iso15693_lockDSFID', [
            {
              flags: t,
            },
          ])
        );
      },
    },
    {
      key: 'resetToReady',
      value: function (l) {
        var t = l.flags;
        return require('./867').handleNativeException(
          require('./868').callNative('iso15693_resetToReady', [
            {
              flags: t,
            },
          ])
        );
      },
    },
    {
      key: 'select',
      value: function (l) {
        var t = l.flags;
        return require('./867').handleNativeException(
          require('./868').callNative('iso15693_select', [
            {
              flags: t,
            },
          ])
        );
      },
    },
    {
      key: 'stayQuite',
      value: function () {
        return require('./867').handleNativeException(require('./868').callNative('iso15693_stayQuiet'));
      },
    },
    {
      key: 'customCommand',
      value: function (l) {
        var t = l.flags,
          o = l.customCommandCode,
          n = l.customRequestParameters;
        return require('./867').handleNativeException(
          require('./868').callNative('iso15693_customCommand', [
            {
              flags: t,
              customCommandCode: o,
              customRequestParameters: n,
            },
          ])
        );
      },
    },
    {
      key: 'sendRequest',
      value: function (l) {
        var t = l.flags,
          o = l.commandCode,
          n = l.data;
        return require('./867').handleNativeException(
          require('./868').callNative('iso15693_sendRequest', [
            {
              flags: t,
              commandCode: o,
              data: n,
            },
          ])
        );
      },
    },
    {
      key: 'extendedReadSingleBlock',
      value: function (l) {
        var t = l.flags,
          o = l.blockNumber;
        return require('./867').handleNativeException(
          require('./868').callNative('iso15693_extendedReadSingleBlock', [
            {
              flags: t,
              blockNumber: o,
            },
          ])
        );
      },
    },
    {
      key: 'extendedWriteSingleBlock',
      value: function (l) {
        var t = l.flags,
          o = l.blockNumber,
          n = l.dataBlock;
        return require('./867').handleNativeException(
          require('./868').callNative('iso15693_extendedWriteSingleBlock', [
            {
              flags: t,
              blockNumber: o,
              dataBlock: n,
            },
          ])
        );
      },
    },
    {
      key: 'extendedLockBlock',
      value: function (l) {
        var t = l.flags,
          o = l.blockNumber;
        return require('./867').handleNativeException(
          require('./868').callNative('iso15693_extendedLockBlock', [
            {
              flags: t,
              blockNumber: o,
            },
          ])
        );
      },
    },
  ]);
  return module868;
})();

exports.Iso15693HandlerIOS = module867;
