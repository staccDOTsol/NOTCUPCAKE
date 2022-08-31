function t(t) {
  var o = -1,
    p = null == t ? 0 : t.length;

  for (this.clear(); ++o < p; ) {
    var l = t[o];
    this.set(l[0], l[1]);
  }
}

t.prototype.clear = require('./447');
t.prototype.delete = require('./449');
t.prototype.get = require('./450');
t.prototype.has = require('./451');
t.prototype.set = require('./452');
module.exports = t;
