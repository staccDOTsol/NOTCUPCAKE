var t;

exports.default = function () {
  if (
    !t &&
    !(t =
      ('undefined' != typeof crypto && crypto.getRandomValues && crypto.getRandomValues.bind(crypto)) ||
      ('undefined' != typeof msCrypto && 'function' == typeof msCrypto.getRandomValues && msCrypto.getRandomValues.bind(msCrypto)))
  )
    throw new Error('crypto.getRandomValues() not supported. See https://github.com/uuidjs/uuid#getrandomvalues-not-supported');
  return t(o);
};

var o = new Uint8Array(16);
