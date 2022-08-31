var t = null,
  ReactNative = require('react-native').NativeModules.BlobModule;

if (ReactNative && 'string' == typeof ReactNative.BLOB_URI_SCHEME) {
  t = ReactNative.BLOB_URI_SCHEME + ':';
  if ('string' == typeof ReactNative.BLOB_URI_HOST) t += '//' + ReactNative.BLOB_URI_HOST + '/';
}

require('./1015').URL.createObjectURL = function (o) {
  if (null === t) throw new Error('Cannot create URL for blob!');
  return '' + t + o.data.blobId + '?offset=' + o.data.offset + '&size=' + o.size;
};

require('./1015').URL.revokeObjectURL = function (t) {};

exports.URL = require('./1015').URL;
