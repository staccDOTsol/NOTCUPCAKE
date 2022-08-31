var t;
t = require('react-dom');
if (globals.RN$Bridgeless) globals.RN$stopSurface = t.stopSurface;
else require('./134').BatchedBridge.registerCallableModule('ReactFabric', t);
module.exports = t;
