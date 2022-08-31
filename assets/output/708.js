var module29 = require('@babel/runtime/helpers/interopRequireDefault')(require('./29')),
  module681 = require('@babel/runtime/helpers/interopRequireDefault')(require('./681')),
  module680 = require('@babel/runtime/helpers/interopRequireDefault')(require('./680')),
  module691 = module29.default({}, module680.default, {
    dark: true,
    mode: 'adaptive',
    colors: module29.default({}, module680.default.colors, {
      primary: '#BB86FC',
      accent: '#03dac6',
      background: '#121212',
      surface: '#121212',
      error: '#CF6679',
      onSurface: '#FFFFFF',
      text: require('./691').white,
      disabled: module681.default(require('./691').white).alpha(0.38).rgb().string(),
      placeholder: module681.default(require('./691').white).alpha(0.54).rgb().string(),
      backdrop: module681.default(require('./691').black).alpha(0.5).rgb().string(),
      notification: require('./691').pinkA100,
    }),
  });

exports.default = module691;
