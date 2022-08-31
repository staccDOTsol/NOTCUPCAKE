var t = Object.prototype.hasOwnProperty;

module.exports = function (n, f) {
  var module407 = require('./407')(n),
    module481 = !module407 && require('./481')(n),
    module428 = !module407 && !module481 && require('./428')(n),
    module459 = !module407 && !module481 && !module428 && require('./459')(n),
    s = module407 || module481 || module428 || module459,
    module483 = s ? require('./483')(n.length, String) : [],
    b = module483.length;

  for (var c in n)
    (!f && !t.call(n, c)) ||
      (s &&
        ('length' == c || (module428 && ('offset' == c || 'parent' == c)) || (module459 && ('buffer' == c || 'byteLength' == c || 'byteOffset' == c)) || require('./484')(c, b))) ||
      module483.push(c);

  return module483;
};
