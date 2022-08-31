var module681 = require('@babel/runtime/helpers/interopRequireDefault')(require('./681')),
  module690 = require('@babel/runtime/helpers/interopRequireDefault')(require('./690')),
  module691 = {
    dark: false,
    roundness: 4,
    colors: {
      primary: '#6200ee',
      accent: '#03dac4',
      background: '#f6f6f6',
      surface: require('./691').white,
      error: '#B00020',
      text: require('./691').black,
      onSurface: '#000000',
      disabled: module681.default(require('./691').black).alpha(0.26).rgb().string(),
      placeholder: module681.default(require('./691').black).alpha(0.54).rgb().string(),
      backdrop: module681.default(require('./691').black).alpha(0.5).rgb().string(),
      notification: require('./691').pinkA400,
    },
    fonts: module690.default(),
    animation: {
      scale: 1,
    },
  };

exports.default = module691;
