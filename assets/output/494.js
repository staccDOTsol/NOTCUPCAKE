module.exports = {
  name: 'react-native',
  version: '0.68.2',
  bin: './cli.js',
  description: 'A framework for building native apps using React',
  license: 'MIT',
  repository: 'github:facebook/react-native',
  engines: {
    node: '>=14',
  },
  'jest-junit': {
    outputDirectory: 'reports/junit',
    outputName: 'js-test-results.xml',
  },
  files: [
    '!template/node_modules',
    '!template/package-lock.json',
    '!template/yarn.lock',
    'android',
    'cli.js',
    'flow',
    'flow-typed',
    'index.js',
    'interface.js',
    'jest-preset.js',
    'jest',
    'Libraries',
    'LICENSE',
    'local-cli',
    'React-Core.podspec',
    'react-native.config.js',
    'react.gradle',
    'React.podspec',
    'React',
    'ReactAndroid',
    'ReactCommon',
    'README.md',
    'rn-get-polyfills.js',
    'scripts/compose-source-maps.js',
    'scripts/find-node.sh',
    'scripts/generate-artifacts.js',
    'scripts/generate-provider-cli.js',
    'scripts/generate-specs-cli.js',
    'scripts/ios-configure-glog.sh',
    'scripts/launchPackager.bat',
    'scripts/launchPackager.command',
    'scripts/node-binary.sh',
    'scripts/packager.sh',
    'scripts/packager-reporter.js',
    'scripts/react_native_pods_utils/script_phases.rb',
    'scripts/react_native_pods_utils/script_phases.sh',
    'scripts/react_native_pods.rb',
    'scripts/react-native-xcode.sh',
    'template.config.js',
    'template',
    'third-party-podspecs',
  ],
  scripts: {
    start: 'react-native start',
    test: 'jest',
    'test-ci': 'jest --maxWorkers=2 --ci --reporters="default" --reporters="jest-junit"',
    flow: 'flow',
    'flow-check-ios': 'flow check',
    'flow-check-android': 'flow check --flowconfig-name .flowconfig.android',
    lint: 'eslint .',
    'lint-ci': './scripts/circleci/analyze_code.sh && yarn shellcheck',
    'lint-java': 'node ./scripts/lint-java.js',
    shellcheck: './scripts/circleci/analyze_scripts.sh',
    'clang-format': 'clang-format -i --glob=*/**/*.{h,cpp,m,mm}',
    format: 'npm run prettier && npm run clang-format',
    prettier: 'prettier --write "./**/*.{js,md,yml}"',
    'format-check': 'prettier --list-different "./**/*.{js,md,yml}"',
    'update-lock': 'npx yarn-deduplicate',
    'docker-setup-android': 'docker pull reactnativecommunity/react-native-android:5.2',
    'docker-build-android': 'docker build -t reactnativeci/android -f .circleci/Dockerfiles/Dockerfile.android .',
    'test-android-run-instrumentation': 'docker run --cap-add=SYS_ADMIN -it reactnativeci/android bash .circleci/Dockerfiles/scripts/run-android-docker-instrumentation-tests.sh',
    'test-android-run-unit': 'docker run --cap-add=SYS_ADMIN -it reactnativeci/android bash .circleci/Dockerfiles/scripts/run-android-docker-unit-tests.sh',
    'test-android-run-e2e': 'docker run --privileged -it reactnativeci/android bash .circleci/Dockerfiles/scripts/run-ci-e2e-tests.sh --android --js',
    'test-android-all': 'yarn run docker-build-android && yarn run test-android-run-unit && yarn run test-android-run-instrumentation && yarn run test-android-run-e2e',
    'test-android-instrumentation': 'yarn run docker-build-android && yarn run test-android-run-instrumentation',
    'test-android-unit': 'yarn run docker-build-android && yarn run test-android-run-unit',
    'test-android-e2e': 'yarn run docker-build-android && yarn run test-android-run-e2e',
    'test-ios': './scripts/objc-test.sh test',
  },
  peerDependencies: {
    react: '17.0.2',
  },
  dependencies: {
    '@jest/create-cache-key-function': '^27.0.1',
    '@react-native-community/cli': '^7.0.3',
    '@react-native-community/cli-platform-android': '^7.0.1',
    '@react-native-community/cli-platform-ios': '^7.0.1',
    '@react-native/assets': '1.0.0',
    '@react-native/normalize-color': '2.0.0',
    '@react-native/polyfills': '2.0.0',
    'abort-controller': '^3.0.0',
    anser: '^1.4.9',
    'base64-js': '^1.1.2',
    'deprecated-react-native-prop-types': '^2.3.0',
    'event-target-shim': '^5.0.1',
    'hermes-engine': '~0.11.0',
    invariant: '^2.2.4',
    'jsc-android': '^250230.2.1',
    'metro-react-native-babel-transformer': '0.67.0',
    'metro-runtime': '0.67.0',
    'metro-source-map': '0.67.0',
    nullthrows: '^1.1.1',
    'pretty-format': '^26.5.2',
    promise: '^8.0.3',
    'react-devtools-core': '^4.23.0',
    'react-native-gradle-plugin': '^0.0.6',
    'react-refresh': '^0.4.0',
    'react-shallow-renderer': '16.14.1',
    'regenerator-runtime': '^0.13.2',
    scheduler: '^0.20.2',
    'stacktrace-parser': '^0.1.3',
    'use-subscription': '>=1.0.0 <1.6.0',
    'whatwg-fetch': '^3.0.0',
    ws: '^6.1.4',
    'react-native-codegen': '^0.0.17',
  },
  devDependencies: {
    'flow-bin': '^0.170.0',
    react: '17.0.2',
    '@babel/core': '^7.14.0',
    '@babel/generator': '^7.14.0',
    '@react-native-community/eslint-plugin': '*',
    '@react-native/eslint-plugin-specs': '>0.0.2',
    '@reactions/component': '^2.0.2',
    async: '^2.4.0',
    'babel-eslint': '^10.1.0',
    'clang-format': '^1.2.4',
    connect: '^3.6.5',
    coveralls: '^3.0.2',
    eslint: '^7.32.0',
    'eslint-config-fb-strict': '^26.0.0',
    'eslint-config-fbjs': '^3.1.1',
    'eslint-config-prettier': '^8.3.0',
    'eslint-plugin-babel': '^5.3.1',
    'eslint-plugin-eslint-comments': '^3.2.0',
    'eslint-plugin-flowtype': '^7.0.0',
    'eslint-plugin-jest': '^25.2.4',
    'eslint-plugin-jsx-a11y': '^6.4.1',
    'eslint-plugin-prettier': '^4.0.0',
    'eslint-plugin-react': '^7.26.1',
    'eslint-plugin-react-hooks': '^4.2.0',
    'eslint-plugin-react-native': '^3.11.0',
    'eslint-plugin-relay': '^1.8.2',
    inquirer: '^7.1.0',
    jest: '^26.6.3',
    'jest-junit': '^10.0.0',
    jscodeshift: '^0.13.1',
    'metro-babel-register': '0.67.0',
    mkdirp: '^0.5.1',
    prettier: '^2.4.1',
    'react-test-renderer': '17.0.2',
    shelljs: '^0.8.4',
    signedsource: '^1.0.0',
    ws: '^6.1.4',
    yargs: '^15.3.1',
  },
  codegenConfig: {
    libraries: [
      {
        name: 'FBReactNativeSpec',
        type: 'modules',
        ios: {},
        android: {},
        jsSrcsDir: 'Libraries',
      },
      {
        name: 'rncore',
        type: 'components',
        ios: {},
        android: {},
        jsSrcsDir: 'Libraries',
      },
    ],
  },
};
