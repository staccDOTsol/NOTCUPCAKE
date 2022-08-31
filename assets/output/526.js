var e;

exports.getShadowNodeFromRef = function (n) {
  if (undefined === e)
    try {
      e = require('./352').findHostInstance_DEPRECATED;
    } catch (n) {
      e = function (e) {
        return null;
      };
    }
  return e(n)._internalInstanceHandle.stateNode.node;
};
