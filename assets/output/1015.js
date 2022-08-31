var s = {};

require('./1016').URL.install(s);

require('./1016').URLSearchParams.install(s);

exports.URL = s.URL;
exports.URLSearchParams = s.URLSearchParams;
exports.parseURL = require('./1020').parseURL;
exports.basicURLParse = require('./1020').basicURLParse;
exports.serializeURL = require('./1020').serializeURL;
exports.serializeHost = require('./1020').serializeHost;
exports.serializeInteger = require('./1020').serializeInteger;
exports.serializeURLOrigin = require('./1020').serializeURLOrigin;
exports.setTheUsername = require('./1020').setTheUsername;
exports.setThePassword = require('./1020').setThePassword;
exports.cannotHaveAUsernamePasswordPort = require('./1020').cannotHaveAUsernamePasswordPort;
exports.percentDecode = require('./1024').percentDecode;
