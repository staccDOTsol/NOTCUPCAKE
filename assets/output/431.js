function t(t) {
  var o = -1,
    p = null == t ? 0 : t.length;

  for (this.clear(); ++o < p; ) {
    var l = t[o];
    this.set(l[0], l[1]);
  }
}

t.prototype.clear = require('./432');
t.prototype.delete = require('./433');
t.prototype.get = require('./436');
t.prototype.has = require('./437');
t.prototype.set = require('./438');
module.exports = t;
