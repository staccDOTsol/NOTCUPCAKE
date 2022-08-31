var t = {
  register: function (module30) {
    if (globals.RN$Bridgeless)
      globals.RN$registerCallableModule('RCTEventEmitter', function () {
        return module30;
      });
    else require('./30').registerCallableModule('RCTEventEmitter', module30);
  },
};
module.exports = t;
