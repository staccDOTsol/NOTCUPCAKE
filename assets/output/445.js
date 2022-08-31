module.exports = function () {
  this.size = 0;
  this.__data__ = {
    hash: new (require('./446'))(),
    map: new (require('./424') || require('./431'))(),
    string: new (require('./446'))(),
  };
};
