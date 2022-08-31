var t = Object.prototype.hasOwnProperty;

module.exports = function (n) {
  if (!require('./486')(n)) return require('./487')(n);
  var o = [];

  for (var c in Object(n)) t.call(n, c) && 'constructor' != c && o.push(c);

  return o;
};
