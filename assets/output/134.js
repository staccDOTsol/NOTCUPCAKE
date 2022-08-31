module.exports = {
  get BatchedBridge() {
    return require('./30');
  },

  get ExceptionsManager() {
    return require('./58');
  },

  get Platform() {
    return require('./19');
  },

  get RCTEventEmitter() {
    return require('./135');
  },

  get ReactNativeViewConfigRegistry() {
    return require('./136');
  },

  get TextInputState() {
    return require('./137');
  },

  get UIManager() {
    return require('./43');
  },

  get deepDiffer() {
    return require('./168');
  },

  get deepFreezeAndThrowOnMutationInDev() {
    return require('./169');
  },

  get flattenStyle() {
    return require('./170');
  },

  get ReactFiberErrorDialog() {
    return require('./171').default;
  },

  get legacySendAccessibilityEvent() {
    return require('./42');
  },
};
