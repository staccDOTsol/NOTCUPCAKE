module.exports = function (t, s) {
  var _ = this.__data__;

  if (_ instanceof require('./431')) {
    var n = _.__data__;

    if (!require('./424') || n.length < 199) {
      n.push([t, s]);
      this.size = ++_.size;
      return this;
    }

    _ = this.__data__ = new (require('./444'))(n);
  }

  _.set(t, s);

  this.size = _.size;
  return this;
};
