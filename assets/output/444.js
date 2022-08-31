function t(t) {
  var o = -1,
    p = null == t ? 0 : t.length;

  for (this.clear(); ++o < p; ) {
    var l = t[o];
    this.set(l[0], l[1]);
  }
}

t.prototype.clear = require('./445');
t.prototype.delete = require('./453');
t.prototype.get = require('./456');
t.prototype.has = require('./457');
t.prototype.set = require('./458');
module.exports = t;
