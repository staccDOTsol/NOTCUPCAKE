module.exports = {
  getViewManagerConfig: function (n) {
    console.warn('getViewManagerConfig is unavailable in Bridgeless, use hasViewManagerConfig instead. viewManagerName: ' + n);
    return 'RCTVirtualText' === n ? {} : null;
  },
  hasViewManagerConfig: function (n) {
    return true === globals.__fbStaticViewConfig ? require('./45').unstable_hasComponent(n) : 'RCTVirtualText' === n || 'RCTShimmeringView' === n;
  },
  getConstants: function () {
    return {};
  },
  getConstantsForViewManager: function (n) {},
  getDefaultEventTypes: function () {
    return [];
  },
  lazilyLoadView: function (n) {},
  createView: function (n, t, o, u) {},
  updateView: function (n, t, o) {},
  focus: function (n) {},
  blur: function (n) {},
  findSubviewIn: function (n, t, o) {},
  dispatchViewManagerCommand: function (n, t, o) {},
  measure: function (n, t) {},
  measureInWindow: function (n, t) {},
  viewIsDescendantOf: function (n, t, o) {},
  measureLayout: function (n, t, o, u) {},
  measureLayoutRelativeToParent: function (n, t, o) {},
  setJSResponder: function (n, t) {},
  clearJSResponder: function () {},
  configureNextLayoutAnimation: function (n, t, o) {},
  removeSubviewsFromContainerWithID: function (n) {},
  replaceExistingNonRootView: function (n, t) {},
  setChildren: function (n, t) {},
  manageChildren: function (n, t, o, u, c, f) {},
  setLayoutAnimationEnabledExperimental: function (n) {},
  sendAccessibilityEvent: function (n, t) {},
  showPopupMenu: function (n, t, o, u) {},
  dismissPopupMenu: function () {},
};
