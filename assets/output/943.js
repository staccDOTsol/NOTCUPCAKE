function f(f, n) {
  for (var u in f) n[u] = f[u];
}

function n(f, n, u) {
  return require('./944').Buffer(f, n, u);
}

if (require('./944').Buffer.from && require('./944').Buffer.alloc && require('./944').Buffer.allocUnsafe && require('./944').Buffer.allocUnsafeSlow)
  module.exports = require('./944');
else {
  f(require('./944'), exports);
  exports.Buffer = n;
}
n.prototype = Object.create(require('./944').Buffer.prototype);
f(require('./944').Buffer, n);

n.from = function (f, n, u) {
  if ('number' == typeof f) throw new TypeError('Argument must not be a number');
  return require('./944').Buffer(f, n, u);
};

n.alloc = function (f, n, u) {
  if ('number' != typeof f) throw new TypeError('Argument must be a number');

  var module944 = require('./944').Buffer(f);

  if (undefined !== n) 'string' == typeof u ? module944.fill(n, u) : module944.fill(n);
  else module944.fill(0);
  return module944;
};

n.allocUnsafe = function (f) {
  if ('number' != typeof f) throw new TypeError('Argument must be a number');
  return require('./944').Buffer(f);
};

n.allocUnsafeSlow = function (f) {
  if ('number' != typeof f) throw new TypeError('Argument must be a number');
  return require('./944').SlowBuffer(f);
};
