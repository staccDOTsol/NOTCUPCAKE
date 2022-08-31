module.exports = function (t, l) {
  var n = null == t ? null : ('undefined' != typeof Symbol && t[Symbol.iterator]) || t['@@iterator'];

  if (null != n) {
    var o,
      u,
      f = [],
      i = true,
      y = false;

    try {
      for (n = n.call(t); !(i = (o = n.next()).done) && (f.push(o.value), !l || f.length !== l); i = true);
    } catch (t) {
      y = true;
      u = t;
    } finally {
      try {
        if (!(i || null == n.return)) n.return();
      } finally {
        if (y) throw u;
      }
    }

    return f;
  }
};

module.exports.__esModule = true;
module.exports.default = module.exports;
