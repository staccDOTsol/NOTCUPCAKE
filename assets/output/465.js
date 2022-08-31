function t(t) {
  var o = -1,
    p = null == t ? 0 : t.length;

  for (this.__data__ = new (require('./444'))(); ++o < p; ) this.add(t[o]);
}

t.prototype.add = t.prototype.push = require('./466');
t.prototype.has = require('./467');
module.exports = t;
