module.exports = {
  name: 'react-native-url-polyfill',
  version: '1.3.0',
  description: 'A lightweight and trustworthy URL polyfill for React Native',
  keywords: ['URL', 'URLSearchParams', 'polyfill', 'react native', 'whatwg-url'],
  bugs: {
    url: 'https://github.com/charpeni/react-native-url-polyfill/issues',
  },
  homepage: 'https://github.com/charpeni/react-native-url-polyfill',
  readme: 'https://github.com/charpeni/react-native-url-polyfill#readme',
  repository: {
    type: 'git',
    url: 'https://github.com/charpeni/react-native-url-polyfill.git',
  },
  main: 'index.js',
  types: 'index.d.ts',
  scripts: {
    test: 'jest',
    lint: 'eslint .',
    'bundle-size': 'node scripts/bundle-size',
  },
  author: 'Nicolas Charpentier <nicolas.charpentier079@gmail.com>',
  license: 'MIT',
  dependencies: {
    'whatwg-url-without-unicode': '8.0.0-3',
  },
  devDependencies: {
    '@react-native-community/eslint-config': '^2.0.0',
    chalk: '^4.0.0',
    eslint: '^7.1.0',
    'eslint-plugin-prettier': '^3.1.3',
    execa: '^5.0.0',
    filesize: '^6.1.0',
    husky: '>=1',
    jest: '^26.0.1',
    'lint-staged': '>=8',
    'metro-react-native-babel-preset': '^0.65.0',
    ora: '^5.3.0',
    'prepend-file': '^1.3.1',
    prettier: '^2.0.5',
    react: '16.13.1',
    'react-native': '0.63.4',
    rmfr: '^2.0.0',
    'source-map-explorer': '^2.4.2',
    tmp: '^0.2.1',
    typescript: '^4.1.3',
    uuid: '^8.1.0',
  },
  peerDependencies: {
    'react-native': '*',
  },
  jest: {
    preset: 'react-native',
    testPathIgnorePatterns: ['/node_modules/', './detox/'],
  },
  husky: {
    hooks: {
      'pre-commit': 'lint-staged',
    },
  },
  'lint-staged': {
    '*.js': ['eslint --fix', 'git add'],
  },
};
