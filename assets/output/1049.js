var ReactNative = require('react-native');

exports.default = ReactNative.NativeModules.RNCClipboard;
var n = 'RNCClipboard_TEXT_CHANGED',
  o = new ReactNative.NativeEventEmitter(ReactNative.NativeModules.RNCClipboard),
  s = o.listenerCount;
s = s
  ? o.listenerCount.bind(o)
  : function (t) {
      return o.listeners(t).length;
    };

exports.addListener = function (l) {
  if (0 === s(n)) ReactNative.NativeModules.RNCClipboard.setListener();
  var v = o.addListener(n, l);
  v._remove = v.remove;

  v.remove = function () {
    this._remove();

    if (0 === s(n)) ReactNative.NativeModules.RNCClipboard.removeListener();
  };

  return v;
};

exports.removeAllListeners = function () {
  o.removeAllListeners(n);
  ReactNative.NativeModules.RNCClipboard.removeListener();
};
