var n = '[object Arguments]';

module.exports = function (t) {
  return require('./405')(t) && require('./420')(t) == n;
};
