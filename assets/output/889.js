exports.isPromise = function (t) {
  return 'function' == typeof t.then;
};
