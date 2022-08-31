exports.findHandler = o;

exports.findHandlerByTestID = function (n) {
  var t,
    u = l.get(n);
  return undefined !== u && null != (t = o(u)) ? t : null;
};

exports.findOldGestureHandler = function (n) {
  return t.get(n);
};

exports.getNextHandlerTag = function () {
  return u++;
};

exports.registerHandler = function (t, u, o) {
  n.set(t, u);
  if (require('./493').isJestEnv() && o) l.set(o, t);
};

exports.registerOldGestureHandler = function (n, l) {
  t.set(n, l);
};

exports.unregisterHandler = function (t, u) {
  n.delete(t);
  if (require('./493').isJestEnv() && u) l.delete(u);
};

exports.handlerIDToTag = {};
var n = new Map(),
  t = new Map(),
  l = new Map(),
  u = 1;

function o(t) {
  return n.get(t);
}
