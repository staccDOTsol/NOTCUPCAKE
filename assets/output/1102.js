exports.default = function (n, c) {
  var l = module1103.default(c);

  switch (c) {
    case 'vertical':
    case 'vertical-inverted':
      return n.height * l;

    case 'horizontal':
    case 'horizontal-inverted':
      return n.width * l;
  }
};

var module1103 = require('@babel/runtime/helpers/interopRequireDefault')(require('./1103'));
