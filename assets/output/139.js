var n = function (n) {
  var o = {};
  n.supportedCommands.forEach(function (module50) {
    o[module50] = function (o) {
      for (var t = arguments.length, u = new Array(t > 1 ? t - 1 : 0), f = 1; f < t; f++) u[f - 1] = arguments[f];

      require('./50').dispatchCommand(o, module50, u);
    };
  });
  return o;
};

exports.default = n;
