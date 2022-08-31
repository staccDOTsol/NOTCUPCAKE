module.exports = function (n, o) {
  var module412 = require('./412')(n, o);

  return require('./413')(module412) ? module412 : undefined;
};
