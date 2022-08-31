var module886 = {
    emptyRecord: function () {
      return require('./880').createNdefRecord(require('./882').TNF_EMPTY, [], [], []);
    },
    absoluteUriRecord: function (o) {
      var n = arguments.length > 1 && undefined !== arguments[1] ? arguments[1] : [],
        t = arguments.length > 2 && undefined !== arguments[2] ? arguments[2] : [];
      return require('./880').createNdefRecord(require('./882').TNF_ABSOLUTE_URI, o, t, n);
    },
    mimeMediaRecord: function (o, n) {
      var t = arguments.length > 2 && undefined !== arguments[2] ? arguments[2] : [];
      return require('./880').createNdefRecord(require('./882').TNF_MIME_MEDIA, o, t, n);
    },
    externalTypeRecord: function (o, n) {
      var t = arguments.length > 2 && undefined !== arguments[2] ? arguments[2] : [];
      return require('./880').createNdefRecord(require('./882').TNF_EXTERNAL_TYPE, o, t, n);
    },
  },
  module886 = {
    textRecord: function (o, module880) {
      var t = arguments.length > 2 && undefined !== arguments[2] ? arguments[2] : [];
      return require('./880').createNdefRecord(require('./882').TNF_WELL_KNOWN, require('./882').RTD_TEXT, t, require('./883').encodePayload(o, module880));
    },
    uriRecord: function (o) {
      var n = arguments.length > 1 && undefined !== arguments[1] ? arguments[1] : [];
      return require('./880').createNdefRecord(require('./882').TNF_WELL_KNOWN, require('./882').RTD_URI, n, require('./884').encodePayload(o));
    },
    smartPoster: function (o) {
      var n = arguments.length > 1 && undefined !== arguments[1] ? arguments[1] : [],
        t = [];
      if (o) t = o[0] instanceof Object && o[0].hasOwnProperty('tnf') ? require('./880').encodeNdefMessage(o) : o;
      else console.log('WARNING: Expecting an array of NDEF records');
      return require('./880').createNdefRecord(require('./882').TNF_WELL_KNOWN, require('./882').RTD_SMART_POSTER, n, t);
    },
  },
  t = {
    androidApplicationRecord: function (n) {
      var t = arguments.length > 1 && undefined !== arguments[1] ? arguments[1] : [];
      return module886.externalTypeRecord('android.com:pkg', n, t);
    },
    wifiSimpleRecord: function (n) {
      var module882 = arguments.length > 1 && undefined !== arguments[1] ? arguments[1] : [],
        module885 = require('./885').encodePayload(n);

      return module882.mimeMediaRecord(require('./882').MIME_WFA_WSC, module885, module882);
    },
  },
  module886 = require('./29')({}, require('./882'), module886, module886, t, {
    record: require('./880').createNdefRecord,
    encodeMessage: require('./880').encodeNdefMessage,
    decodeMessage: require('./880').decodeNdefMessage,
    isType: require('./880').equalToRecordType,
    text: require('./883'),
    uri: require('./884'),
    wifiSimple: require('./885'),
    util: require('./881'),
    stringify: require('./886').stringify,
  });

module.exports = module886;
