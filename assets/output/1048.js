var t =
    (this && this.__createBinding) ||
    (Object.create
      ? function (t, n, u, f) {
          if (undefined === f) f = u;
          Object.defineProperty(t, f, {
            enumerable: true,
            get: function () {
              return n[u];
            },
          });
        }
      : function (t, n, u, f) {
          if (undefined === f) f = u;
          t[f] = n[u];
        }),
  n =
    (this && this.__setModuleDefault) ||
    (Object.create
      ? function (t, n) {
          Object.defineProperty(t, 'default', {
            enumerable: true,
            value: n,
          });
        }
      : function (t, n) {
          t.default = n;
        }),
  u =
    (this && this.__importStar) ||
    function (u) {
      if (u && u.__esModule) return u;
      var f = {};
      if (null != u) for (var o in u) 'default' !== o && Object.prototype.hasOwnProperty.call(u, o) && t(f, u, o);
      n(f, u);
      return f;
    };

var ReactNative = require('react-native'),
  module1049 = u(require('./1049'));

exports.Clipboard = {
  getString: function () {
    return module1049.default.getString();
  },
  getImagePNG: function () {
    return module1049.default.getImagePNG();
  },
  getImageJPG: function () {
    return module1049.default.getImageJPG();
  },
  setImage: function (t) {
    if ('ios' === ReactNative.Platform.OS) module1049.default.setImage(t);
  },
  getImage: function () {
    return module1049.default.getImage();
  },
  setString: function (t) {
    module1049.default.setString(t);
  },
  hasString: function () {
    return module1049.default.hasString();
  },
  hasImage: function () {
    return module1049.default.hasImage();
  },
  hasURL: function () {
    if ('ios' === ReactNative.Platform.OS) return module1049.default.hasURL();
  },
  hasNumber: function () {
    if ('ios' === ReactNative.Platform.OS) return module1049.default.hasNumber();
  },
  hasWebURL: function () {
    if ('ios' === ReactNative.Platform.OS) return module1049.default.hasWebURL();
  },
  addListener: function (t) {
    return module1049.addListener(t);
  },
  removeAllListeners: function () {
    module1049.removeAllListeners();
  },
};
