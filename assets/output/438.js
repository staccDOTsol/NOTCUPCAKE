module.exports = function (t, s) {
  var _ = this.__data__,
    module434 = require('./434')(_, t);

  if (module434 < 0) {
    ++this.size;

    _.push([t, s]);
  } else _[module434][1] = s;

  return this;
};
