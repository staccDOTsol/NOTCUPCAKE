exports.PlatformColor = function (...args) {
  return {
    resource_paths: args,
  };
};

exports.normalizeColorObject = function (o) {
  return 'resource_paths' in o ? o : null;
};

exports.processColorObject = function (o) {
  return o;
};
